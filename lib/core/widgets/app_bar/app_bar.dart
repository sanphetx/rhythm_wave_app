import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rhythm_wave_app/core/generated/assets.gen.dart';
import 'package:rhythm_wave_app/core/localization/generated/l10n.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';

class WaveAppBar extends StatefulWidget implements PreferredSizeWidget {
  final List<MenuItem> menuItems;

  const WaveAppBar({
    super.key,
    required this.menuItems,
  });

  @override
  _WaveAppBarState createState() => _WaveAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _WaveAppBarState extends State<WaveAppBar> {
  bool isDrawerOpen = false;

  void _toggleMenu() {
    setState(() {
      isDrawerOpen = !isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 10,
              left: 20,
              right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Hamburger Menu Icon
              GestureDetector(
                onTap: _toggleMenu,
                child: SvgPicture.asset(
                  Assets.icons.hamburgurMenu,
                  colorFilter: ColorFilter.mode(
                    context.waveColors?.onSecondary ?? Colors.white,
                    BlendMode.srcIn,
                  ),
                  height: 30,
                ),
              ),

              // Center Logo
              Image.asset(
                Assets.images.visa.path,
                height: 35,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.error), // ป้องกัน error
              ),

              // User Icon (Top Right)
              Image.asset(
                Assets.images.kbank.path,
                height: 35,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
              ),
            ],
          ),
        ),
        if (isDrawerOpen)
          GestureDetector(
            onTap: _toggleMenu,
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: Align(
                alignment: Alignment.topLeft,
                child: ComplexDrawer(
                  menuItems: widget.menuItems,
                  onClose: _toggleMenu,
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class ComplexDrawer extends StatefulWidget {
  final List<MenuItem> menuItems;
  final VoidCallback onClose;

  const ComplexDrawer({
    super.key, required this.menuItems, required this.onClose
  });

  @override
  _ComplexDrawerState createState() => _ComplexDrawerState();
}

class _ComplexDrawerState extends State<ComplexDrawer> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: isExpanded ? 250 : 100,
        height: MediaQuery.of(context).size.height * 0.9,
        decoration: BoxDecoration(
          color: context.waveColors?.outline ?? Colors.grey,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(context.waveBorders?.activeBorderbar ?? 10),
            bottomRight: Radius.circular(context.waveBorders?.activeBorderbar ?? 10),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHeader(context),
            Expanded(child: _buildMenuItems(context)),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                L10n.of(context)?.pageAppBar_textPage ?? "Menu",
                style: TextStyle(
                  color: context.waveColors?.secondary ?? Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          const Spacer(),
          IconButton(
            icon: Icon(
              isExpanded ? Icons.arrow_back_ios : Icons.arrow_forward_ios,
              color: context.waveColors?.onSurface?.withOpacity(0.5) ?? Colors.white.withOpacity(0.5),
            ),
            onPressed: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItems(BuildContext context) {
    return ListView.builder(
      itemCount: widget.menuItems.length,
      itemBuilder: (context, index) {
        final item = widget.menuItems[index];
        return ListTile(
          leading: Icon(item.icon, color: context.waveColors?.secondary ?? Colors.white),
          title: isExpanded
              ? Text(item.label, style: TextStyle(color: context.waveColors?.primary ?? Colors.white))
              : null,
          onTap: () {
            widget.onClose();
            item.onTap?.call();
          },
        );
      },
    );
  }
}

class MenuItem {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  const MenuItem({
    required this.icon,
    required this.label,
    this.onTap,
  });
}

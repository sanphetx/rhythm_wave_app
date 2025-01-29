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
                    context.waveColors.onSecondary,
                    BlendMode.srcIn,
                  ),
                  height: 30,
                ),
              ),

              // Center Logo
              Image.asset(
                Assets.images.visa,
                height: 35,
              ),
// User Icon (Top Right)
              Image.asset(
                Assets.images.kbank, // Use .path to access the correct file path
                height: 35,
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

  const ComplexDrawer(
      {Key? key, required this.menuItems, required this.onClose})
      : super(key: key);

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
          color: context.waveColors.outline,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(context.waveBorders.activeBorderbar),
            bottomRight: Radius.circular(context.waveBorders.activeBorderbar),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHeader(context),
            Expanded(child: _buildMenuItems(context)),
            _buildFooter(context),
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
                L10n.of(context).pageAppBar_textPage,
                style: TextStyle(
                  color: context.waveColors.secondary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          const Spacer(),
          IconButton(
            icon: Icon(
              isExpanded ? Icons.arrow_back_ios : Icons.arrow_forward_ios,
              color: context.waveColors.onSurface.withOpacity(0.5),
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
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          decoration: BoxDecoration(
            color: context.waveColors.surfaceContainer,
            borderRadius:
                BorderRadius.circular(context.waveBorders.borderRadiusMd),
          ),
          child: ListTile(
            leading: Icon(
              item.icon,
              color: context.waveColors.secondary,
            ),
            title: isExpanded
                ? Text(
                    item.label,
                    style: TextStyle(color: context.waveColors.primary),
                  )
                : null,
            onTap: () {
              widget.onClose();
              item.onTap?.call();
            },
          ),
        );
      },
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: context.waveColors.surface,
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(context.waveBorders.borderRadiusFull),
              child: SvgPicture.asset(
                Assets.icons.kbank,
                height: 40,
              ),
            ),
          ),
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Prem Shanhi",
                    style: TextStyle(color: context.waveColors.onSurface),
                  ),
                  Text(
                    "Web Designer",
                    style:
                        TextStyle(color: context.waveColors.onSurfaceVariant),
                  ),
                ],
              ),
            ),
        ],
      ),
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

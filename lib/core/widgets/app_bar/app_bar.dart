import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rhythm_wave_app/core/generated/assets.gen.dart';
import 'package:rhythm_wave_app/core/localization/generated/l10n.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';
import 'package:rhythm_wave_app/core/widgets/avatar/avatar.dart';
import 'package:rhythm_wave_app/models/home/page/home_screen.dart';

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

class _WaveAppBarState extends State<WaveAppBar> with SingleTickerProviderStateMixin {
  OverlayEntry? _overlayEntry;
  bool isDrawerOpen = false;
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _slideAnimation = Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  void _toggleMenu() {
    if (isDrawerOpen) {
      _controller.reverse().then((_) {
        _overlayEntry?.remove();
        setState(() {
          isDrawerOpen = false;
        });
      });
    } else {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
      _controller.forward();
      setState(() {
        isDrawerOpen = true;
      });
    }
  }

 OverlayEntry _createOverlayEntry() {
  return OverlayEntry(
    builder: (context) => Stack(
      children: [
        AnimatedOpacity(
          opacity: _opacityAnimation.value,
          duration: const Duration(milliseconds: 300),
          child: GestureDetector(
            onTap: _toggleMenu,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),

        Stack(
          children: [
            SlideTransition(
              position: _slideAnimation,
              child: Container(
                width: 250,
                height: MediaQuery.of(context).size.height,
                child: Material(
                  color: Colors.transparent,
                  child: ComplexDrawer(
                    menuItems: widget.menuItems,
                    onClose: _toggleMenu,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: _toggleMenu,
                  child: SvgPicture.asset(
                    Assets.icons.hamburgurMenu,
                    colorFilter: ColorFilter.mode(
                      context.waveColors?.onSecondary ?? Colors.white,
                      BlendMode.srcIn,
                    ),
                    height: 20,
                  ),
                ),

                GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen( ),
      ),
    );
  },
  child: Image.asset(
    Assets.images.logowave.path,
    height: 35,
    errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
  ),
),

                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.icons.searchBlack,
                      colorFilter: ColorFilter.mode(
                        context.waveColors?.onSecondary ?? Colors.white,
                        BlendMode.srcIn,
                      ),
                      height: 30,
                    ),
                    const SizedBox(width: 10),
                    WaveAvatar(
                      imageUrl:
                          "https://media.istockphoto.com/id/1443562748/photo/cute-ginger-cat.jpg?s=612x612&w=0&k=20&c=vvM97wWz-hMj7DLzfpYRmY2VswTqcFEKkC437hxm3Cg=",
                      size: context.waveAvatarTheme.properties.size,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
class ComplexDrawer extends StatefulWidget {
  final List<MenuItem> menuItems;
  final VoidCallback onClose;

  const ComplexDrawer({
    super.key,
    required this.menuItems,
    required this.onClose,
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
      child: Material(
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(context.waveBorders?.activeBorderbar ?? 10),
            bottomRight: Radius.circular(context.waveBorders?.activeBorderbar ?? 10),
          ),
          child: Container(
            width: isExpanded ? 250 : 100,
            height: MediaQuery.of(context).size.height * 0.9,
            decoration: BoxDecoration(
              color: context.waveColors?.outline ?? Colors.grey,
            ),
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildHeader(context),
                Expanded(
                  child: _buildMenuItems(context),
                ),
              ],
            ),
          ),
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
                "Menu",
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
              color: context.waveColors?.onSurface?.withOpacity(0.5) ??
                  Colors.white.withOpacity(0.5),
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

        return Material(
          color: Colors.transparent,
          child: ListTile(
            leading: Icon(item.icon, color: context.waveColors?.secondary ?? Colors.white),
            title: isExpanded
                ? Text(
                    item.label,
                    style: TextStyle(color: context.waveColors?.primary ?? Colors.white),
                  )
                : null,
            onTap: () {
              widget.onClose();
              item.onTap?.call(context);
            },
          ),
        );
      },
    );
  }
}


class MenuItem {
  final IconData icon;
  final String label;
  final void Function(BuildContext)? onTap; 

  const MenuItem({
    required this.icon,
    required this.label,
    this.onTap,
  });
}

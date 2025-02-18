import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/models/playlist/playlist.dart';
import 'package:rhythm_wave_app/core/widgets/app_bar/app_bar.dart';
final List<MenuItem> appMenuItems = [
  MenuItem(
    icon: Icons.grid_view,
    label: 'Dashboard',
    onTap: (context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PlaylistPage()),
      );
    },
  ),
  MenuItem(
    icon: Icons.subscriptions,
    label: 'Category',
    onTap: (context) => print('Category clicked'),
  ),
  MenuItem(
    icon: Icons.markunread_mailbox,
    label: 'Posts',
    onTap: (context) => print('Posts clicked'),
  ),
  MenuItem(
    icon: Icons.pie_chart,
    label: 'Analytics',
    onTap: (context) => print('Analytics clicked'),
  ),
  MenuItem(
    icon: Icons.trending_up,
    label: 'Chart',
    onTap: (context) => print('Chart clicked'),
  ),
  MenuItem(
    icon: Icons.power,
    label: 'Plugins',
    onTap: (context) => print('Plugins clicked'),
  ),
  MenuItem(
    icon: Icons.explore,
    label: 'Explore',
    onTap: (context) => print('Explore clicked'),
  ),
  MenuItem(
    icon: Icons.settings,
    label: 'Settings',
    onTap: (context) => print('Settings clicked'),
  ),
];

import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/widgets/app_bar/app_bar.dart';

final List<MenuItem> appMenuItems = [
  MenuItem(icon: Icons.grid_view, label: 'Dashboard', onTap: () => print('Dashboard clicked')),
  MenuItem(icon: Icons.subscriptions, label: 'Category', onTap: () => print('Category clicked')),
  MenuItem(icon: Icons.markunread_mailbox, label: 'Posts', onTap: () => print('Posts clicked')),
  MenuItem(icon: Icons.pie_chart, label: 'Analytics', onTap: () => print('Analytics clicked')),
  MenuItem(icon: Icons.trending_up, label: 'Chart', onTap: () => print('Chart clicked')),
  MenuItem(icon: Icons.power, label: 'Plugins', onTap: () => print('Plugins clicked')),
  MenuItem(icon: Icons.explore, label: 'Explore', onTap: () => print('Explore clicked')),
  MenuItem(icon: Icons.settings, label: 'Settings', onTap: () => print('Settings clicked')),
];

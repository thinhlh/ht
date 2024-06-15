import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MenuItem {
  final String name;
  final VoidCallback onTap;
  final IconData icon;

  MenuItem(this.name, this.icon, this.onTap);
}

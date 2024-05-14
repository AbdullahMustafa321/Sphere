import 'package:flutter/material.dart';
import 'package:sphere_book/core/utils/server_locator.dart';
import 'package:sphere_book/sphere_app.dart';

void main() {
  setupServerLocator();
  runApp(const SphereApp());
}

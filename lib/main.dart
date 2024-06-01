import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:sphere_book/core/utils/api_keys.dart';
import 'package:sphere_book/core/utils/server_locator.dart';
import 'package:sphere_book/sphere_app.dart';

void main() {
  Stripe.publishableKey=ApiKeys.publishableKey;
  setupServerLocator();
  runApp(const SphereApp());
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/locator.dart';

import 'package:todo_app/env/app_env.dart';
import 'main.dart';

void main() {
  setupLocator();
  debugPaintSizeEnabled = false;
  AppEnvironment.setupEnv(Environment.prod);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black
  ));
  runApp(MyApp());
}
import 'package:first_project/pages/home/index.dart';
import 'package:first_project/pages/login.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
// 1. 定義路由名稱
  static String home = '/';
  static String login = '/login';

// 2. 定義路由處理函數
  static final Handler _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const HomePage();
  });
  static final Handler _loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const LoginPage();
  });
// 3. 編寫函數 configurRoutes 關聯路由名稱和處理函數
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
  }
}
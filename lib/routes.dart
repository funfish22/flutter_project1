import 'package:first_project/pages/home/index.dart';
import 'package:first_project/pages/login.dart';
import 'package:first_project/pages/not_found.dart';
import 'package:first_project/pages/room_detail/index.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
// 1. 定義路由名稱
  static String home = '/';
  static String login = '/login';
  static String roomDetail = '/room/:roomId';

// 2. 定義路由處理函數
  static final Handler _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const HomePage();
  });
  static final Handler _loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const LoginPage();
  });
  static final Handler _roomDetailHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return RoomDetailPage(roomId: params['roomId']![0]);
  });
  static final Handler _notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const NotFoundPage();
  });
// 3. 編寫函數 configurRoutes 關聯路由名稱和處理函數
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(roomDetail, handler: _roomDetailHandler);
    router.notFoundHandler = _notFoundHandler;
  }
}
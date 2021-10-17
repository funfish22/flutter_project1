// 1. 新增文件 widgets/page_content.dart
// 2. 添加 material 依賴
import 'package:first_project/routes.dart';
import 'package:flutter/material.dart';
// 3. 編寫無狀態組件
class PageContent extends StatelessWidget {
  final String name;
  const PageContent({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('當前頁面是: $name'),
      ),
      body: ListView(
        children: <Widget>[
          TextButton(onPressed: () {Navigator.pushNamed(context, Routes.home);}, child: const Text('首頁')),
          TextButton(onPressed: () {Navigator.pushNamed(context, Routes.login);}, child: const Text('登入頁'))
        ],
      ),
    );
  }
}
// 4. 添加 name 參數
// 5. 使用 Scaffold
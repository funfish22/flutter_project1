// 1. 添加 home 頁面
// 2. 添加 material, page_content 依賴
import 'package:flutter/material.dart';
import 'package:first_project/widgets/page_content.dart';
// 3. 編寫無狀態組件
class HomePage extends StatelessWidget {
  const HomePage({Key? key, name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageContent(name: '首頁');
  }
}
// 4. 使用 PageContent
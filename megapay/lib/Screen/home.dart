import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// Trong screens/home_screen.dart

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trang chính'),
      ),
      body: Center(
        child: Text('Chào mừng đến với ứng dụng ngân hàng của bạn!'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng ký'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Họ và tên
            TextFormField(
              decoration: InputDecoration(labelText: 'Họ và tên'),
            ),
            SizedBox(height: 16),

            // Số điện thoại
            TextFormField(
              decoration: InputDecoration(labelText: 'Số điện thoại'),
            ),
            SizedBox(height: 16),

            // Email
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16),

            // Giới tính
            TextFormField(
              decoration: InputDecoration(labelText: 'Giới tính'),
            ),
            SizedBox(height: 16),

            // Ngày sinh
            TextFormField(
              decoration: InputDecoration(labelText: 'Ngày sinh'),
            ),
            SizedBox(height: 16),

            // Mục "Đặt mật khẩu"
            Text(
              'Đặt mật khẩu',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),

            // Nhập mật khẩu
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Nhập mật khẩu'),
            ),
            SizedBox(height: 16),

            // Xác nhận mật khẩu
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Xác nhận mật khẩu'),
            ),
            SizedBox(height: 16),

            // Nút Đăng ký
            ElevatedButton(
              onPressed: () {
                // Xử lý logic khi nhấn nút Đăng ký
              },
              child: Text('Đăng ký'),
            ),
          ],
        ),
      ),
    );
  }
}

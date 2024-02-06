import 'package:flutter/material.dart';
import 'package:megapay/Screen/authentication/signup_screen.dart';
import 'package:megapay/services/authentication_service.dart';
import 'package:megapay/Screen/home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() async {
    // Gọi hàm xác thực từ AuthenticationService, kiểm tra thông tin đăng nhập
    bool isAuthenticated = await AuthenticationService().authenticate(
      _usernameController.text,
      _passwordController.text,
    );

    if (isAuthenticated) {
      // Nếu xác thực thành công, chuyển đến màn hình chính
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      // Hiển thị thông báo lỗi nếu xác thực không thành công
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Đăng nhập thất bại'),
            content: Text('Sai tên đăng nhập hoặc mật khẩu.'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng nhập'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Tên đăng nhập'),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Mật khẩu'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: Text('Đăng nhập'),
            ),
            SizedBox(height: 8), // Khoảng cách 8 pixels

            // Nút Đăng ký
            TextButton(
              onPressed: () {
                // Chuyển sang màn hình đăng ký
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
              child: Text('Bạn chưa có tài khoản? Đăng ký ngay'),
            ),
          ],
        ),
      ),
    );
  }
}

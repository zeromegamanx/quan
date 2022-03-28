import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ///Dầu tiên e phải nhìn desgin trên figma để xây dựng bố cục

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xff3C4457),

      ///Dung SafeArea để nó không đè ảnh lên thanh status bar
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: height / 3,
              child: _buildHeader(context),
            ),
            _buildLogin(context),
            _buildFooter(context),
          ],
        ),
      ),
    );
  }

  ///Em hien thi anh background phan nay len
  _buildHeader(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 40,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/theme.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xff343842).withOpacity(0.15),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 80,
            width: 80,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/avatar.png"),
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }

  _buildLogin(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(16),
          child: const Text(
            "Đăng nhập",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Color(0xff2E313C),
              padding: const EdgeInsets.all(12),
              alignment:
                  AlignmentDirectional.centerStart.resolve(TextDirection.ltr),
              constraints: const BoxConstraints(
                maxHeight: 40,
                maxWidth: 340,
              ),
              child: Column(
                children: const <Widget>[
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Text("aasdsadsadsadas"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  _buildFooter(BuildContext context) {
    return Container();
  }
}

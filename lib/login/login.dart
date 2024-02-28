import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:instagram_clone/home/home_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController userNamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final String hardcodedUsername = "user";
  final String hardcodedPassword = "123";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("asset/Instagram Logo.svg"),
          // SvgPicture.asset("asset/Instagram Logo.svg"),
          CustomTextFormField(
            userNamecontroller: userNamecontroller,
            lableText: "UserName",
          ),
          CustomTextFormField(
            userNamecontroller: passwordcontroller,
            lableText: "Passsword",
          ),
          MaterialButton(
            color: const Color.fromRGBO(55, 151, 239, 1),
            textColor: Colors.white,
            minWidth: 390,
            height: 44,
            onPressed: () {
              String enteredUsername = userNamecontroller.text.trim();
              String enteredPassword = passwordcontroller.text.trim();

              if (enteredUsername == hardcodedUsername &&
                  enteredPassword == hardcodedPassword) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BottomNavScreen(),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Invalid username or password'),
                    duration: Duration(seconds: 2),
                  ),
                );
              }
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Text(
              "Log in",
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.userNamecontroller,
    required this.lableText,
  });
  final String lableText;
  final TextEditingController userNamecontroller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        controller: userNamecontroller,
        cursorColor: Colors.white,
        style: const TextStyle(color: Colors.white, fontSize: 14),
        decoration: InputDecoration(
          filled: true,
          hintText: lableText,
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          fillColor: const Color.fromRGBO(18, 18, 18, 1),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_ui_page/widgets/text_fields.dart';
import '../widgets/sign_in_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controllers
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "Welcome back, you have been missed!",
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),
                const SizedBox(
                  height: 25,
                ),

                // UserName Input Field
                InputField(
                  textHint: "Username",
                  showText: false,
                  controller: _usernameController,
                ),

                const SizedBox(
                  height: 10,
                ),

                // Password Input Fiels
                InputField(
                  textHint: "Password",
                  showText: true,
                  controller: _passwordController,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.black,
                    onPressed: () {},
                    minWidth: 400,
                    height: 75,
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                const Divider(
                  thickness: 1.5,
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SignInButton(
                      imageLocation: "assets/images/google.png",
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    SignInButton(
                      imageLocation: "assets/images/apple.png",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not a member?"),
                    TextButton(
                        style: TextButton.styleFrom(),
                        onPressed: () {},
                        child: const Text(
                          "Register now",
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

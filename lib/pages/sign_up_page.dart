import 'package:flutter/material.dart';
import 'package:login_ui_page/auth/auth.dart';
import 'package:login_ui_page/routes/routes.dart';
import 'package:login_ui_page/widgets/text_fields.dart';
import '../widgets/dialogs.dart';
import '../widgets/image_button.dart';
import '../widgets/signin_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key, required this.onTap});
  final void Function() onTap;

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // Controllers
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),

                // Main Icon Logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),

                const SizedBox(
                  height: 30,
                ),

                // Welcome Text
                Text(
                  "Welcome back, you have been missed!",
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),

                const SizedBox(
                  height: 25,
                ),

                // UserName TextInput Field
                InputField(
                  textHint: "Email",
                  hideText: false,
                  controller: _usernameController,
                  keyboardType: TextInputType.emailAddress,
                ),

                const SizedBox(
                  height: 20,
                ),

                // Password TextInput Field
                InputField(
                  textHint: "Password",
                  hideText: true,
                  controller: _passwordController,
                  keyboardType: TextInputType.text,
                ),

                const SizedBox(
                  height: 20,
                ),

                // Confirm Password TextInput Field
                InputField(
                  textHint: "Confirm Password",
                  hideText: true,
                  controller: _confirmPasswordController,
                  keyboardType: TextInputType.text,
                ),

                const SizedBox(
                  height: 30,
                ),

                // Forgot Password Text
                // Padding(
                //   padding: const EdgeInsets.only(left: 250),
                //   child: MaterialButton(
                //     onPressed: () {},
                //     child: const Text(
                //       "Forgot Password?",
                //       style: TextStyle(fontSize: 15, color: Colors.blue),
                //     ),
                //   ),
                // ),

                const SizedBox(
                  height: 20,
                ),

                // Sign In Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: SignInButton(
                    text: "Sign Up",
                    onPressed: () async {
                      if (_passwordController.text ==
                          _confirmPasswordController.text) {
                        // Display Circular Progess
                        loadingCircle(context: context);

                        // SignUp with fb
                        await Authenticate().emailSignUp(
                          email: _usernameController.text,
                          password: _passwordController.text,
                        );

                        // Pop Circular Progress
                        Navigator.pop(context);
                      } else {
                        // TODO: Call Alert Dialog
                      }
                    },
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                // (Or Continue With) Divider text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),

                // Google & Apple SignIn Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ImageButton(
                      imageLocation: "assets/images/google.png",
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    ImageButton(
                      imageLocation: "assets/images/apple.png",
                    ),
                  ],
                ),

                const SizedBox(
                  height: 50,
                ),

                // Footer Text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already a member?"),
                    TextButton(
                      style: TextButton.styleFrom(),
                      onPressed: widget.onTap,
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
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

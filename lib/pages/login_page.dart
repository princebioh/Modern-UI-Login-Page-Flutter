import 'package:flutter/material.dart';
import 'package:login_ui_page/auth/auth.dart';
import 'package:login_ui_page/widgets/text_fields.dart';
import '../widgets/dialogs.dart';
import '../widgets/image_button.dart';
import '../widgets/signin_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.onTap});
  final void Function() onTap;

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),

                // Main Icon Logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),

                const SizedBox(
                  height: 50,
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
                  height: 10,
                ),

                // Password TextInput Field
                InputField(
                  textHint: "Password",
                  hideText: true,
                  controller: _passwordController,
                  keyboardType: TextInputType.text,
                ),

                const SizedBox(
                  height: 10,
                ),

                // Forgot Password Text
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                // Sign In Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: SignInButton(
                    text: "Sign In",
                    onPressed: () async {
                      // Display Circle Progress
                      loadingCircle(context: context);

                      String? errMes = await Authenticate().emailSignIn(
                        email: _usernameController.text,
                        password: _passwordController.text,
                      );

                      Navigator.pop(context);

                      if (errMes != null) {
                        showErrorMessage(
                          errorMessage: errMes,
                          context: context,
                        );
                      }
                    },
                  ),
                ),

                const SizedBox(
                  height: 50,
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
                  height: 50,
                ),

                // Google & Apple SignIn Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageButton(
                      onTap: () async {
                        await Authenticate().googleSignIn();
                      },
                      imageLocation: "assets/images/google.png",
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    ImageButton(
                      onTap: () {},
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
                    const Text("Not a member?"),
                    TextButton(
                      style: TextButton.styleFrom(),
                      onPressed: widget.onTap,
                      child: const Text(
                        "Register now",
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

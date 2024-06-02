import 'package:flutter/material.dart';
import 'package:tunza_presha/components/buttons.dart';
import 'package:tunza_presha/components/custom_text_field.dart';
import 'package:tunza_presha/components/platform_loader.dart';
import 'package:tunza_presha/constants/color_constants.dart';
import 'package:tunza_presha/router/routes.dart';
import 'package:tunza_presha/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool isLoading = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome back",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: primaryColor,
                ),
              ),
              const Text(
                "Sign In to continue",
                style: TextStyle(
                  fontSize: 14,
                  color: greyColor,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  textController: emailController,
                  inputType: TextInputType.emailAddress,
                  labelText: "Email Address",
                  hintText: "Enter your email address",
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  textController: passwordController,
                  inputType: TextInputType.visiblePassword,
                  labelText: "Password",
                  hintText: "Enter your password",
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: isLoading
                    ? const PlatformLoader()
                    : PrimaryButton(
                        text: "Sign In",
                        onPressed: () async {
                          setState(() {
                            isLoading = true;
                          });

                          final bool isSignedIn = await signIn(
                              emailAddress: emailController.text,
                              password: passwordController.text);

                          if (isSignedIn) {
                            setState(() {
                              isLoading = false;
                            });
                            // true
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content:
                                    Text('Welcome back. You are now signed in'),
                              ),
                            );
                            Navigator.of(context).pushNamed(AppRoutes.homePage);
                          } else {
                            setState(() {
                              isLoading = false;
                            });

                            // false
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Invalid Credentials. Try again'),
                              ),
                            );
                          }
                        },
                      ),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: SecondaryButton(
                  text: "Sign Up",
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.registerUserPage);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

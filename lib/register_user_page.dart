import 'package:flutter/material.dart';
import 'package:tunza_presha/components/buttons.dart';
import 'package:tunza_presha/components/custom_text_field.dart';
import 'package:tunza_presha/components/platform_loader.dart';
import 'package:tunza_presha/constants/color_constants.dart';
import 'package:tunza_presha/router/routes.dart';
import 'package:tunza_presha/utils.dart';

class RegisterUserPage extends StatefulWidget {
  const RegisterUserPage({super.key});

  @override
  State<RegisterUserPage> createState() => RegisterUserPageState();
}

class RegisterUserPageState extends State<RegisterUserPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isLoading = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: primaryColor,
                ),
              ),
              const Text(
                "Create your account to get started",
                style: TextStyle(
                  fontSize: 14,
                  color: greyColor,
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  textController: _emailController,
                  inputType: TextInputType.emailAddress,
                  labelText: "Email Address",
                  hintText: "Enter your email address",
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  textController: _passwordController,
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
                        text: "Sign Up",
                        onPressed: () async {
                          setState(() {
                            isLoading = true;
                          });

                          final bool isAccountCreated = await signUp(
                              emailAddress: _emailController.text,
                              password: _passwordController.text);

                          if (isAccountCreated) {
                            setState(() {
                              isLoading = false;
                            });

                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'Account created. Sign in to continue'),
                              ),
                            );
                            Navigator.pushNamed(
                                context, AppRoutes.loginPageRoute);
                          } else {
                            setState(() {
                              isLoading = false;
                            });

                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Unable to create account'),
                              ),
                            );
                          }
                        },
                      ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.loginPageRoute);
                },
                child: const Text(
                  "Already have an account? Sign In",
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

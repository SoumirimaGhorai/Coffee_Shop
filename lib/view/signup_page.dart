import 'dart:ui';

import 'package:coffee_shop/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/get_provider_app_controller.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});


  @override
  Widget build(BuildContext context) {
    final getProvider = Provider.of<GetProvider>(context);
    bool rememberMe =false;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink[50],
        body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'lib/images/background.png',
            fit: BoxFit.cover,
          ),
      
          // Gradient overlay (optional, for dark filter)
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.black.withOpacity(0.2),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
      
          // Center Glass Container
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  width: 380,
                  padding:  EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.3),
                      width: 1.2,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30),
      
                      // Email
                      TextField(
                        controller:getProvider. emailController,
                        style:  TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle:  TextStyle(color: Colors.white70),
                          enabledBorder:  UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white54),
                          ),
                          focusedBorder:  UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
      
                      // Password
                      TextField(
                        controller:getProvider.passwordController ,
                        obscureText: true,
                        style:  TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle:  TextStyle(color: Colors.white70),
                          enabledBorder:  UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white54),
                          ),
                          focusedBorder:  UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        controller:getProvider.passwordController ,
                        obscureText: true,
                        style:  TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: "Confirm Password",
                          labelStyle:  TextStyle(color: Colors.white70),
                          enabledBorder:  UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white54),
                          ),
                          focusedBorder:  UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
      
                      // Remember + Forget
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: rememberMe,
                                onChanged: (val) =>
                                    setState(() => rememberMe = val ?? false),
                                activeColor: Colors.white,
                                checkColor: Colors.black,
                              ),
                              Text(
                                "Remember Me",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child:  Text(
                              "Forget Password",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
      
                      // Login button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(200, 50),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding:  EdgeInsets.symmetric(vertical: 14),
                          ),
                          child:  Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
      
                      // Register text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account ? ",
                            style:
                            TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                          InkWell(
                            onTap: () => getProvider.getNav(context),    // Navigate to RegisterPage
                            child: Text(
                              "Register",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )
      ),
    );


  }

  void setState(bool Function() param0) {}
}









import 'package:coffee_shop/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/get_provider_app_controller.dart';
import 'login_page.dart';

class SignupPage extends StatelessWidget {
   SignupPage({super.key});
   // final emailController = TextEditingController();
   // final passwordController = TextEditingController();
   // final confirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
  //  final getProvider = Provider.of<GetProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.pink[50],
      body: Padding(
        padding:
            const EdgeInsets.only(top: 125, bottom: 20, left: 30, right: 30),

        //--------------------------------spacing all side---------------------------------------------//

        child: Consumer<GetProvider>(
          builder: (context, provider ,child) {
            return Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'lib/images/coffee1.jpg',
                        width: 200,
                        height: 150,
                      )),

                  //-----------------------------image--------------------------------------------------//
SizedBox(height: 20,),
                  TextField(
                    //controller: emailController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300],
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        hintText: 'Email'),
                  ),

                  //---------------------------------email-------------------------------------------------------//
SizedBox(height: 20,),
                  TextField(
                    //controller: passwordController,
                    obscureText: provider.hidePassword,
                    // onChanged: (_) =>
                    //     provider.checkPasswordMatch(
                    //       passwordController.text,
                    //       confirmController.text,
                    //     ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      prefixIcon: IconButton(
                          onPressed: provider.pass,
                          icon: provider.passIcon),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintText: 'Password',
                    ),
                  ),

                  //-----------------------------------password-------------------------------------------------------//
                  SizedBox(height: 20,),
                  TextField(
                    //controller: confirmController,
                    obscureText: provider.hideConfirmPass,
                    // onChanged: (_) =>
                    //     provider.checkPasswordMatch(
                    //       passwordController.text,
                    //       confirmController.text,
                    //     ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      prefixIcon: IconButton(onPressed: provider
                          .confirmPass, icon: provider.confirmPassIcon),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintText: 'Confirm password',
                      suffixIcon: provider.isPasswordMatch
                          ? Icon(Icons.check_circle, color: Colors.green)
                          : Icon(Icons.cancel, color: Colors.red),
                    ),
                  ),

                  //------------------------------confirm password---------------------------------------------------//
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //     foregroundColor: Colors.white,
                  //     backgroundColor: AppColors.buttonColor,
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //   ),
                  //   onPressed: () async {
                  //     if (provider.isPasswordMatch &&
                  //         emailController.text.isNotEmpty &&
                  //         passwordController.text.isNotEmpty) {
                  //       await provider.signUp(
                  //           emailController.text, passwordController.text);
                  //       ScaffoldMessenger.of(context).showSnackBar(
                  //         const SnackBar(content: Text('Sign Up Successful!')),
                  //       );
                  //       Navigator.pushReplacement(
                  //         context,
                  //         MaterialPageRoute(builder: (_) => LoginPage()),
                  //       );
                  //     } else {
                  //       ScaffoldMessenger.of(context).showSnackBar(
                  //         const SnackBar(content: Text(
                  //             'Passwords do not match!')),
                  //       );
                  //     }
                  //   },
                  //   child: const Text("Sign Up",),
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   spacing: 15,
                  //   children: [
                  //     Text('Already have an account ?'),
                  //
                  //     //---------------------------------text------------------------------------------//
                  //     InkWell(
                  //       onTap: () {
                  //         Provider.of<GetProvider>(context, listen: false)
                  //             .nav(context);
                  //       },
                  //       child:
                  //       Text(
                  //         'Sign In ',
                  //         style: TextStyle(color: Colors.blue),
                  //       ),),
                  //
                  //   ],
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.buttonColor),
                      child: InkWell(
                        onTap: () {
                          Provider.of<GetProvider>(context, listen: false)
                              .logNav(context);
                        },
                        child: Center(
                            child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),

                  //-----------------------------------login button--------------------------------------------------//

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Text('Already have an account ?'),

                      //---------------------------------text------------------------------------------//

                      InkWell(
                          onTap: () {
                            Provider.of<GetProvider>(context, listen: false)
                                .nav(context);
                          },
                          child: Text(
                            'Sign In ',
                            style: TextStyle(color: Colors.blue),
                          )),

                      //--------------------------------sign in---------------------------------------//

                    ],
                  ),


                ]
            );

          }
        )

          )

    );
  }
}

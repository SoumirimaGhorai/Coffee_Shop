import 'package:coffee_shop/core/themes/app_colors.dart';
import 'package:coffee_shop/view/details_page.dart';
import 'package:coffee_shop/view/signup_page.dart';
import 'package:coffee_shop/view_models/get_provider_app_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  // Future<Map<String, String>> _loadSavedCredentials() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   return {
  //     'email': prefs.getString('saved_email') ?? '',
  //     'password': prefs.getString('saved_password') ?? '',
  //   };
  // }

  @override
  Widget build(BuildContext context) {
    // final getProvider = Provider.of<GetProvider>(context);
    // final emailController = TextEditingController();
    // final passwordController = TextEditingController();
    // return FutureBuilder<Map<String, String>>(
    //     future: _loadSavedCredentials(),
    //     builder: (context, snapshot) {
    //       if (snapshot.connectionState == ConnectionState.waiting) {
    //         return const Scaffold(
    //           body: Center(child: CircularProgressIndicator()),
    //         );
    //       }
    //
    //       // pre-fill controllers
    //       emailController.text = snapshot.data?['email'] ?? '';
    //       passwordController.text = snapshot.data?['password'] ?? '';
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.pink[50],
      body: Padding(
        padding: const EdgeInsets.only(
            top: 100.0, bottom: 20.0, left: 30, right: 30.0),

        //----------------------------spacing all side----------------------------------------------------//

        child: Column(spacing: 20, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child:
                Image.asset('lib/images/coffee1.jpg', width: 250, height: 200),
          ),

          //----------------------------------image----------------------------------------------------//

          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[300],
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                hintText: ('Email')),
          ),

          //--------------------------email-----------------------------------------------//
        Consumer<GetProvider>(
        builder: (context,provider,child) {
          return TextField(obscureText: provider.hidePassword,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[300],
                prefixIcon: IconButton(onPressed: provider.pass, icon: provider.passIcon),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                hintText: ('Password')),

          );

        }),

          //-----------------------------password----------------------------------------------//

          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     foregroundColor: Colors.white,
          //     backgroundColor: AppColors.buttonColor,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //   ),
          //   onPressed: () async {
          //     bool success = await getProvider.login(
          //       emailController.text.trim(),
          //       passwordController.text.trim(),
          //     );
          //
          //     if (success) {
          //       // ✅ Go to Home Page
          //       Navigator.pushReplacement(
          //         context,
          //         MaterialPageRoute(builder: (_) =>  DetailsPage()),
          //       );
          //     } else {
          //       ScaffoldMessenger.of(context).showSnackBar(
          //         const SnackBar(content: Text('Invalid credentials')),
          //       );
          //     }
          //   },
          //   child: const Text("Login"),
          // ),
          // TextButton(
          //   onPressed: () {
          //     Navigator.pushReplacement(
          //       context,
          //       MaterialPageRoute(builder: (_) => SignupPage()),
          //     );
          //   },
          //   child:
        // Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         spacing: 15,
        //         children: [
        //         Text('Do not have any account ?'),
        //           Text('Sign Up', style: TextStyle(color: Colors.blue),)

            //---------------------------text----------------------------------------------------//


          Padding(
            padding: const EdgeInsets.only(top: 12.0),
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
                  ))),
            ),
          ),

          //-----------------------------login button----------------------------------------------------//

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              Text('Do not have any account ?'),

              //---------------------------text----------------------------------------------------//

              InkWell(
                  onTap: () {
                    Provider.of<GetProvider>(context, listen: false)
                        .getNav(context);
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.blue),
                  )),
            ],
          ),

          //------------------------------------sign up-------------------------------------------------//
]
       ),
      )


    );

  }
}

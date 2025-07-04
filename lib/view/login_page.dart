import 'package:coffee_shop/core/themes/app_colors.dart';
import 'package:coffee_shop/view_models/get_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Padding(
        padding: const EdgeInsets.only(
            top: 125.0, bottom: 20.0, left: 30, right: 30.0),

        //----------------------------spacing all side----------------------------------------------------//

        child: Column(spacing: 30, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child:
                Image.asset('lib/images/coffee1.jpg', width: 200, height: 150),
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

          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[300],
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                hintText: ('Password')),
          ),

          //-----------------------------password----------------------------------------------//

          Padding(
            padding: const EdgeInsets.only(top: 18.0),
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

        ]),
      ),
    );
  }
}

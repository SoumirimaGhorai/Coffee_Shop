import 'package:coffee_shop/view/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/get_provider_app_controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});


  @override
  Widget build(BuildContext context) {
    final getProvider = Provider.of<GetProvider>(context);
    bool isDark = getProvider.isDarkMode;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Profile section
              Row(
                children: [
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(6),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => getProvider.toggleTheme(false),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          decoration: BoxDecoration(
                            color: !isDark ? Colors.blue : Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: const Text(" Light"),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => getProvider.toggleTheme(true),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          decoration: BoxDecoration(
                            color: isDark ? Colors.blue : Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: const Text(" Dark"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),
              _buildListTile(Icons.person, "Profile"),
              _buildListTile(Icons.settings, "Settings"),

              SizedBox(height: 20),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),

              Spacer(),

              //Logout button
              TextButton.icon(
                onPressed: () {
                  showLogoutDialog(context);


                },
                icon:  Icon(Icons.logout, color: Colors.red),
                label:  Text(
                  "Logout",
                  style: TextStyle(color: Colors.red, fontSize: 16),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon,size: 14,),
      title: Text(title,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
      onTap: () {},
    );
  }
}


void showLogoutDialog(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape:  RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon:  Icon(Icons.close, color: Colors.black),
                onPressed: () => Navigator.pop(context),
              ),
            ),

            const Text(
              "Logout",
              style: TextStyle(
                fontSize: 22,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            const Text(
              "Are you sure you want to Logout?",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 25),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding:  EdgeInsets.symmetric(vertical: 14),
                      side: BorderSide(color: Colors.green),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () => Navigator.pop(context),
                    child:Text(
                      "Cancel",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);

                      /// Example logout navigation
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Yes, Logout",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
          ],
        ),
      );
    },
  );
}



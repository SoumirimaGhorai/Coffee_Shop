import 'package:coffee_shop/core/widgets/cold_coffee_information_page.dart';
import 'package:coffee_shop/core/widgets/hot_coffee_information_page.dart';
import 'package:coffee_shop/view/cold_coffee_page.dart';
import 'package:coffee_shop/view/favourite_page.dart';
import 'package:coffee_shop/view/main_page.dart';
import 'package:coffee_shop/view/profile_page.dart';
import 'package:flutter/material.dart';
import '../view/cart_page.dart';
import '../view/details_page.dart';
import '../view/hot_coffee_page.dart';
import '../view/login_page.dart';
import '../view/signup_page.dart';

class GetProvider extends ChangeNotifier {
  final PageController pageController = PageController();
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;
    List<Widget> page= [
    DetailsPage(),
    CartPage(),
      FavouritePage(),
    ProfilePage(),
  ];
   void setPage(int index){
  //void setPage(int index,BuildContext context) {
  //   if(index==3){
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => ProfilePage()));
_selectedIndex=index;
pageController.animateToPage(index,
    duration: Duration(milliseconds: 300), curve: Curves.ease);

   //_selectedIndex = index;
    notifyListeners();
     // pageController.animateToPage(index,
       // duration: Duration(microseconds: 300), curve: Curves.ease);

  }

  void onPageChanged(int page) {
    _selectedIndex = page;
    notifyListeners();
  }

  void nav(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void getNav(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignupPage()));
  }

  void logNav(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MainPage()));
  }

  void hCoffeeNav(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HotCoffeePage()));
  }

  void americanoNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HotCoffeeInformationPage(
                path: 'lib/images/americano.png', name: 'Americano')));
  }

  void caffeNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HotCoffeeInformationPage(
                path: 'lib/images/caffeemacchiato.png',
                name: 'Caffee Macchiato')));
  }

  void cappuccinoNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HotCoffeeInformationPage(
                path: 'lib/images/cappuccino.png', name: 'Cappuccino')));
  }

  void espressoNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HotCoffeeInformationPage(
                path: 'lib/images/espresso.png', name: 'Espresso')));
  }

  void flatWhiteNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HotCoffeeInformationPage(
                path: 'lib/images/flatwhite.png', name: 'Flat white')));
  }

  void latteNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HotCoffeeInformationPage(
                path: 'lib/images/latte.png', name: 'Latte')));
  }

  void longBlackNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HotCoffeeInformationPage(
                path: 'lib/images/longblack.png', name: 'Long Black')));
  }

  void mochaNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HotCoffeeInformationPage(
                path: 'lib/images/mocha.png', name: 'Mocha')));
  }

  void cCoffeeNav(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ColdCoffeePage()));
  }

  void affNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ColdCoffeeInformationPage(
                  title: 'Affgato',
                  path: 'lib/images/affogato.png',
                )));
  }

  void coldBrewNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ColdCoffeeInformationPage(
                  title: 'Coldbrew',
                path:  'lib/images/coldbrew.png'
                )));
  }

  void classicColdNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ColdCoffeeInformationPage(
                  title:  'Classic cold coffee',
                 path: 'lib/images/classiccoldcoffee.png'
                )));
  }

  void corNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ColdCoffeeInformationPage(
                  title: 'Cortado',
                path: 'lib/images/cortado.png'
                )));
  }

  void mazNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ColdCoffeeInformationPage(
                  title: 'Mazagran',
                path: 'lib/images/mazagran.png'
                )));
  }

  void vanniNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ColdCoffeeInformationPage(
                 title:   'Vanilla iced coffee',
              path: 'lib/images/vanillaicedcoffee.png',
                )));
  }


  void vietCocoNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ColdCoffeeInformationPage(
                  title:'Vietnamese coconut coffee',
                path: 'lib/images/vietnamesecoconutcoffee.png'
                )));
  }

  void vietColdNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ColdCoffeeInformationPage(
                  title: 'Vietnamese cold coffee',
               path:  'lib/images/vietnamesecoldcoffee.png'
                )));
  }
  bool _isOatMilkSelected = false;
  bool _isFatMilkSelected = false;
  bool _isCreamSelected = false;

  bool get isOatMilkSelected => _isOatMilkSelected;
  bool get isFatMilkSelected => _isFatMilkSelected;
  bool get isCreamSelected => _isCreamSelected;

  void toggleOatMilk(bool value) {
    _isOatMilkSelected = value;
    notifyListeners();
  }

  void toggleFatMilk(bool value) {
    _isFatMilkSelected = value;
    notifyListeners();
  }

  void toggleCream(bool value) {
    _isCreamSelected = value;
    notifyListeners();
  }
  Icon passIcon=Icon(Icons.visibility_off);
  bool hidePassword=true;
  void pass(){
    hidePassword = !hidePassword; // flip true <-> false
    passIcon = Icon(hidePassword ? Icons.visibility_off : Icons.remove_red_eye);
    notifyListeners();
  }

  Icon confirmPassIcon=Icon(Icons.visibility_off);
  bool hideConfirmPass=true;
  void confirmPass(){
    hideConfirmPass = !hideConfirmPass; // flip true <-> false
    confirmPassIcon = Icon(hideConfirmPass ? Icons.visibility_off : Icons.remove_red_eye);
    notifyListeners();
}
  int _selectedTab = 0;

  int get selectedTab => _selectedTab;

  void setSelectedTab(int index) {
    _selectedTab = index;
    notifyListeners();
  }
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  ThemeMode get currentTheme => _isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}




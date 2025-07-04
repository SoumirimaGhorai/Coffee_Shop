import 'package:coffee_shop/core/widgets/coldCoffeeInformation_page.dart';
import 'package:coffee_shop/core/widgets/hotCoffeeInformation_page.dart';
import 'package:coffee_shop/view/coldCoffee_page.dart';
import 'package:flutter/material.dart';

import '../view/details_page.dart';

import '../view/hotCoffee_page.dart';
import '../view/login_page.dart';
import '../view/signup_page.dart';

class GetProvider extends ChangeNotifier {
  final PageController pageController = PageController();
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void setPage(int page) {
    _selectedIndex = page;
    notifyListeners();
    pageController.animateToPage(page,
        duration: Duration(microseconds: 300), curve: Curves.ease);
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
        context, MaterialPageRoute(builder: (context) => DetailsPage()));
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
}

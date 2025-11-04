import 'package:coffee_shop/core/widgets/Pageview_page.dart';
import 'package:coffee_shop/core/widgets/cold_coffee_information_page.dart';
import 'package:coffee_shop/core/widgets/hot_coffee_information_page.dart';
import 'package:coffee_shop/view/cold_coffee_page.dart';
import 'package:coffee_shop/view/favourite_page.dart';
import 'package:coffee_shop/view/profile_page.dart';
import 'package:flutter/material.dart';
import '../data/model/cold_coffee_details.dart';
import '../data/model/hot_coffee_details.dart';
import '../view/cart_page.dart';
import '../view/details_page.dart';
import '../view/get_started.dart';
import '../view/hot_coffee_page.dart';
import '../view/login_page.dart';
import '../view/signup_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetProvider extends ChangeNotifier {


  //==================== PAGE VIEW ====================//
  final PageController pageController = PageController();
  int _selectedIndex = 0; // 0 = Home, 1 = Cart , 2 =  Favourite, 3 = Profile
  int get selectedIndex => _selectedIndex;
  List<Widget> page = [
    DetailsPage(),
    CartPage(),
    FavouritePage(),
    ProfilePage(),
  ];

  void setPage(int index) {
    _selectedIndex = index;
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
    notifyListeners();
  }

  void onPageChanged(int page) {
    _selectedIndex = page;
    notifyListeners();
  }

//==================== GENERAL NAVIGATION ====================//

  void hCoffeeNav(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HotCoffeePage()));
  }

  void cCoffeeNav(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ColdCoffeePage()));
  }

//==================== HOT & COLD COFFEE NAVIGATION ===================//


  void americanoNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                HotCoffeeInformationPage(
                    path: 'lib/images/americano.png', name: 'Americano')));
  }

  void caffeNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                HotCoffeeInformationPage(
                    path: 'lib/images/caffeemacchiato.png',
                    name: 'Caffee Macchiato')));
  }

  void cappuccinoNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                HotCoffeeInformationPage(
                    path: 'lib/images/cappuccino.png', name: 'Cappuccino')));
  }

  void espressoNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                HotCoffeeInformationPage(
                    path: 'lib/images/espresso.png', name: 'Espresso')));
  }

  void flatWhiteNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                HotCoffeeInformationPage(
                    path: 'lib/images/flatwhite.png', name: 'Flat white')));
  }

  void latteNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                HotCoffeeInformationPage(
                    path: 'lib/images/latte.png', name: 'Latte')));
  }

  void longBlackNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                HotCoffeeInformationPage(
                    path: 'lib/images/longblack.png', name: 'Long Black')));
  }

  void mochaNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                HotCoffeeInformationPage(
                    path: 'lib/images/mocha.png', name: 'Mocha')));
  }

  //==================== HOT COFFEE INFORMATION ===================//

  void affNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ColdCoffeeInformationPage(
                  title: 'Affgato',
                  path: 'lib/images/affogato.png',
                )));
  }

  void coldBrewNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ColdCoffeeInformationPage(
                    title: 'Coldbrew',
                    path: 'lib/images/coldbrew.png'
                )));
  }

  void classicColdNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ColdCoffeeInformationPage(
                  title: 'Classic cold coffee',
                  path: 'lib/images/classiccoldcoffee.png',
                )));
  }

  void corNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ColdCoffeeInformationPage(
                    title: 'Cortado',
                    path: 'lib/images/cortado.png'
                )));
  }

  void mazNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ColdCoffeeInformationPage(
                    title: 'Mazagran',
                    path: 'lib/images/mazagran.png'
                )));
  }

  void vanniNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ColdCoffeeInformationPage(
                  title: 'Vanilla iced coffee',
                  path: 'lib/images/vanillaicedcoffee.png',
                )));
  }

  void vietCocoNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ColdCoffeeInformationPage(
                    title: 'Vietnamese coconut coffee',
                    path: 'lib/images/vietnamesecoconutcoffee.png'
                )));
  }

  void vietColdNav(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ColdCoffeeInformationPage(
                    title: 'Vietnamese cold coffee',
                    path: 'lib/images/vietnamesecoldcoffee.png'
                )));
  }

  //==================== COLD COFFEE INFORMATION ====================//

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  Icon passIcon = Icon(Icons.visibility_off);
  bool hidePassword = true;

  void pass() {
    hidePassword = !hidePassword; // flip true <-> false
    passIcon = Icon(hidePassword ? Icons.visibility_off : Icons.remove_red_eye);
    notifyListeners();
  }

  Icon confirmPassIcon = Icon(Icons.visibility_off);
  bool hideConfirmPass = true;

  void confirmPass() {
    hideConfirmPass = !hideConfirmPass; // flip true <-> false
    confirmPassIcon =
        Icon(hideConfirmPass ? Icons.visibility_off : Icons.remove_red_eye);
    notifyListeners();
  }

  //==================== PASSWORD VISIBILITY ====================//


  Future<void> signUp(String email, String password, String confirmPassword) async {
    if (email.isEmpty || password.isEmpty) return;
    if (password != confirmPassword) return; // password mismatch: do nothing
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
    await prefs.setString('password', password);
    // optionally set a flag:
    await prefs.setBool('logged_in', true);
  }

  // --- login: check saved credentials ---
  Future<bool> login(String email, String password) async {
    final prefs = await SharedPreferences.getInstance();
    final savedEmail = prefs.getString('email');
    final savedPassword = prefs.getString('password');

    if (email == savedEmail && password == savedPassword) {
      await prefs.setBool('logged_in', true);
      return true;
    } else {
      return false;
    }
  }

  // --- check on splash and navigate to CoffeePage with isLoggedIn ---
  Future<void> checkLoginAndNavigate(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final savedEmail = prefs.getString('email');
    final savedPassword = prefs.getString('password');

    await Future.delayed(const Duration(seconds: 2)); // splash delay
    final isLoggedIn = savedEmail != null && savedPassword != null;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => CoffeePage(isLoggedIn: isLoggedIn)),
    );
  }

  // helper nav functions (optional)
  void getNav(BuildContext context) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginPage()));
  void nav(BuildContext context) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => SignupPage()));
  void logNav(BuildContext context) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => PageViewPage()));

  // // ✅ Logout
  // Future<void> logout(BuildContext context) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setBool('logged_in', false);
  //   Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (_) => CoffeePage(isLoggedIn: false)));
  // }

  //==================== PASSWORD VALIDATION ====================//

  int _selectedTab = 0;

  int get selectedTab => _selectedTab;

  void setSelectedTab(int index) {
    _selectedTab = index;
    notifyListeners();
  }

  //==================== CHANGE HOME PAGE THREE BUTTON COLOR ====================//

  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  ThemeMode get themeMode => _isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme(bool isDark) {
    _isDarkMode = isDark;
    notifyListeners();
  }

  //==================== THEME MODE ====================//

  // Instead of three booleans, use one variable for size
  String selectedSize = '';

  void selectSize(String size) {
    selectedSize = size;
    notifyListeners();
  }

//==================== COFFEE'S SIZE SELECTION ====================//

  int price = 0;
  int totalPayment = 0;

  void basePrice(int price) {
    totalPayment = price * _count;
    notifyListeners();
  }

  String? selectedMilk; // only one can be selectedString? selectedMilk;  // only one can be selected
  void selectMilk(String? milk) {
    selectedMilk = milk;
    if (milk == 'oat') price = 200;
    if (milk == 'fat') price = 275;
    if (milk == 'cream') price = 300;
    notifyListeners();
  }

  int _count = 1;

  int get count => _count;

  void increment() {
    _count++;
    totalPayment = price * _count;
    notifyListeners();
  }

  void decrement() {
    if (_count > 1) {
      _count--;
      totalPayment = price * _count;
      notifyListeners();
    }
  }

  //====================COFFEE'S PRICE CALCULATION ====================//


  final List<HotCoffeeDetails> hotCoffeeList = [
    HotCoffeeDetails(
      coffeeId: '1',
      coffeeName: 'Americano',
      coffeePrice: '₹180',
      coffeeRating: '4.5',
      imagePath: 'lib/images/americano.png',
      // isAddedToCart: 'false',
      // isFavourite: 'false',
    ),
    HotCoffeeDetails(
      coffeeId: '2',
      coffeeName: 'Caffee Macchiato',
      coffeePrice: '₹200',
      coffeeRating: '4.6',
      imagePath: 'lib/images/caffeemacchiato.png',
      // isAddedToCart: 'false',
      // isFavourite: 'false',
    ),
    HotCoffeeDetails(
      coffeeId: '3',
      coffeeName: 'Cappuccino',
      coffeePrice: '₹190',
      coffeeRating: '4.8',
      imagePath: 'lib/images/cappuccino.png',
      //  isAddedToCart: 'false',
      // isFavourite: 'false',
    ),
    HotCoffeeDetails(
      coffeeId: '4',
      coffeeName: 'Espresso',
      coffeePrice: '₹160',
      coffeeRating: '4.4',
      imagePath: 'lib/images/espresso.png',
      // isAddedToCart: 'false',
      // isFavourite: 'false',
    ),
    HotCoffeeDetails(
      coffeeId: '5',
      coffeeName: 'Flat White',
      coffeePrice: '₹210',
      coffeeRating: '4.7',
      imagePath: 'lib/images/flatwhite.png',
      // isAddedToCart: 'false',
      // isFavourite: 'false',
    ),
    HotCoffeeDetails(
      coffeeId: '6',
      coffeeName: 'Latte',
      coffeePrice: '₹220',
      coffeeRating: '4.9',
      imagePath: 'lib/images/latte.png',
      // isAddedToCart: 'false',
      // isFavourite: 'false',
    ),
    HotCoffeeDetails(
      coffeeId: '7',
      coffeeName: 'Long Black',
      coffeePrice: '₹170',
      coffeeRating: '4.3',
      imagePath: 'lib/images/longblack.png',
      // isAddedToCart: 'false',
      // isFavourite: 'false',
    ),
    HotCoffeeDetails(
      coffeeId: '8',
      coffeeName: 'Mocha',
      coffeePrice: '₹230',
      coffeeRating: '4.8',
      imagePath: 'lib/images/mocha.png',
      // isAddedToCart: 'false',
      // isFavourite: 'false',
    ),
  ];

 //----------   Hot Coffee details list (main data) ------------------------------------

  List<HotCoffeeDetails> get coffeeList1 => hotCoffeeList;
  List<String> cartTitles = [];
  List<String> cartImages = [];
  List<String> favTitles = [];
  List<String> favImages = [];

  // -------------------- CART & FAVOURITES --------------------


  GetProvider() {
    loadCart();
    loadFavourites();
  }
// -------------------- INITIALIZATION --------------------

  Future<void> loadCart() async {
    final prefs = await SharedPreferences.getInstance();
    cartTitles = prefs.getStringList('cartTitles') ?? [];
    cartImages = prefs.getStringList('cartImages') ?? [];
    notifyListeners();
  }

  Future<void> addToCart(String title, String path) async {
    if (!cartTitles.contains(title)) {
      cartTitles.add(title);
      cartImages.add(path);
      final prefs = await SharedPreferences.getInstance();
      prefs.setStringList('cartTitles', cartTitles);
      prefs.setStringList('cartImages', cartImages);
      notifyListeners();
    }
  }

  Future<void> removeFromCart(String title) async {
    int index = cartTitles.indexOf(title);
    if (index != -1) {
      cartTitles.removeAt(index);
      cartImages.removeAt(index);
      final prefs = await SharedPreferences.getInstance();
      prefs.setStringList('cartTitles', cartTitles);
      prefs.setStringList('cartImages', cartImages);
      notifyListeners();
    }
  }

  bool isAdded(String title) => cartTitles.contains(title);
  // -------------------- CART METHODS --------------------

  Future<void> loadFavourites() async {
    final prefs = await SharedPreferences.getInstance();
    favTitles = prefs.getStringList('favTitles') ?? [];
    favImages = prefs.getStringList('favImages') ?? [];
    notifyListeners();
  }

  Future<void> addToFavourite(String title, String path) async {
    if (!favTitles.contains(title)) {
      favTitles.add(title);
      favImages.add(path);
      final prefs = await SharedPreferences.getInstance();
      prefs.setStringList('favTitles', favTitles);
      prefs.setStringList('favImages', favImages);
      notifyListeners();
    }
  }

  Future<void> removeFromFavourite(String title) async {
    int index = favTitles.indexOf(title);
    if (index != -1) {
      favTitles.removeAt(index);
      favImages.removeAt(index);
      final prefs = await SharedPreferences.getInstance();
      prefs.setStringList('favTitles', favTitles);
      prefs.setStringList('favImages', favImages);
      notifyListeners();
    }
  }
  bool isFav(String title) => favTitles.contains(title);

  // -------------------- FAVOURITE METHODS --------------------

  void goToHotCoffeeDetails(BuildContext context, String path, String name) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            HotCoffeeInformationPage(
              path: path,
              name: name,
            ),
      ),
    );
  }
  // -------------------- COFFEE DETAILS PAGE --------------------


  final List<ColdCoffeeDetails> coldCoffeeList = [
    ColdCoffeeDetails(
      coffeeId: '1',
      coffeeName: 'Affogato',
      coffeePrice: '₹250',
      coffeeRating: '4.7',
      imagePath: 'lib/images/affogato.png',
      // isAddedToCart: 'false',
      // isFavourite: 'false',
    ),
    ColdCoffeeDetails(
      coffeeId: '2',
      coffeeName: 'Cold Brew',
      coffeePrice: '₹200',
      coffeeRating: '4.6',
      imagePath: 'lib/images/coldbrew.png',
    ),
    ColdCoffeeDetails(
      coffeeId: '3',
      coffeeName: 'Classic Cold Coffee',
      coffeePrice: '₹180',
      coffeeRating: '4.5',
      imagePath: 'lib/images/classiccoldcoffee.png',
    ),
    ColdCoffeeDetails(
      coffeeId: '4',
      coffeeName: 'Cortado',
      coffeePrice: '₹190',
      coffeeRating: '4.3',
      imagePath: 'lib/images/cortado.png',
    ),
    ColdCoffeeDetails(
      coffeeId: '5',
      coffeeName: 'Mazagran',
      coffeePrice: '₹210',
      coffeeRating: '4.8',
      imagePath: 'lib/images/mazagran.png',
    ),
    ColdCoffeeDetails(
      coffeeId: '6',
      coffeeName: 'Vanilla Iced Coffee',
      coffeePrice: '₹230',
      coffeeRating: '4.9',
      imagePath: 'lib/images/vanillaicedcoffee.png',
    ),
    ColdCoffeeDetails(
      coffeeId: '7',
      coffeeName: 'Vietnamese Coconut Coffee',
      coffeePrice: '₹240',
      coffeeRating: '4.7',
      imagePath: 'lib/images/vietnamesecoconutcoffee.png',
    ),
    ColdCoffeeDetails(
      coffeeId: '8',
      coffeeName: 'Vietnamese Cold Coffee',
      coffeePrice: '₹220',
      coffeeRating: '4.8',
      imagePath: 'lib/images/vietnamesecoldcoffee.png',
    ),
  ];

 //----------------- Cold Coffee Details List -----------------------------
  List<ColdCoffeeDetails> get coldCoffeeList1 => coldCoffeeList;
  List<String> cartTitles1 = [];
  List<String> cartImages1= [];
  List<String> favTitles1 = [];
  List<String> favImages1 = [];

  // -------------------- CART & FAVOURITES --------------------


  GetProvidercold() {
    loadCart();
    loadFavourites();
  }
// -------------------- INITIALIZATION --------------------

  Future<void> coldLoadCart() async {
    final prefs = await SharedPreferences.getInstance();
    cartTitles1 = prefs.getStringList('cartTitles') ?? [];
    cartImages1= prefs.getStringList('cartImages') ?? [];
    notifyListeners();
  }

  Future<void> coldAddToCart(String title, String path) async {
    if (!cartTitles1.contains(title)) {
      cartTitles1.add(title);
      cartImages1.add(path);
      final prefs = await SharedPreferences.getInstance();
      prefs.setStringList('cartTitles', cartTitles1);
      prefs.setStringList('cartImages', cartImages1);
      notifyListeners();
    }
  }

  Future<void> coldRemoveFromCart(String title) async {
    int index = cartTitles1.indexOf(title);
    if (index != -1) {
      cartTitles1.removeAt(index);
      cartImages1.removeAt(index);
      final prefs = await SharedPreferences.getInstance();
      prefs.setStringList('cartTitles', cartTitles1);
      prefs.setStringList('cartImages', cartImages1);
      notifyListeners();
    }
  }

  bool isColdAdded(String title) => cartTitles1.contains(title);
  // -------------------- CART METHODS --------------------

  Future<void> coldLoadFavourites() async {
    final prefs = await SharedPreferences.getInstance();
    favTitles1 = prefs.getStringList('favTitles') ?? [];
    favImages1 = prefs.getStringList('favImages') ?? [];
    notifyListeners();
  }

  Future<void> coldAddToFavourite(String title, String path) async {
    if (!favTitles1.contains(title)) {
      favTitles1.add(title);
      favImages1.add(path);
      final prefs = await SharedPreferences.getInstance();
      prefs.setStringList('favTitles', favTitles1);
      prefs.setStringList('favImages', favImages1);
      notifyListeners();
    }
  }

  Future<void> coldRemoveFromFavourite(String title) async {
    int index = favTitles1.indexOf(title);
    if (index != -1) {
      favTitles1.removeAt(index);
      favImages1.removeAt(index);
      final prefs = await SharedPreferences.getInstance();
      prefs.setStringList('favTitles', favTitles1);
      prefs.setStringList('favImages', favImages1);
      notifyListeners();
    }
  }
  bool isColdFav(String title) => favTitles1.contains(title);




  void goToColdCoffeeDetails(BuildContext context, String path, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            ColdCoffeeInformationPage(
              path: path,
              title: title,

            ),
      ),
    );
  }
// -------------------- COFFEE DETAILS PAGE --------------------


}








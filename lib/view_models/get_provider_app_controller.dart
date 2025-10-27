import 'package:coffee_shop/core/widgets/Pageview_page.dart';
import 'package:coffee_shop/core/widgets/cold_coffee_information_page.dart';
import 'package:coffee_shop/core/widgets/hot_coffee_information_page.dart';
import 'package:coffee_shop/view/cold_coffee_page.dart';
import 'package:coffee_shop/view/favourite_page.dart';
import 'package:coffee_shop/view/profile_page.dart';
import 'package:flutter/material.dart';
import '../data/model/coffee_details.dart';
import '../view/cart_page.dart';
import '../view/details_page.dart';
import '../view/get_started.dart';
import '../view/hot_coffee_page.dart';
import '../view/login_page.dart';
import '../view/signup_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
class GetProvider extends ChangeNotifier {
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

  //==================== PAGE NAVIGATION CONTROL ====================//

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
        context, MaterialPageRoute(builder: (context) => PageViewPage()));
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
                    path: 'lib/images/classiccoldcoffee.png'
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

  //==================== COLD COFFEE DETAIL PAGES ====================//

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

  String email = '';
  String password = '';
  bool isPasswordMatch = false;

  // ✅ Check if password == confirm password
  void checkPasswordMatch(String pass, String confirmPass) {
    isPasswordMatch = pass == confirmPass && pass.isNotEmpty;
    notifyListeners();
  }

  // ✅ Save credentials after signup
  Future<void> signUp(String email, String password) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('saved_email', email);
    await prefs.setString('saved_password', password);
  }

  // ✅ Check credentials for login
  Future<bool> login(String inputEmail, String inputPassword) async {
    final prefs = await SharedPreferences.getInstance();
    final savedEmail = prefs.getString('saved_email');
    final savedPassword = prefs.getString('saved_password');

    if (inputEmail == savedEmail && inputPassword == savedPassword) {
      await prefs.setBool('logged_in', true);
      return true;
    } else {
      return false;
    }
  }

  // ✅ Check login + show splash + get started
  Future<void> checkLoginAndNavigate(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3)); // splash delay
    final prefs = await SharedPreferences.getInstance();
    bool loggedIn = prefs.getBool('logged_in') ?? false;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => CoffeePage(isLoggedIn: loggedIn)),
    );
  }

  // ✅ Logout
  Future<void> logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('logged_in', false);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => CoffeePage(isLoggedIn: false)));
  }

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

  // int clickTab = 0;
  // String _query = '';
  //
  // final List<Map<String, String>> _coffeeList = [
  //   {
  //     "name": "Cappuccino",
  //     "image": "lib/images/cappuccino.png",
  //     "price": "175"
  //   },
  //   {"name": "Espresso", "image": "lib/images/espresso.png", "price": "150"},
  //   {"name": "Americano", "image": "lib/images/americano.png", "price": "100"},
  //   {"name": "Flat white", "image": "lib/images/flatwhite.png", "price": "110"},
  // ];
  //
  // void updateQuery(String value) {
  //   _query = value;
  //   notifyListeners();
  // }
  //
  // List<Map<String, String>> get filteredCoffees {
  //   if (_query.isEmpty) return _coffeeList;
  //   return _coffeeList
  //       .where((coffee) =>
  //       coffee["name"]!.toLowerCase().contains(_query.toLowerCase()))
  //       .toList();
  // }
  //
  // void openCoffeeDetails(BuildContext context, Map<String, String> coffee) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (_) =>
  //           HotCoffeeInformationPage(
  //             path: coffee['image']!,
  //             name: coffee['name']!,
  //           ),
  //     ),
  //   );
  // }

//==================== SEARCH FEATURE ====================//

  // List<String> cartTitles = [];
  // List<String> cartImages = [];
  //
  // GetProvider() {
  //   loadCart();
  //   loadFavourites();
  // }
  //
  // Future<void> loadCart() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   cartTitles = prefs.getStringList('cartTitles') ?? [];
  //   cartImages = prefs.getStringList('cartImages') ?? [];
  //   notifyListeners();
  // }
  //
  // Future<void> addToCart(String title, String path) async {
  //   if (!cartTitles.contains(title)) {
  //     cartTitles.add(title);
  //     cartImages.add(path);
  //     final prefs = await SharedPreferences.getInstance();
  //     prefs.setStringList('cartTitles', cartTitles);
  //     prefs.setStringList('cartImages', cartImages);
  //     notifyListeners();
  //   }
  // }
  //
  // Future<void> removeFromCart(String title) async {
  //   int index = cartTitles.indexOf(title);
  //   if (index != -1) {
  //     cartTitles.removeAt(index);
  //     cartImages.removeAt(index);
  //     final prefs = await SharedPreferences.getInstance();
  //     prefs.setStringList('cartTitles', cartTitles);
  //     prefs.setStringList('cartImages', cartImages);
  //     notifyListeners();
  //   }
  // }
  //
  // bool isAdded(String title) => cartTitles.contains(title);
  // // ------------------ CART ------------------ //
  //
  // List<String> favTitles = [];
  // List<String> favImages = [];
  //
  // Future<void> loadFavourites() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   favTitles = prefs.getStringList('favTitles') ?? [];
  //   favImages = prefs.getStringList('favImages') ?? [];
  //   notifyListeners();
  // }
  //
  // Future<void> addToFav(String title, String path) async {
  //   if (!favTitles.contains(title)) {
  //     favTitles.add(title);
  //     favImages.add(path);
  //     final prefs = await SharedPreferences.getInstance();
  //     prefs.setStringList('favTitles', favTitles);
  //     prefs.setStringList('favImages', favImages);
  //     notifyListeners();
  //   }
  // }
  //
  // Future<void> removeFromFav(String title) async {
  //   int index = favTitles.indexOf(title);
  //   if (index != -1) {
  //     favTitles.removeAt(index);
  //     favImages.removeAt(index);
  //     final prefs = await SharedPreferences.getInstance();
  //     prefs.setStringList('favTitles', favTitles);
  //     prefs.setStringList('favImages', favImages);
  //     notifyListeners();
  //   }
  // }
  // bool isFav(String title) => favTitles.contains(title);

// ------------------ FAVOURITE ------------------ //


  // 🟢 Coffee details list (main data)
  final List<CoffeeDetails> coffeeList = [
    CoffeeDetails(
      coffeeId: '1',
      coffeeName: 'Americano',
      coffeePrice: '₹180',
      coffeeRating: '4.5',
      imagePath: 'lib/images/americano.png',
      // isAddedToCart: 'false',
      // isFavourite: 'false',
    ),
    CoffeeDetails(
      coffeeId: '2',
      coffeeName: 'Caffee Macchiato',
      coffeePrice: '₹200',
      coffeeRating: '4.6',
      imagePath: 'lib/images/caffeemacchiato.png',
      // isAddedToCart: 'false',
      // isFavourite: 'false',
    ),
    CoffeeDetails(
      coffeeId: '3',
      coffeeName: 'Cappuccino',
      coffeePrice: '₹190',
      coffeeRating: '4.8',
      imagePath: 'lib/images/cappuccino.png',
      //  isAddedToCart: 'false',
      // isFavourite: 'false',
    ),
    CoffeeDetails(
      coffeeId: '4',
      coffeeName: 'Espresso',
      coffeePrice: '₹160',
      coffeeRating: '4.4',
      imagePath: 'lib/images/espresso.png',
      // isAddedToCart: 'false',
      // isFavourite: 'false',
    ),
    CoffeeDetails(
      coffeeId: '5',
      coffeeName: 'Flat White',
      coffeePrice: '₹210',
      coffeeRating: '4.7',
      imagePath: 'lib/images/flatwhite.png',
      // isAddedToCart: 'false',
      // isFavourite: 'false',
    ),
    CoffeeDetails(
      coffeeId: '6',
      coffeeName: 'Latte',
      coffeePrice: '₹220',
      coffeeRating: '4.9',
      imagePath: 'lib/images/latte.png',
      // isAddedToCart: 'false',
      // isFavourite: 'false',
    ),
    CoffeeDetails(
      coffeeId: '7',
      coffeeName: 'Long Black',
      coffeePrice: '₹170',
      coffeeRating: '4.3',
      imagePath: 'lib/images/longblack.png',
      // isAddedToCart: 'false',
      // isFavourite: 'false',
    ),
    CoffeeDetails(
      coffeeId: '8',
      coffeeName: 'Mocha',
      coffeePrice: '₹230',
      coffeeRating: '4.8',
      imagePath: 'lib/images/mocha.png',
      // isAddedToCart: 'false',
      // isFavourite: 'false',
    ),
  ];

  // 🟣 Getter for coffee list
  List<CoffeeDetails> get coffeeList1 => coffeeList;
  List<String> cartTitles = [];
  List<String> cartImages = [];
// -------------------- CART --------------------

 //List<String> get cartTitles => _cartTitles;
  //List<String> get cartImages => _cartImages;

  // -------------------- FAVOURITES --------------------
  List<String> favTitles = [];
  List<String> favImages = [];

  //List<String> get favTitles => _favTitles;
 // List<String> get favImages => _favImages;

  // -------------------- INITIALIZATION --------------------
  GetProvider() {
    loadCart();
    loadFavourites();
  }

  // -------------------- CART METHODS --------------------
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

  // Future<void> clearCart() async {
  //   cartTitles.clear();
  //   cartImages.clear();
  //   final prefs = await SharedPreferences.getInstance();
  //   prefs.remove('cartTitles');
  //   prefs.remove('cartImages');
  //   notifyListeners();
  // }

  // -------------------- FAVOURITE METHODS --------------------
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
    if (index !=1) {
      favTitles.removeAt(index);
      favImages.removeAt(index);
      final prefs = await SharedPreferences.getInstance();
      prefs.setStringList('favTitles', favTitles);
      prefs.setStringList('favImages', favImages);
      notifyListeners();
    }
  }

  bool isFav(String title) => favTitles.contains(title);

  // Future<void> clearFavourites() async {
  //   _favTitles.clear();
  //   _favImages.clear();
  //   final prefs = await SharedPreferences.getInstance();
  //   prefs.remove('favTitles');
  //   prefs.remove('favImages');
  //   notifyListeners();
  }

  // -------------------- COFFEE DETAILS PAGE --------------------
  void openCoffeeDetails(BuildContext context, CoffeeDetails coffee) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => HotCoffeeInformationPage(
          path: coffee.imagePath ?? '',
          name: coffee.coffeeName ?? '',
        ),
      ),
    );


  }



import 'package:course_project/presentation/screens/home_screen.dart';
import 'package:course_project/presentation/screens/profile_screen.dart';
import 'package:course_project/presentation/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class BottomNavScreenScreen extends StatefulWidget {
  const BottomNavScreenScreen({super.key});

  @override
  State<BottomNavScreenScreen> createState() => _BottomNavScreenScreenState();
}

class _BottomNavScreenScreenState extends State<BottomNavScreenScreen> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _screens = <Widget>[
    HomeScreen(),
    SettingScreen(),
    ProfileScreen(),
    ProfileScreen(),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final advancedDrawerController = AdvancedDrawerController();
    void handleMenuButtonPressed() {
      // NOTICE: Manage Advanced Drawer state through the Controller.
      // _advancedDrawerController.value = AdvancedDrawerValue.visible();
      advancedDrawerController.showDrawer();
    }

    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.red, Colors.blue, Colors.yellow],
          ),
        ),
      ),
      controller: advancedDrawerController,
      animationCurve: Curves.easeInOutCubicEmphasized,
      animationDuration: const Duration(seconds: 1),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: SafeArea(
        child: ListTileTheme(
          textColor: Colors.white,
          iconColor: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 128.0,
                height: 128.0,
                margin: const EdgeInsets.only(
                  top: 24.0,
                  bottom: 64.0,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  color: Colors.black26,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/flutter_logo.png',
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.home),
                title: const Text('Home'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.account_circle_rounded),
                title: const Text('Profile'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.favorite),
                title: const Text('Favourites'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
              ),
              const Spacer(),
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white54,
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 16.0,
                  ),
                  child: const Text('Terms of Service | Privacy Policy'),
                ),
              ),
            ],
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Home Screen",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          leading: IconButton(
            onPressed: () {
              handleMenuButtonPressed();
            },
            icon: Icon(Icons.menu),
          ),
          backgroundColor: Colors.teal,
          centerTitle: true,
          // leading: const Icon(Icons.settings, color: Colors.white),
          // actions: const [
          //   Icon(Icons.person, color: Colors.white),
          //   Icon(Icons.search, color: Colors.white),
          // ],
        ),
        body: Center(
          child: _screens.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                ),
          ],
          currentIndex: _selectedIndex,
          backgroundColor: Colors.teal,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

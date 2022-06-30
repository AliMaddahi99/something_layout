import 'package:flutter/material.dart';
import 'package:something_layout/screens/contacts.dart';
import 'package:something_layout/screens/dashboard.dart';
import 'package:something_layout/screens/notifications.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  void _onTapChangeIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _screens = [
    Dashboard(),
    Notifications(),
    const Text("Tutorials"),
    const Text("Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white.withAlpha(255),
        notchMargin: 8.0,
        elevation: 20.0,
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white.withAlpha(0),
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              elevation: 0,
              selectedFontSize: 10.0,
              unselectedFontSize: 10.0,
              onTap: _onTapChangeIndex,
              items: const [
                BottomNavigationBarItem(
                  label: "Dashboard",
                  icon: Icon(
                    Icons.dashboard_customize_outlined,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Notification",
                  icon: Icon(
                    Icons.rss_feed,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Tutorials",
                  icon: Icon(
                    Icons.keyboard_command_key,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Profile",
                  icon: Icon(
                    Icons.account_circle_outlined,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Contacts()),
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

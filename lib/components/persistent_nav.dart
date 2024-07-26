import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:tinder_clone/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:tinder_clone/blocs/set_up_data_bloc/setup_data_bloc.dart';
import 'package:tinder_clone/screens/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:tinder_clone/screens/home/views/home_screen.dart';
import 'package:tinder_clone/screens/profile/views/profile_screen.dart';


class PersistentTabScreen extends StatefulWidget {
  const PersistentTabScreen({Key? key}) : super(key: key);

  @override
  State<PersistentTabScreen> createState() => _PersistentTabScreenState();
}

class _PersistentTabScreenState extends State<PersistentTabScreen> {
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  int _currentIndex = 0;
  late Color dynamicColor;

  @override
  void initState() {
    dynamicColor = const Color(0xFFFe3c72); // Initial color
    super.initState();
  }

  final List<Widget> _screens = [
    const HomeScreen(),
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignInBloc(
            userRepository: context.read<AuthenticationBloc>().userRepository,
          ),
        ),
        BlocProvider(
          create: (context) => SetupDataBloc(
            context.read<AuthenticationBloc>().userRepository,
          ),
        ),
      ],
      child: const ProfileScreen(),
    ),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (_currentIndex == 0) {
        dynamicColor = Theme.of(context).colorScheme.primary;
      } else {
        dynamicColor = Colors.grey;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/tinder_logo.png",
              scale: 16,
              color: dynamicColor,
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

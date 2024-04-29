import 'package:facebook_ui/data/data.dart';
import 'package:facebook_ui/screens/home_screen.dart';
import 'package:facebook_ui/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/custom_tab_bar.dart';
import '../widgets/widgets.dart';

class NavScreen extends StatefulWidget {
  NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  final List<IconData> _icons = [
    Icons.home,
    Icons.ondemand_video,
    MdiIcons.accountCircleOutline,
    MdiIcons.accountGroupOutline,
    MdiIcons.bellOutline,
    MdiIcons.menu,
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
        length: _icons.length,
        child: Scaffold(
            appBar: Responsive.isDesktop(context)
                ? PreferredSize(
                    preferredSize: Size(screenSize.width, 100),
                    child: CustomAppBar(
                      currentUser: currentUser,
                      icons: _icons,
                      selectedIndex: _selectedIndex,
                      onTap: (index) => setState(() => _selectedIndex = index),
                    ),
                  )
                : null,
            body: IndexedStack(
              index: _selectedIndex,
              children: _screens,
            ),
            bottomNavigationBar: !Responsive.isDesktop(context)
                ? Container(
                    padding: EdgeInsets.only(bottom: 12.0),
                    color: Colors.white,
                    child: CustomTabBar(
                        icons: _icons,
                        selectedIndex: _selectedIndex,
                        onTap: (index) => setState(() {
                              _selectedIndex = index;
                            })),
                  )
                : const SizedBox.shrink()));
  }
}

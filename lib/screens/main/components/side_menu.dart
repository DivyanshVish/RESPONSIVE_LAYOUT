import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/logo.png'),
            ),
            DrawerList(
              title: 'Dashboard',
              svgSrc: 'assets/icons/menu_dashboard.svg',
              press: (){},
            ),
            DrawerList(
              title: 'Transaction',
              svgSrc: 'assets/icons/menu_tran.svg',
              press: (){},
            ),
            DrawerList(
              title: 'Task',
              svgSrc: 'assets/icons/menu_task.svg',
              press: (){},
            ),
            DrawerList(
              title: 'Documents',
              svgSrc: 'assets/icons/menu_doc.svg',
              press: (){},
            ),
            DrawerList(
              title: 'Store',
              svgSrc: 'assets/icons/menu_store.svg',
              press: (){},
            ),
            DrawerList(
              title: 'Notification',
              svgSrc: 'assets/icons/menu_notification.svg',
              press: (){},
            ),
            DrawerList(
              title: 'Profile',
              svgSrc: 'assets/icons/menu_profile.svg',
              press: (){},
            ),
            DrawerList(
              title: 'Setting',
              svgSrc: 'assets/icons/menu_setting.svg',
              press: (){},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerList extends StatelessWidget {
  const DrawerList({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.press,
  });

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      // horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}

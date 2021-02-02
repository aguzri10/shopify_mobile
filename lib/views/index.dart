import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopify_mobile/styles/asset.dart';
import 'package:shopify_mobile/styles/colors.dart';
import 'package:shopify_mobile/styles/dimen.dart';
import 'package:shopify_mobile/views/widgets/custom_inkwell.dart';

import 'pages/cart/index.dart';
import 'pages/home/index.dart';
import 'pages/notification/index.dart';
import 'pages/profile/index.dart';

class MainNavigation extends StatefulWidget {
  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  final bucket = PageStorageBucket();

  PageController _pageController;

  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(
      key: PageStorageKey('home'),
    ),
    CartPage(
      key: PageStorageKey('cart'),
    ),
    NotificationPage(
      key: PageStorageKey('notification'),
    ),
    ProfilePage(
      key: PageStorageKey('profile'),
    ),
  ];

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    _selectedIndex = 0;
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  void _toHome() async {
    _pageController.jumpToPage(0);
  }

  void _toCart() async {
    _pageController.jumpToPage(1);
  }

  void _toNotif() async {
    _pageController.jumpToPage(2);
  }

  void _toProfile() async {
    _pageController.jumpToPage(3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 60,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _ItemFloatingBar(
                    onTap: _toHome,
                    icon: iconHome,
                    text: 'Beranda',
                    active: _selectedIndex == 0,
                  ),
                  _ItemFloatingBar(
                    onTap: _toCart,
                    icon: iconCart,
                    text: 'Keranjang',
                    active: _selectedIndex == 1,
                  ),
                  _ItemFloatingBar(
                    onTap: _toNotif,
                    icon: iconNotification,
                    text: 'Notifikasi',
                    active: _selectedIndex == 2,
                  ),
                  _ItemFloatingBar(
                    onTap: _toProfile,
                    icon: iconUser,
                    text: 'Profil',
                    active: _selectedIndex == 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemFloatingBar extends StatelessWidget {
  final Function onTap;
  final String icon, text;
  final bool active;

  const _ItemFloatingBar(
      {Key key, this.onTap, this.icon, this.text, this.active = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomInkwell(
      onTap: onTap,
      radius: 32,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              color: active ? primaryColorNormal : grayscale4,
            ),
            hSizedBox4,
            Text(
              text,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: active ? primaryColorNormal : grayscale4,
              ),
            )
          ],
        ),
      ),
    );
  }
}

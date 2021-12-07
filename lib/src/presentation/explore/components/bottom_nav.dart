import 'package:busha/src/common/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      unselectedItemColor: Colors.black,
      selectedItemColor: AppColors.greyPrimary,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.shifting,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset('assets/Union.png'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/wallet.png'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/profile-outline.png'),
          label: '',
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHomeIconPrimary,
      activeIcon: ImageConstant.imgHomeIconPrimary,
      type: BottomBarEnum.Homeiconprimary,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgPaymentIconSecondarycontainer,
      activeIcon: ImageConstant.imgPaymentIconSecondarycontainer,
      type: BottomBarEnum.Paymenticonsecondarycontainer,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgAppointmentIcon,
      activeIcon: ImageConstant.imgAppointmentIcon,
      type: BottomBarEnum.Appointmenticon,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMessageIcon,
      activeIcon: ImageConstant.imgMessageIcon,
      type: BottomBarEnum.Messageicon,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgProfileIcon,
      activeIcon: ImageConstant.imgProfileIcon,
      type: BottomBarEnum.Profileicon,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.v,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray2003d,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -4,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              color: theme.colorScheme.secondaryContainer,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              color: theme.colorScheme.primary,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Homeiconprimary,
  Paymenticonsecondarycontainer,
  Appointmenticon,
  Messageicon,
  Profileicon,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

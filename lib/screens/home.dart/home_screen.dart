import 'package:flutter/material.dart';
import 'package:ui_challenge/screens/home.dart/account_balance.dart';
import 'package:ui_challenge/screens/home.dart/custom_menu_button.dart';
import 'package:ui_challenge/screens/home.dart/greetings.dart';
import 'package:ui_challenge/screens/home.dart/live_account.dart';
import 'package:ui_challenge/utils/theme/app_theme.dart';
import 'package:ui_challenge/utils/theme/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
          canvasColor: const Color(0xff679CCD).withOpacity(0.1),
          textTheme: CustomTextStyle.textTheme,
        ),
        child: const HomeScreenView());
  }
}

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);
  static const assetlocation = 'assets/background_image/background_image.png';
  static const avatar = 'assets/avatar/avatar.png';
  static const social = 'assets/avatar/social.png';
  static const tools = 'assets/avatar/tools.png';

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  int index = 0;
  static const _iconList = [
    'assets/icons/clock.jpg',
    'assets/icons/vps.jpg',
    'assets/icons/key.jpg',
    'assets/icons/leverage.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 380) {
        return Scaffold(
          backgroundColor: const Color(0xff181C2B),
          body: SingleChildScrollView(
            child: SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 1.3,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: backgroundImage(constraints),
                  ),
                  const Positioned(
                    left: 24,
                    top: 60,
                    child: Greetings(),
                  ),
                  const Positioned(
                    top: 130,
                    left: 24,
                    child: AccountBalance(),
                  ),
                  Positioned(
                    top: 330,
                    child: menuArray(constraints, isSmall: true),
                  ),
                  Positioned(
                    top: 470,
                    child: bottomList(constraints),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: customBottomNavigationBar(),
          floatingActionButton: SizedBox(
            height: 48,
            width: 48,
            child: FloatingActionButton(
              backgroundColor: const Color(0xff00BDFF),
              onPressed: () {},
              child: const Icon(
                Icons.add,
                size: 25,
              ),
            ),
          ),
        );
      } else {
        return Scaffold(
          backgroundColor: const Color(0xff181C2B),
          body: SingleChildScrollView(
            child: SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 1.3,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: backgroundImage(constraints),
                  ),
                  const Positioned(
                    left: 24,
                    top: 60,
                    child: Greetings(),
                  ),
                  const Positioned(
                    top: 130,
                    left: 24,
                    child: AccountBalance(),
                  ),
                  Positioned(
                    top: 330,
                    child: menuArray(constraints),
                  ),
                  Positioned(
                    top: 470,
                    child: bottomList(constraints),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: customBottomNavigationBar(),
          floatingActionButton: SizedBox(
            height: 48,
            width: 48,
            child: FloatingActionButton(
              backgroundColor: const Color(0xff00BDFF),
              onPressed: () {},
              child: const Icon(
                Icons.add,
                size: 25,
              ),
            ),
          ),
        );
      }
    });
  }

  Widget backgroundImage(BoxConstraints constraints) {
    return Image.asset(HomeScreenView.assetlocation);
  }

  Widget menuArray(BoxConstraints constraints,
      {bool isSmall = false, double width = 12}) {
    return Container(
      height: 130,
      width: constraints.maxWidth,
      color: const Color(0xff679CCD).withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          children: [
            space(width: 24),
            CustomMenuButton(
                icon: Image.asset(_iconList[0]), title: 'Trading History'),
            space(width: 30),
            CustomMenuButton(
                icon: Image.asset(_iconList[1]), title: 'Request VPS'),
            space(width: 30),
            CustomMenuButton(
                icon: Image.asset(_iconList[2]), title: 'Change Password'),
            space(width: 30),
            CustomMenuButton(
                icon: Image.asset(_iconList[3]), title: 'Change Leverage'),
          ],
        ),
      ),
    );
  }

  Widget customBottomNavigationBar() {
    return SizedBox(
      height: 90,
      child: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: const Color(0xff00BDFF),
        unselectedItemColor: const Color(0xff96A0B5),
        selectedLabelStyle: AppTheme.darkTheme.textTheme.headline4,
        unselectedLabelStyle: AppTheme.darkTheme.textTheme.headline6,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(HomeScreenView.avatar),
                  ),
                ),
              ),
              label: 'Accounts'),
          const BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Social',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            label: 'Tools',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: 'Help',
          ),
        ],
        selectedIconTheme: const IconThemeData(color: Color(0xff00BDFF)),
        currentIndex: index,
        onTap: (int i) => setState(() {
          index = i;
        }),
      ),
    );
  }

  Widget space({double width = 38}) {
    return SizedBox(
      width: width,
    );
  }

  Widget bottomList(BoxConstraints constraints) {
    return Container(
      width: constraints.maxWidth,
      height: constraints.maxHeight,
      color: const Color(0xff679CCD).withOpacity(0.1),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 24),
                child: Text(
                  'Live Accounts',
                  style: Theme.of(context).textTheme.overline,
                ),
              ),
              space(width: 170),
              const Padding(
                padding: EdgeInsets.only(top: 24),
                child: Text(
                  'See All',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff00BDFF),
                      fontFamily: "SF Pro Display"),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 350,
            height: 500,
            child: ListView(
              children: const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: LiveAccount(),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: LiveAccount(),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: LiveAccount(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

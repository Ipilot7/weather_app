import 'package:flutter/material.dart';
import 'package:weather_app/common/components/univer_dialog.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selDrawer = 0;
  PageController pageController = PageController();
  goToPage(int index) {
    pageController.jumpToPage(index);
    setState(() {
      selDrawer = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        showDialog(
            context: context,
            builder: (context) => UniverDialog(
                  gcontext: context,
                  title: 'Вы хотите выйти из приложение?',
                ));
        return true;
      },
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const [Center(child: Text('main page'))],
        ),
      ),
    );
  }
}

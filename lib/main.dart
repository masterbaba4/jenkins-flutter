import 'package:flutter/material.dart';

import 'pages/firstpage.dart';
import 'pages/secondpage.dart';
import 'pages/thirdpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  int selectedTab = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      if (!controller.indexIsChanging) {
        setState(() {
          selectedTab = controller.index;
        });
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  generateBorderRadius(index) {
    if ((index - 1) != selectedTab) {
      return const BorderRadius.only(
          bottomRight: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0));
    } else {
      return BorderRadius.zero;
    }
  }

  getTab(index, child) {
    return Tab(
      child: SizedBox.expand(
        child: Container(
          child: child,
          decoration: BoxDecoration(
              color: (selectedTab != index - 1
                  ? Color.fromARGB(255, 41, 26, 248)
                  : Color.fromARGB(0, 0, 0, 0)),
              borderRadius: generateBorderRadius(index)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Tab ${controller.index + 1}',
            ),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 8, 245, 47),
            elevation: 0,
            bottom: TabBar(
                unselectedLabelColor: Colors.redAccent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.redAccent,
                      Color.fromARGB(255, 255, 233, 64)
                    ]),
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 12, 12, 12)),
                controller: controller,
                tabs: [
                  getTab(
                      1,
                      const Align(
                          alignment: Alignment.center, child: Text("HOME"))),
                  getTab(
                      2,
                      const Align(
                          alignment: Alignment.center, child: Text("CHAT"))),
                  getTab(
                      3,
                      const Align(
                        alignment: Alignment.center,
                        child: Text("DATA"),
                      )),
                ]),
          ),
          body: TabBarView(controller: controller, children: const [
            FirstPage(),
            SecondPage(),
            ThirdPage(),
          ]),
        ));
  }
}

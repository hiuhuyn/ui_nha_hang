import 'package:flutter/material.dart';
import 'package:nha_hang_online/composent/information_widget.dart';
import 'package:nha_hang_online/page/home_page.dart';
import 'package:nha_hang_online/page/information_page.dart';
import 'package:nha_hang_online/page/menu_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color colorItemDrawerSelect = Colors.amber;
  Color colorItemDrawerUnSelect = Colors.white;
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Builder(builder: (context) {
            return Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 250,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/background_app.png"))),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/images/logo27.png",
                                width: 80,
                                height: 80,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  height: 50,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    border: Border.all(
                                        color: Colors.white, width: 2),
                                  ),
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            indexPage = 0;
                                          });
                                        },
                                        child: Text(
                                          "Trang chủ",
                                          style: TextStyle(
                                            color: indexPage == 0
                                                ? colorItemDrawerSelect
                                                : colorItemDrawerUnSelect,
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            indexPage = 1;
                                          });
                                        },
                                        child: Text(
                                          "GIỚI THIỆU",
                                          style: TextStyle(
                                            color: indexPage == 1
                                                ? colorItemDrawerSelect
                                                : colorItemDrawerUnSelect,
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            indexPage = 2;
                                          });
                                        },
                                        child: Text(
                                          "THỰC ĐƠN",
                                          style: TextStyle(
                                            color: indexPage == 2
                                                ? colorItemDrawerSelect
                                                : colorItemDrawerUnSelect,
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            indexPage = 3;
                                          });
                                        },
                                        child: Text(
                                          "ĐẶT BÀN - LIÊN HỆ",
                                          style: TextStyle(
                                            color: indexPage == 3
                                                ? colorItemDrawerSelect
                                                : colorItemDrawerUnSelect,
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            indexPage = 4;
                                          });
                                        },
                                        child: Text(
                                          "TIN TỨC",
                                          style: TextStyle(
                                            color: indexPage == 4
                                                ? colorItemDrawerSelect
                                                : colorItemDrawerUnSelect,
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            indexPage = 5;
                                          });
                                        },
                                        child: Text(
                                          "ƯU ĐÃI",
                                          style: TextStyle(
                                            color: indexPage == 5
                                                ? colorItemDrawerSelect
                                                : colorItemDrawerUnSelect,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    if (indexPage == 0) const HomePage(),
                    if (indexPage == 1) const InformationPage(),
                    if (indexPage == 2) const MenuPage(),
                    Container(
                      height: 8,
                      color: Colors.amber,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(vertical: 20.0),
                    ),
                    const InformationWebWidget(),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.chat_bubble_rounded,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.shopping_cart, color: Colors.white),
                    ),
                  ],
                ),
              ],
            );
          }),
        ),
      ),
    );
  }

  Widget itemDrawer(String title, int id) {
    return ListTile(
      leading: Icon(
        Icons.home,
        color: colorItemDrawerUnSelect,
      ),
      title: Text(
        title,
        style: TextStyle(color: colorItemDrawerUnSelect),
      ),
      onTap: () {},
    );
  }
}

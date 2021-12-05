import 'package:easyauto2/modules/home/home_controller.dart';
import 'package:easyauto2/shared/themes/app_colors.dart';
import 'package:easyauto2/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  final pages = [
    Container(color: Colors.red),
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.brown),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: Container(
          height: 150,
          color: AppColors.primary,
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: ListTile(
                title: Text.rich(TextSpan(
                    text: "Olá, ",
                    style: TextStyles.titleRegular,
                    children: [
                      TextSpan(
                          text: "Fernando",
                          style: TextStyles.titleBoldBackground)
                    ])),
                subtitle: Text(
                  "Seu carro em boas mãos",
                  style: TextStyles.captionShape,
                ),
                trailing: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: pages[controller.currentPage],
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  controller.setPage(0);
                  setState(() {});
                },
                icon: Icon(
                  Icons.home,
                  color: AppColors.primary,
                )),
            IconButton(
                onPressed: () {
                  controller.setPage(1);
                  setState(() {});
                },
                icon: Icon(
                  Icons.person,
                  color: AppColors.body,
                )),
            IconButton(
                onPressed: () {
                  controller.setPage(2);
                  setState(() {});
                },
                icon: Icon(
                  Icons.star,
                  color: AppColors.body,
                )),
            IconButton(
                onPressed: () {
                  controller.setPage(3);
                  setState(() {});
                },
                icon: Icon(
                  Icons.logout_rounded,
                  color: AppColors.body,
                )),
          ],
        ),
      ),
    );
  }
}

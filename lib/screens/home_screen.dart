import 'package:e_draws/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Container(
        child: ListView(
          children: [
            Container(
              //padding: const EdgeInsets.only(left: 20, right: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //Text(
                      //"Good Morning", style: Styles.headLineStyle3,
                      //),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              //fit: BoxFit.none,
                                image: AssetImage(
                                    "assets/images/logo.png"
                                ),
                            ),
                        ),
                      ),
                      const Gap(60),
                      Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                          width: 100,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xFF334f6e)
                          ),
                          child: Text(
                              "REGISTER",
                            style: Styles.headLineStyle5,
                          ),
                        ),
                      ),
                      const Gap(10),
                      Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                          width: 80,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xFF334f6e)
                          ),
                          child: Text(
                            "LOG IN",
                            style: Styles.headLineStyle5,
                          ),
                        ),
                      ),
                      const Gap(15),
                      Container(
                        child: const Icon(Icons.menu_outlined, color: Color(0xFF334f6e),),
                      ),
                    ],
                  ),
                  const Gap(25),
                   /*Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD)
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: Row(
                      children: [
                        Icon(FluentSystemIcons.ic_fluent_search_regular, color: Colors.grey,),
                        Text(
                          "Search",
                          style: Styles.headLineStyle4,

                        ),
                      ],
                    ),
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

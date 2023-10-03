import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:topjoy/controllers/home_view_controller.dart';

class HomeView extends StatelessWidget {
  HomeViewController controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
      init: HomeViewController(),
      builder: (_) {
        return Scaffold(
          body: Container(
            child: Center(
              child: Stack(
                children: [
                  Image.asset(
                    'images/bottlecap_10.png',
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: 300,
                    height: 300,
                    padding: EdgeInsets.all(55),
                    child: Center(
                      child: Text(
                        controller.giveMeMessage(),
                        style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                            color: Color.fromARGB(255, 23, 34, 23)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}

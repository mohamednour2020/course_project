import 'dart:ui';

import 'package:course_project/presentation/components/custom_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          title: "Slogan",
          fontWeight: FontWeight.bold,
          align: TextAlign.start,
          fontSize: 25,
        ),
        elevation: 0,
        backgroundColor: const Color(0xFFC3DAEA),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded))
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFFC3DAEA),
          Color(0xFF69C8E1),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD6E5EF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Image.asset('assets/images/image.png'),
                  ),
                ),
              ),
              const CustomText(
                title:
                    "The world Class Style Adventure Example Adventure Example",
                fontSize: 30,
                fontWeight: FontWeight.w900,
                align: TextAlign.center,
              ),

              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: '-40%',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      CustomText(title: 'example data for View')
                    ],
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [
                              Color(0xFFE76930),
                              Color(0xFFE5A083),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    child: const Center(
                        child: Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

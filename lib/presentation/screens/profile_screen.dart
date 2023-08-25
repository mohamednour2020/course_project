import 'package:course_project/presentation/components/custom_button.dart';
import 'package:course_project/presentation/components/custom_text.dart';
import 'package:course_project/presentation/screens/home_screen.dart';
import 'package:course_project/presentation/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            const CustomText(title: "notifications Screen"),
            CustomButton(
                buttonColor: Colors.red,
                text: 'ok',
                radius: 5,
                onTab: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const SettingScreen()));
                }),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset("name"),
                Column(
                  children: [
                    Text("data"),
                    Text("data"),
                  ],
                )

              ],
            ),
            CustomButton(
              buttonColor: Colors.green,
              text: 'confgoifdhyoi',
              radius: 5,

              onTab: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => const HomeScreen()));
              },
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}

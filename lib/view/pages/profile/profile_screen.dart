import 'package:flutter/material.dart';
import 'widgets/profile_data_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const ProfieDataWidget(),
          Positioned(
            child: Padding(
              padding:
                  EdgeInsets.only(left: 10.0, right: 10, top: size.height / 18),
              child: Container(
                height: size.height / 11,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.only(right: size.width / 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const CircleAvatar(
                          backgroundColor: Color.fromARGB(222, 58, 16, 174),
                          radius: 20,
                          child: Icon(Icons.settings_outlined),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

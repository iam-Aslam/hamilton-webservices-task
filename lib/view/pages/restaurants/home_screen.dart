// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'package:task/utils/colors.dart';
import 'package:task/view/pages/profile/profile_screen.dart';
import 'package:task/view/pages/restaurants/widgets/card_widget.dart';

import 'widgets/view_button_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: size.height / 8,
                decoration: const BoxDecoration(
                  gradient: AppColors.appbarLinearGradient,
                ),
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return const ListCard();
                    },
                    itemCount: 10),
              )
            ],
          ),
          Positioned(
            child: Padding(
              padding:
                  EdgeInsets.only(left: 10.0, right: 10, top: size.height / 18),
              child: Container(
                height: size.height / 11,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 185, 176, 176),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: size.width / 18),
                      child: GestureDetector(
                        onTap: () {
                          showBottomSheet(context);
                        },
                        child: const CircleAvatar(
                          backgroundColor: Color.fromARGB(222, 58, 16, 174),
                          radius: 20,
                          child: Icon(Icons.library_books_rounded),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

showBottomSheet(BuildContext context) {
  var size = MediaQuery.of(context).size;
  double customSheetHeight = size.height * 1; // Adjust the height as needed

  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
    builder: (BuildContext builder) {
      return Container(
        decoration: const BoxDecoration(
            gradient: AppColors.linearGradient,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            )),
        height: customSheetHeight,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                width: size.width / 5,
                child: const Divider(
                  thickness: 3,
                  color: AppColors.kWhite,
                ),
              ),
              SizedBox(
                height: size.height / 50,
              ),
              const ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://imgv3.fotor.com/images/cover-photo-image/a-beautiful-girl-with-gray-hair-and-lucxy-neckless-generated-by-Fotor-AI.jpg'),
                ),
                title: Text(
                  'welcome',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                subtitle: Text(
                  'welcome',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: size.height / 50,
              ),
              SizedBox(
                width: size.width / 1.2,
                child: const Divider(
                  thickness: 2,
                  color: AppColors.kWhite,
                ),
              ),
              SizedBox(
                height: size.height / 80,
              ),
              ViewButtonWidget(
                name: 'View Restaurnts',
                onTap: () => Navigator.of(context).pop(),
              ),
              ViewButtonWidget(
                name: 'View Profile',
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: const ProfileScreen()));
                },
              )
            ],
          ),
        ),
      );
    },
  );
}

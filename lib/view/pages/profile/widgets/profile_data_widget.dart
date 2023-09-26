import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/controller/user_provider.dart';
import 'package:task/utils/colors.dart';

class ProfieDataWidget extends StatelessWidget {
  const ProfieDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Consumer<UserProvider>(
      builder: (context, value, child) {
        if (value.userData == null) {
          value.fetchUserData();
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Column(
            children: [
              Container(
                width: double.infinity,
                height: size.height / 8,
                decoration: const BoxDecoration(
                  gradient: AppColors.appbarLinearGradient,
                ),
              ),
              SizedBox(
                height: size.height / 20,
              ),
              const CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                    'https://spng.pngfind.com/pngs/s/110-1102775_download-empty-profile-hd-png-download.png'),
              ),
              SizedBox(
                height: size.height / 40,
              ),
              Text(
                value.userData!.clientName,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                value.userData!.username,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              SizedBox(
                height: size.height / 60,
              ),
              Text(
                value.userData!.bio ?? 'Bio will be here',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Text(
                value.userData!.bio ?? 'Bio will be here',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              SizedBox(
                height: size.height / 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Followers',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                      Text(
                        value.userData!.followers.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width / 40,
                  ),
                  Column(
                    children: [
                      const Text(
                        'Following',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                      Text(
                        value.userData!.following.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: size.width / 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width / 1.51,
                      height: size.height / 16,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          backgroundColor:
                              const Color.fromARGB(222, 58, 16, 174),
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Follow',
                          style: TextStyle(color: AppColors.kWhite),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width / 60,
                    ),
                    SizedBox(
                      width: size.width / 4,
                      height: size.height / 16,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          backgroundColor: Colors.blueAccent,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Message',
                          style: TextStyle(color: AppColors.kWhite),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task/utils/colors.dart';

class ProfieDataWidget extends StatelessWidget {
  const ProfieDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
              'https://imgv3.fotor.com/images/cover-photo-image/a-beautiful-girl-with-gray-hair-and-lucxy-neckless-generated-by-Fotor-AI.jpg'),
        ),
        SizedBox(
          height: size.height / 40,
        ),
        const Text(
          'John Smith',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const Text(
          '@jsmith',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
        ),
        SizedBox(
          height: size.height / 60,
        ),
        const Text(
          'lorem ipsum dolor sit amet, consectetur',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        const Text(
          'lorem ipsum dolor sit amet, consectetur',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        SizedBox(
          height: size.height / 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Column(
              children: [
                Text(
                  'Followers',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                ),
                Text(
                  '46.7 K',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              width: size.width / 40,
            ),
            const Column(
              children: [
                Text(
                  'Following',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                ),
                Text(
                  '2.7 K',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
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
                    backgroundColor: const Color.fromARGB(222, 58, 16, 174),
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
}

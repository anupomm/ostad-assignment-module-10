import 'package:flutter/material.dart';

class LandscapeLayoutScreen extends StatelessWidget {
  const LandscapeLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: screenSize.width / 6,
            child: CircleAvatar(
              radius: (screenSize.width / 6),
              backgroundImage: const NetworkImage(
                  'https://images.pexels.com/photos/225157/pexels-photo-225157.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SingleChildScrollView(
            child: SizedBox(
              width: (screenSize.width) - (screenSize.width / 3) - 26,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Utpal Shuvro',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Sports Editor at The Daily Prothom Alo, Bangladesh. Prothom Alo is a prominent and widely circulated Bangladeshi daily newspaper',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GridView.count(
                    physics: const ScrollPhysics(),
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    children: [
                      for (int i = 1; i <= 10; i++)
                        Image.network(
                          'https://img.freepik.com/premium-vector/camera-retro-style-foto-vector-illustration_510486-4.jpg?w=740',
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PortraitLayoutScreen extends StatelessWidget {
  const PortraitLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: screenSize.width / 2,
                  child: CircleAvatar(
                    radius: (screenSize.width / 2),
                    backgroundImage: const NetworkImage(
                        'https://images.pexels.com/photos/225157/pexels-photo-225157.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                ),
                const Text(
                  'Utpal Shuvro',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Sports Editor at The Daily Prothom Alo, Bangladesh. Prothom Alo is a prominent and widely circulated Bangladeshi daily newspaper.',
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
                for (int i = 1; i <= 9; i++)
                  Image.network(
                      'https://img.freepik.com/premium-vector/camera-retro-style-foto-vector-illustration_510486-4.jpg?w=740',
                      fit: BoxFit.fill),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

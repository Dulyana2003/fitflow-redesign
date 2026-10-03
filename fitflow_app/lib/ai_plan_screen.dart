import 'package:flutter/material.dart';

class AIPlanScreen extends StatelessWidget {
  const AIPlanScreen({super.key});

  static const green = Color(0xFF4CAF50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9F7),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F9F7),
        elevation: 0,

        title: const Text(
          'Your AI Plan',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(23),

              decoration: BoxDecoration(
                color: green,
                borderRadius: BorderRadius.circular(24),
              ),

              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Icon(
                    Icons.auto_awesome,
                    color: Colors.white,
                    size: 32,
                  ),

                  SizedBox(height: 15),

                  Text(
                    'Your Personalized Plan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    'Created based on your fitness level '
                    'and daily goals.',
                    style: TextStyle(
                      color: Colors.white70,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            const Text(
              'Today',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            planCard(
              Icons.fitness_center,
              'Full Body Strength',
              '20 min',
            ),

            planCard(
              Icons.directions_walk,
              '10 Minute Walk',
              '10 min',
            ),

            const SizedBox(height: 15),

            const Text(
              'Weekly Goal',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),

              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    '4 of 5 workouts completed',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 12),

                  LinearProgressIndicator(
                    value: 0.8,
                    minHeight: 9,
                    backgroundColor: Color(0xFFE1F2E3),
                    valueColor:
                        AlwaysStoppedAnimation<Color>(green),
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Keep going! You are almost there 🔥',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget planCard(
    IconData icon,
    String title,
    String time,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(17),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),

      child: Row(
        children: [
          Container(
            width: 52,
            height: 52,

            decoration: BoxDecoration(
              color: const Color(0xFFE1F2E3),
              borderRadius: BorderRadius.circular(14),
            ),

            child: Icon(
              icon,
              color: green,
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Text(
            time,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
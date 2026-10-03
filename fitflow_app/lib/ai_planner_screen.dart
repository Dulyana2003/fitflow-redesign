import 'package:flutter/material.dart';
import 'ai_plan_screen.dart';

class AIPlannerScreen extends StatelessWidget {
  const AIPlannerScreen({super.key});

  static const green = Color(0xFF4CAF50);

  @override
  Widget build(BuildContext context) {
    final workouts = [
      {
        'title': 'Full Body Strength',
        'time': '20 min',
        'level': 'Beginner',
        'icon': Icons.fitness_center,
      },
      {
        'title': 'Upper Body Focus',
        'time': '25 min',
        'level': 'Intermediate',
        'icon': Icons.accessibility_new,
      },
      {
        'title': 'Core & Abs',
        'time': '15 min',
        'level': 'Beginner',
        'icon': Icons.self_improvement,
      },
      {
        'title': 'Evening Stretch',
        'time': '10 min',
        'level': 'Easy',
        'icon': Icons.sports_gymnastics,
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF7F9F7),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F9F7),
        elevation: 0,

        title: const Text(
          'AI Planner',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.fromLTRB(
          20,
          10,
          20,
          30,
        ),

        children: [

          // AI HEADER
          Container(
            padding: const EdgeInsets.all(22),

            decoration: BoxDecoration(
              color: green,
              borderRadius: BorderRadius.circular(24),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: const [
                Icon(
                  Icons.auto_awesome,
                  color: Colors.white,
                  size: 30,
                ),

                SizedBox(height: 15),

                Text(
                  'Your Personal AI Plan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  'Your plan is adapted to your goals, '
                  'activity and fitness level.',
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
            "Today's Plan",
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          ...workouts.map(
            (workout) => Container(
              margin: const EdgeInsets.only(
                bottom: 12,
              ),

              padding: const EdgeInsets.all(16),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.04),
                    blurRadius: 10,
                  ),
                ],
              ),

              child: Row(
                children: [

                  Container(
                    width: 55,
                    height: 55,

                    decoration: BoxDecoration(
                      color: const Color(0xFFE1F2E3),
                      borderRadius:
                          BorderRadius.circular(15),
                    ),

                    child: Icon(
                      workout['icon'] as IconData,
                      color: green,
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,

                      children: [
                        Text(
                          workout['title'] as String,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),

                        const SizedBox(height: 6),

                        Text(
                          '${workout['time']}  •  '
                          '${workout['level']}',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 10),

          // GENERATE AI PLAN
          SizedBox(
            height: 52,

            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const AIPlanScreen(),
                  ),
                );
              },

              icon: const Icon(
                Icons.auto_awesome,
              ),

              label: const Text(
                'Generate New AI Plan',
              ),

              style: ElevatedButton.styleFrom(
                backgroundColor: green,
                foregroundColor: Colors.white,

                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
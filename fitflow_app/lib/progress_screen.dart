import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  static const green = Color(0xFF4CAF50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9F7),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F9F7),
        elevation: 0,

        title: const Text(
          'Progress',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            // SUMMARY CARD
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(22),

              decoration: BoxDecoration(
                color: green,
                borderRadius: BorderRadius.circular(24),
              ),

              child: Column(
                children: [

                  const Text(
                    'Weekly Progress',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    '80%',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    'Great progress this week! 🔥',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 20),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),

                    child: LinearProgressIndicator(
                      value: 0.8,
                      minHeight: 10,
                      backgroundColor: Colors.white30,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(
                        Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            const Text(
              'This Week',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [

                Expanded(
                  child: progressCard(
                    '4',
                    'Workouts',
                    Icons.fitness_center,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: progressCard(
                    '1,850',
                    'Calories',
                    Icons.local_fire_department,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Row(
              children: [

                Expanded(
                  child: progressCard(
                    '7',
                    'Day Streak',
                    Icons.local_fire_department_outlined,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: progressCard(
                    '12.4',
                    'Km',
                    Icons.directions_run,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 28),

            const Text(
              'Weekly Activity',
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

              child: Column(
                children: [

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround,

                    crossAxisAlignment:
                        CrossAxisAlignment.end,

                    children: [

                      activityBar('Mon', 0.6),
                      activityBar('Tue', 0.85),
                      activityBar('Wed', 0.45),
                      activityBar('Thu', 0.75),
                      activityBar('Fri', 0.95),
                      activityBar('Sat', 0.55),
                      activityBar('Sun', 0.3),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget progressCard(
    String value,
    String label,
    IconData icon,
  ) {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Icon(
            icon,
            color: green,
          ),

          const SizedBox(height: 12),

          Text(
            value,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 3),

          Text(
            label,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  Widget activityBar(
    String day,
    double value,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,

      children: [

        Container(
          width: 25,
          height: 120 * value,

          decoration: BoxDecoration(
            color: green,
            borderRadius: BorderRadius.circular(8),
          ),
        ),

        const SizedBox(height: 8),

        Text(
          day,
          style: const TextStyle(
            fontSize: 11,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
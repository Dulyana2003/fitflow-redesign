import 'package:flutter/material.dart';
import 'workout_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const green = Color(0xFF4CAF50);
  static const lightGreen = Color(0xFFE1F2E3);
  static const background = Color(0xFFF7F9F7);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              // HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: const [
                      Text(
                        'Good Morning 👋',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        'Dulyana',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    width: 50,
                    height: 50,

                    decoration: const BoxDecoration(
                      color: lightGreen,
                      shape: BoxShape.circle,
                    ),

                    child: const Icon(
                      Icons.person,
                      color: green,
                      size: 28,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // AI DAILY FLOW
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(22),

                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF4CAF50),
                      Color(0xFF66BB6A),
                    ],
                  ),

                  borderRadius: BorderRadius.circular(25),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Row(
                      children: const [
                        Icon(
                          Icons.auto_awesome,
                          color: Colors.white,
                        ),

                        SizedBox(width: 8),

                        Text(
                          'AI DAILY FLOW',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),

                    const Text(
                      'Full Body Workout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      '20 min  •  Beginner  •  180 kcal',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),

                    const SizedBox(height: 20),

                    SizedBox(
                      width: double.infinity,

                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const WorkoutDetailsScreen(),
                            ),
                          );
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: green,

                          padding: const EdgeInsets.symmetric(
                            vertical: 14,
                          ),

                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(15),
                          ),
                        ),

                        child: const Text(
                          'Start Workout',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              // TODAY'S PROGRESS
              const Text(
                "Today's Progress",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              Row(
                children: [
                  Expanded(
                    child: statCard(
                      Icons.local_fire_department,
                      '7',
                      'Day Streak',
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: statCard(
                      Icons.fitness_center,
                      '4/5',
                      'Workouts',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: statCard(
                      Icons.local_fire_department_outlined,
                      '420',
                      'Calories',
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: statCard(
                      Icons.water_drop_outlined,
                      '1.8L',
                      'Water',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 28),

              // QUICK ACTIONS
              const Text(
                'Quick Actions',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              Row(
                children: [
                  Expanded(
                    child: quickAction(
                      Icons.fitness_center,
                      'Workout',
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: quickAction(
                      Icons.restaurant,
                      'Add Meal',
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: quickAction(
                      Icons.bar_chart,
                      'Progress',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget statCard(
    IconData icon,
    String value,
    String label,
  ) {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Icon(
            icon,
            color: green,
            size: 25,
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

  Widget quickAction(
    IconData icon,
    String label,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 17,
      ),

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

      child: Column(
        children: [
          Icon(
            icon,
            color: green,
          ),

          const SizedBox(height: 8),

          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
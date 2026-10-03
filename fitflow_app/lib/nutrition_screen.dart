import 'package:flutter/material.dart';
import 'meal_form_screen.dart';

class NutritionScreen extends StatelessWidget {
  const NutritionScreen({super.key});

  static const green = Color(0xFF4CAF50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9F7),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F9F7),
        elevation: 0,

        title: const Text(
          'Nutrition',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const MealFormScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.camera_alt_outlined,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(
          20,
          10,
          20,
          30,
        ),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            // CALORIE SUMMARY
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(22),

              decoration: BoxDecoration(
                color: green,
                borderRadius:
                    BorderRadius.circular(24),
              ),

              child: Column(
                children: [

                  const Text(
                    "Today's Calories",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    '1,400 kcal',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    'of 2,000 kcal goal',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),

                  const SizedBox(height: 18),

                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(10),

                    child: const LinearProgressIndicator(
                      value: 0.70,
                      minHeight: 10,

                      backgroundColor:
                          Colors.white30,

                      valueColor:
                          AlwaysStoppedAnimation<
                              Color>(
                        Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            const Text(
              "Today's Meals",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            mealCard(
              Icons.free_breakfast,
              'Breakfast',
              'Oatmeal + Banana',
              '350 kcal',
            ),

            mealCard(
              Icons.lunch_dining,
              'Lunch',
              'Rice + Chicken + Salad',
              '650 kcal',
            ),

            mealCard(
              Icons.dinner_dining,
              'Dinner',
              'Vegetable Salad',
              '400 kcal',
            ),

            const SizedBox(height: 15),

            // ADD MEAL
            SizedBox(
              width: double.infinity,
              height: 52,

              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const MealFormScreen(),
                    ),
                  );
                },

                icon: const Icon(
                  Icons.add,
                  color: green,
                ),

                label: const Text(
                  'Add Meal',
                  style: TextStyle(
                    color: green,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: green,
                  ),

                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 28),

            const Text(
              'Nutrition Summary',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [

                Expanded(
                  child: nutritionStat(
                    'Protein',
                    '72g',
                    Icons.egg_alt_outlined,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: nutritionStat(
                    'Carbs',
                    '165g',
                    Icons.grain,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: nutritionStat(
                    'Fat',
                    '45g',
                    Icons.water_drop_outlined,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget mealCard(
    IconData icon,
    String meal,
    String food,
    String calories,
  ) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 12,
      ),

      padding: const EdgeInsets.all(17),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(18),
      ),

      child: Row(
        children: [

          Container(
            width: 50,
            height: 50,

            decoration: BoxDecoration(
              color: const Color(0xFFE1F2E3),
              borderRadius:
                  BorderRadius.circular(14),
            ),

            child: Icon(
              icon,
              color: green,
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Text(
                  meal,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  food,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),

          Text(
            calories,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget nutritionStat(
    String title,
    String value,
    IconData icon,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 10,
      ),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(18),
      ),

      child: Column(
        children: [

          Icon(
            icon,
            color: green,
          ),

          const SizedBox(height: 8),

          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),

          const SizedBox(height: 3),

          Text(
            title,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
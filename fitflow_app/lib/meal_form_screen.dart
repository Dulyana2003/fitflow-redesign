import 'package:flutter/material.dart';

class MealFormScreen extends StatefulWidget {
  const MealFormScreen({super.key});

  @override
  State<MealFormScreen> createState() => _MealFormScreenState();
}

class _MealFormScreenState extends State<MealFormScreen> {
  static const green = Color(0xFF4CAF50);

  final foodController = TextEditingController();
  final caloriesController = TextEditingController();

  String selectedMeal = 'Breakfast';

  @override
  void dispose() {
    foodController.dispose();
    caloriesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9F7),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F9F7),
        elevation: 0,

        title: const Text(
          'Add Meal',
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
              padding: const EdgeInsets.all(22),

              decoration: BoxDecoration(
                color: green,
                borderRadius: BorderRadius.circular(24),
              ),

              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Icon(
                    Icons.restaurant,
                    color: Colors.white,
                    size: 32,
                  ),

                  SizedBox(height: 14),

                  Text(
                    'Log your meal',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 6),

                  Text(
                    'Track what you eat to stay on your goal.',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            const Text(
              'Meal Type',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),

            const SizedBox(height: 10),

            DropdownButtonFormField<String>(
              value: selectedMeal,

              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),

              items: const [
                DropdownMenuItem(
                  value: 'Breakfast',
                  child: Text('Breakfast'),
                ),
                DropdownMenuItem(
                  value: 'Lunch',
                  child: Text('Lunch'),
                ),
                DropdownMenuItem(
                  value: 'Dinner',
                  child: Text('Dinner'),
                ),
                DropdownMenuItem(
                  value: 'Snack',
                  child: Text('Snack'),
                ),
              ],

              onChanged: (value) {
                setState(() {
                  selectedMeal = value!;
                });
              },
            ),

            const SizedBox(height: 20),

            const Text(
              'Food',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: foodController,

              decoration: InputDecoration(
                hintText: 'e.g. Rice and chicken',
                filled: true,
                fillColor: Colors.white,

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Calories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: caloriesController,

              keyboardType: TextInputType.number,

              decoration: InputDecoration(
                hintText: 'e.g. 450',
                suffixText: 'kcal',

                filled: true,
                fillColor: Colors.white,

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // CAMERA PLACEHOLDER
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),

              child: Column(
                children: [
                  const Icon(
                    Icons.camera_alt_outlined,
                    color: green,
                    size: 35,
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Use Camera to Identify Food',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    'AI food recognition',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),

                  const SizedBox(height: 12),

                  OutlinedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Camera feature coming soon 📷',
                          ),
                        ),
                      );
                    },
                    child: const Text('Open Camera'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 52,

              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Meal added successfully! 🍎',
                      ),
                    ),
                  );

                  Navigator.pop(context);
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: green,
                  foregroundColor: Colors.white,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

                child: const Text(
                  'Save Meal',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
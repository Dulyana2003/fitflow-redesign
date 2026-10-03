import 'package:flutter/material.dart';
import 'challenge_details_screen.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  static const green = Color(0xFF4CAF50);

  @override
  Widget build(BuildContext context) {
    final posts = [
      {
        'name': 'Alex Rivera',
        'time': '2 hours ago',
        'text':
            'Just completed my morning workout! 💪',
        'likes': '24',
      },
      {
        'name': 'Sarah Wilson',
        'time': '4 hours ago',
        'text':
            'Day 7 of my fitness challenge! 🔥',
        'likes': '31',
      },
      {
        'name': 'Mike Johnson',
        'time': '6 hours ago',
        'text':
            'Reached 10,000 steps today! 🎉',
        'likes': '18',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF7F9F7),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F9F7),
        elevation: 0,

        title: const Text(
          'Community',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.fromLTRB(
          20,
          10,
          20,
          30,
        ),

        children: [

          // CHALLENGE CARD
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const ChallengeDetailsScreen(),
                ),
              );
            },

            child: Container(
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: green,
                borderRadius:
                    BorderRadius.circular(23),
              ),

              child: Row(
                children: [

                  Container(
                    width: 55,
                    height: 55,

                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius:
                          BorderRadius.circular(15),
                    ),

                    child: const Icon(
                      Icons.emoji_events,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),

                  const SizedBox(width: 15),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,

                      children: [

                        Text(
                          '7-Day Fitness Challenge',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 5),

                        Text(
                          '1,245 people joined',
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 16,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            'Community Feed',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          // POSTS
          ...posts.map(
            (post) => Container(
              margin: const EdgeInsets.only(
                bottom: 15,
              ),

              padding: const EdgeInsets.all(18),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(20),
              ),

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  Row(
                    children: [

                      const CircleAvatar(
                        backgroundColor:
                            Color(0xFFE1F2E3),

                        child: Icon(
                          Icons.person,
                          color: green,
                        ),
                      ),

                      const SizedBox(width: 12),

                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,

                          children: [

                            Text(
                              post['name']!,
                              style:
                                  const TextStyle(
                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 3),

                            Text(
                              post['time']!,
                              style:
                                  const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                      ),
                    ],
                  ),

                  const SizedBox(height: 18),

                  Text(
                    post['text']!,
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.4,
                    ),
                  ),

                  const SizedBox(height: 18),

                  Row(
                    children: [

                      const Icon(
                        Icons.favorite_border,
                        size: 20,
                        color: Colors.grey,
                      ),

                      const SizedBox(width: 6),

                      Text(
                        post['likes']!,
                        style:
                            const TextStyle(
                          color: Colors.grey,
                        ),
                      ),

                      const SizedBox(width: 25),

                      const Icon(
                        Icons.chat_bubble_outline,
                        size: 19,
                        color: Colors.grey,
                      ),

                      const SizedBox(width: 6),

                      const Text(
                        'Comment',
                        style:
                            TextStyle(
                          color: Colors.grey,
                        ),
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
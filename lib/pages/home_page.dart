import 'package:flutter/material.dart';
import 'package:mentalhealth_app/util/emoticon_face.dart';
import 'package:mentalhealth_app/util/exercise_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Hi, Tuan!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '19 July 2023 ',
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.all(12),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How to you feel?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😩',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Bad',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😀',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Fine',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😄',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Well',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '🥳',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Excellent',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: Container(
                color: Colors.grey[200],
                padding: EdgeInsets.all(25),
                child: Center(
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: ListView(
                          children: const [
                            ExerciseTile(
                              icon: Icons.favorite,
                              exerciseName: "Speaking Skills",
                              numberOfExercise: 16,
                              color: Colors.orange,
                            ),
                            ExerciseTile(
                              icon: Icons.person,
                              exerciseName: "Reading Skills",
                              numberOfExercise: 12,
                              color: Colors.green,
                            ),
                            ExerciseTile(
                              icon: Icons.star,
                              exerciseName: "Writing Skills",
                              numberOfExercise: 20,
                              color: Colors.red,
                            ),
                            ExerciseTile(
                              icon: Icons.star,
                              exerciseName: "Listening Skills",
                              numberOfExercise: 20,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

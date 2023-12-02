import 'package:flutter/material.dart';
import 'package:health_ui/util/emoticon_face.dart';
import 'package:health_ui/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  // Greeting row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // Hi vichet
                            'Hi, Vichet!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '02 Dec, 2023',
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          ),
                        ],
                      ),

                      // Notification
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  // Search bar
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 5),
                        Text('Search...')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  // How do you feel?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  // Emoticon Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // bad
                      Column(
                        children: [
                          EmoticonFace(
                            EmoticonText: '😀',
                          ),
                          Text(
                            'Good',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      // fine
                      Column(
                        children: [
                          EmoticonFace(
                            EmoticonText: '😀',
                          ),
                          Text(
                            'Not bad',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      // well
                      Column(
                        children: [
                          EmoticonFace(
                            EmoticonText: '😀',
                          ),
                          Text(
                            'Bad',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      // excellent
                      Column(
                        children: [
                          EmoticonFace(
                            EmoticonText: '😀',
                          ),
                          Text(
                            'Bored',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            // Expended
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [
                        // Exercise heading
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Exercise',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        // ListView of exercise
                        Expanded(
                          child: ListView(
                            children: [
                              ExerciseTile(
                                icon: Icons.favorite,
                                exerciseName: 'Speaking Skills',
                                numberOfExerices: '10',
                                color: Colors.orange,
                              ),
                              ExerciseTile(
                                icon: Icons.book,
                                exerciseName: 'Booking',
                                numberOfExerices: '10',
                                color: Colors.red,
                              ),
                              ExerciseTile(
                                icon: Icons.person,
                                exerciseName: 'Meditation',
                                numberOfExerices: '05',
                                color: Colors.pink,
                              ),
                              ExerciseTile(
                                icon: Icons.shop,
                                exerciseName: 'Go shopping',
                                numberOfExerices: '30',
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

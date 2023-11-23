import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> states = [
    {
      'state': 'Confirm',
      'color': Color(0xFF4252FF),
    },
    {
      'state': 'Completed',
      'color': Color(0xFF03DE73),
    },
    {
      'state': 'Cancelled',
      'color': Color(0xFFC8C7CC),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'History',
                    style: TextStyle(
                      color: Color(0xFFF9F9F9),
                      fontFamily: 'Mulish',
                      fontSize: 24,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w800,
                      height: 1,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90, left: 5, right: 5),
              child: Container(
                width: 338,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9999),
                  border: Border.all(color: Color(0xFF3E3E3E), width: 1),
                  color: Color(0xFF161616),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    prefixIcon: Icon(Icons.search,
                        color: Color.fromARGB(255, 158, 158, 158)),
                  ),
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 5, right: 5),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: states.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Color.fromARGB(255, 22, 22, 22),
                    child: SizedBox(
                      width: 343,
                      height: 149,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 35),
                            child: Text(
                              '7958 Swift Village',
                              style: TextStyle(
                                color: states[index]['color'],
                                fontFamily: 'Mulish',
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 5,
                              top: 50,
                            ),
                            child: Icon(Icons.location_on,
                                color: Color(0xFFF52D56)),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 12, left: 8),
                              child: Icon(
                                Icons.circle_outlined,
                                color: Color(0xFF4CE5B1),
                                size: 15.0,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top: 50),
                            child: Text(
                              '105 William St, Chicago, US',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Mulish',
                                fontSize: 17,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 120, left: 5),
                            child:
                                Icon(Icons.attach_money, color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 120, left: 27),
                            child: Text(
                              '\$75.00',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Mulish',
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 120, left: 210),
                            child: Text(
                              states[index]['state'],
                              style: TextStyle(
                                color: states[index]['color'],
                                fontFamily: 'Mulish',
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 120, left: 280),
                            child: Icon(Icons.arrow_forward_ios_rounded,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

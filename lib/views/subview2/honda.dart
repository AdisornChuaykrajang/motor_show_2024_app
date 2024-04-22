// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Honda extends StatefulWidget {
  const Honda({super.key});

  @override
  State<Honda> createState() => _HondaState();
}

class _HondaState extends State<Honda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HONDA',
        ),
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
              child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'รถเก๋ง',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/honda_car1.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                ),
                                Text('civic'),
                                Text('2,000,000 บาท')
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Text(
                    'รถ SUV & PPV',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/honda_car2.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                ),
                                Text('WR-V'),
                                Text('869,000 บาท')
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Text(
                    ' รถกระบะ',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/honda_car3.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                ),
                                Text('New Ridgeline'),
                                Text('1,391,000 บาท')
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Text(
                    ' รถ Van',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/honda_car4.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                ),
                                Text('Odyssey'),
                                Text('1,539,000 บาท')
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Toyota extends StatefulWidget {
  const Toyota({super.key});

  @override
  State<Toyota> createState() => _ToyotaState();
}

class _ToyotaState extends State<Toyota> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TOYOTA',
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
                                  'assets/images/toyota_car1.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                ),
                                Text('GR Supra'),
                                Text('5,199,000 บาท')
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
                                  'assets/images/toyota_car2.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                ),
                                Text('bZ4X  '),
                                Text('1,836,000 บาท')
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
                                  'assets/images/toyota_car3.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                ),
                                Text('HR GR Sport  '),
                                Text('934,000 บาท')
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
                                  'assets/images/toyota_car4.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                ),
                                Text('Commuter'),
                                Text('1,339,000 บาท')
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

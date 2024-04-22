// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, sort_child_properties_last, prefer_is_empty, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class Cal extends StatefulWidget {
  const Cal({super.key});

  @override
  State<Cal> createState() => _CalState();
}

class _CalState extends State<Cal> {
  int down = 1;
  String _downDurationSelected = '12 งวด (1ปี)';
  final formatter = NumberFormat('#,###');

  TextEditingController priceCtrl = TextEditingController(text: '0');
  TextEditingController interestCtrl = TextEditingController(text: '0');

  List<String> _downDuration = [
    '12 งวด (1ปี)',
    '24 งวด (2ปี)',
    '36 งวด (3ปี)',
    '48 งวด (4ปี)',
    '60 งวด (5ปี)',
    '72 งวด (6ปี)',
  ];

  showWarningMessage(context, msg) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'คำเตือน',
          textAlign: TextAlign.center,
        ),
        content: Text(
          msg,
          textAlign: TextAlign.center,
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'ตกลง',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'คำนวณค่างวดรถ',
        ),
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(50),
            child: Column(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/cal.png',
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    Text('ราคารถ (บาท)'),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                TextField(
                  controller: priceCtrl,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    Text('เงินดาวน์ (%)'),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                Row(
                  children: [
                    Radio(
                      activeColor: Colors.black,
                      value: 1,
                      groupValue: down,
                      onChanged: (paramValue) {
                        setState(() {
                          down = paramValue!;
                        });
                      },
                    ),
                    Text(
                      '10%',
                    ),
                    Radio(
                      activeColor: Colors.black,
                      value: 2,
                      groupValue: down,
                      onChanged: (paramValue) {
                        setState(() {
                          down = paramValue!;
                        });
                      },
                    ),
                    Text(
                      '20%',
                    ),
                    Radio(
                      activeColor: Colors.black,
                      value: 3,
                      groupValue: down,
                      onChanged: (paramValue) {
                        setState(() {
                          down = paramValue!;
                        });
                      },
                    ),
                    Text(
                      '25%',
                    ),
                    Radio(
                      activeColor: Colors.black,
                      value: 4,
                      groupValue: down,
                      onChanged: (paramValue) {
                        setState(() {
                          down = paramValue!;
                        });
                      },
                    ),
                    Text(
                      '30%',
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    Text('จำนวนปีที่ผ่อน'),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                DropdownButton(
                  value: _downDurationSelected,
                  isExpanded: true,
                  onChanged: (paramValue) {
                    setState(() {
                      _downDurationSelected = paramValue!;
                    });
                  },
                  items: _downDuration
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Center(
                              child: Text(
                                e,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.033,
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    Text('ดอกเบี้ย (%) ต่อปี'),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                TextField(
                  controller: interestCtrl,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(
                        RegExp(r'^([1-9]|[1-9][0-9]|100)$')),
                  ],
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (priceCtrl.text == '0' ||
                        priceCtrl.text.trim().length == 0) {
                      showWarningMessage(context, 'ป้อนราคารถ (บาท) ด้วย');
                      return;
                    } else if (interestCtrl.text == '0' ||
                        interestCtrl.text.trim().length == 0) {
                      showWarningMessage(context, 'ป้อนดอกเบี้ย(%) ต่อปีด้วย');
                      return;
                    }
                    double downPay = 0;
                    double finance = 0;
                    double interest = 0;
                    double totalInterest = 0;
                    double downPermonth = 0;
                    int perDown = 0;
                    int priceNum = int.parse(priceCtrl.text);
                    int interestNum = int.parse(interestCtrl.text);
                    int duration = 0;

                    if (down == 1) {
                      downPay = priceNum * 0.1;
                      perDown = 10;
                    } else if (down == 2) {
                      downPay = priceNum * 0.2;
                      perDown = 20;
                    } else if (down == 3) {
                      downPay = priceNum * 0.25;
                      perDown = 25;
                    } else {
                      downPay = priceNum * 0.3;
                      perDown = 30;
                    }

                    finance = priceNum - downPay;
                    interest = finance * (interestNum / 100);

                    if (_downDurationSelected == '12 งวด (1ปี)') {
                      totalInterest = interest * 1;
                      downPermonth = (finance + totalInterest) / (1 * 12);
                      duration = 1 * 12;
                    } else if (_downDurationSelected == '24 งวด (2ปี)') {
                      totalInterest = interest * 2;
                      downPermonth = (finance + totalInterest) / (2 * 12);
                      duration = 2 * 12;
                    } else if (_downDurationSelected == '36 งวด (3ปี') {
                      totalInterest = interest * 3;
                      downPermonth = (finance + totalInterest) / (3 * 12);
                      duration = 3 * 12;
                    } else if (_downDurationSelected == '48 งวด (4ปี)') {
                      totalInterest = interest * 4;
                      downPermonth = (finance + totalInterest) / (4 * 12);
                      duration = 4 * 12;
                    } else if (_downDurationSelected == '60 งวด (5ปี)') {
                      totalInterest = interest * 5;
                      downPermonth = (finance + totalInterest) / (5 * 12);
                      duration = 5 * 12;
                    } else if (_downDurationSelected == '72 งวด (6ปี)') {
                      totalInterest = interest * 6;
                      downPermonth = (finance + totalInterest) / (6 * 12);
                      duration = 6 * 12;
                    }
                    final priceFormatted = formatter.format(priceNum);
                    final downPayFormatted = formatter.format(downPay);
                    final downPerMonthFormatted =
                        formatter.format(downPermonth);

                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (contex) => AlertDialog(
                              title: Text(
                                'ยอดผ่อนรถต่อเดือน',
                                textAlign: TextAlign.center,
                              ),
                              content: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                child: Center(
                                  child: Column(
                                    children: [
                                      Text(
                                          'รถราคา $priceFormatted บาท'),
                                      Text(
                                          'ดาวน์ ${perDown.toStringAsFixed(0)}% เป็นเงิน $downPayFormatted บาท'),
                                      Text(
                                          'จำนวนเดือนผ่อน ${duration.toStringAsFixed(0)} เดือน'),
                                      Text(
                                          'ค่าผ่อนต่อเดือนเป็นเงิน $downPerMonthFormatted บาท'),
                                    ],
                                  ),
                                ),
                              ),
                              actionsAlignment: MainAxisAlignment.center,
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'ตกลง',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ],
                            ));
                  },
                  child: Text(
                    'คำนวณค่างวดรถ',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(400, 50)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.grey,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

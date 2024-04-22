// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:motor_show_2024_app/views/home_ui.dart';

class IntroductioScreenUI extends StatefulWidget {
  const IntroductioScreenUI({super.key});

  @override
  State<IntroductioScreenUI> createState() => _IntroductioScreenUIState();
}

class _IntroductioScreenUIState extends State<IntroductioScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.purple[100],
      body: Flexible(
        child: IntroductionScreen(
          autoScrollDuration: 2000,
          infiniteAutoScroll: true,
          scrollPhysics: BouncingScrollPhysics(),
          pages: [
            PageViewModel(
              titleWidget: Text(
                'TOYOTA',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              image: Image.asset(
                'assets/images/toyota_car1.png',
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              bodyWidget: Column(
                children: [
                  Text(
                    'GR Supra',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    'GR Supra สายพันธุ์สปอร์ตระดับตำนาน ที่พร้อมพาคุณทะยานสู่ความเร้าใจกับที่สุดของสมรรถนะจากสนามแข่งระดับโลกและสไตล์อันเป็นเอกลักษณ์ ดุดัน ทรงพลังทุกการขับเคลื่อน ผลงานจาก Toyota Gazoo Racing เพื่อให้คุณโลดแล่นไปบนถนนทุกสายอย่างไร้ขีดจำกัด',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
            PageViewModel(
              titleWidget: Text(
                'HONDA',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              image: Image.asset(
                'assets/images/honda_car1.png',
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              bodyWidget: Column(
                children: [
                  Text(
                    'ACCORD',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    'ตัวตนอีกระดับ...สัมผัสได้ตั้งแต่แรกเห็น กับเส้นสายรอบคันที่มอบอารมณ์สปอร์ตพรีเมียมในทุกมิติ สะกดทุกสายตาด้วยกระจังหน้าดีไซน์ใหม่สไตล์สปอร์ต เสริมความหรูหราอีกขั้นด้วยวัสดุสีดำ Piano Black ลงตัวเป็นหนึ่งเดียวกับไฟหน้าและไฟท้ายแบบ LED พร้อมไฟเลี้ยวแบบ LED Sequential ที่เผยให้ทุกองศาโดดเด่นเกินใคร',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
            PageViewModel(
              titleWidget: Text(
                'MITSUBISHI',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              image: Image.asset(
                'assets/images/mitsubishi_car1.png',
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              bodyWidget: Column(
                children: [
                  Text(
                    'ATTRAGE',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    'กระจังหน้าดีไซน์ใหม่ Advanced Dynamic Shield Design ตกแต่งอย่างมีสไตล์ด้วยลายเส้นสีแดง เฉพาะรุ่น SMART',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
            PageViewModel(
              titleWidget: Text(
                'MAZDA',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              image: Image.asset(
                'assets/images/mazda_car1.png',
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              bodyWidget: Column(
                children: [
                  Text(
                    'MAZDA6 20TH ANNIVERSARY EDITION',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    'ความลงตัวของยนตรกรรม ผสมผสานระหว่างความสปอร์ตและความหรูหราสง่างาม พิถีพิถันในการออกแบบทุกรายละเอียดภายใต้แนวคิด Kodo: Soul of Motion ด้วยคอนเซ็ปต์ "Less is More" ที่เน้นความเรียบง่ายแต่งดงาม ถ่ายทอดเอกลักษณ์เฉพาะตัวและความงาม ที่อยู่เหนือกาลเวลา',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
          ],
          showSkipButton: true,
          skip: Text(
            'ข้าม',
            style: GoogleFonts.kanit(
              color: Colors.black,
            ),
          ),
          skipOrBackFlex: 0,
          dotsContainerDecorator: BoxDecoration(),
          onSkip: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomeUI())),
          dotsDecorator: DotsDecorator(
              size: Size(
                MediaQuery.of(context).size.width * 0.01,
                MediaQuery.of(context).size.width * 0.01,
              ),
              color: Colors.grey,
              activeSize: Size(
                MediaQuery.of(context).size.width * 0.02,
                MediaQuery.of(context).size.width * 0.01,
              ),
              activeColor: Colors.black,
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ))),
          next: Icon(
            Icons.arrow_forward,
            color: Colors.black,
          ),
          nextFlex: 0,
          done: Text(
            'เริ่มต้น',
            style: GoogleFonts.kanit(color: Colors.black),
          ),
          onDone: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomeUI())),
        ),
      ),
    );
  }
}

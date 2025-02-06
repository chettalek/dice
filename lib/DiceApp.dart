// import 'dart:math';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'ทอยลูกเต๋า',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: DiceRoller(),
//     );
//   }
// }

// class DiceRoller extends StatefulWidget {
//   @override
//   _DiceRollerState createState() => _DiceRollerState();
// }

// class _DiceRollerState extends State<DiceRoller> {
//   int roll1 = 0;
//   int roll2 = 0;
//   int roll3 = 0;
//   int total = 0;
//   String message = '';
//   int step = 1; // ติดตามว่าเรากำลังทอยรอบที่เท่าไหร่

//   Random random = Random();

//   // ฟังก์ชันในการทอยลูกเต๋ารอบแรก
//   void rollFirst() {
//     roll1 = random.nextInt(6) + 1;
//     setState(() {
//       step = 2; // เปลี่ยนไปทอยรอบที่ 2
//     });
//   }

//   // ฟังก์ชันในการทอยลูกเต๋ารอบที่สอง
//   void rollSecond() {
//     roll2 = random.nextInt(6) + 1;
//     while (roll1 + roll2 > 9) {
//       roll2 = random.nextInt(6) + 1;
//     }
//     setState(() {
//       step = 3; // เปลี่ยนไปทอยรอบที่ 3
//     });
//   }

//   // ฟังก์ชันในการทอยลูกเต๋ารอบที่สาม
//   void rollThird() {
//     roll3 = random.nextInt(6) + 1;
//     while (roll1 + roll2 + roll3 > 10) {
//       roll3 = random.nextInt(6) + 1;
//     }

//     // คำนวณผลรวม
//     total = roll1 + roll2 + roll3;

//     // เช็คผลและแสดงข้อความ
//     if (total <= 10) {
//       message = 'คุณชนะ! ผลรวม: $total';
//     } else {
//       message = 'ผลรวมเกิน 10! ผลรวม: $total';
//     }

//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ทอยลูกเต๋า 3 รอบ'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 'ทอยลูกเต๋า 3 รอบ\nและผลรวมไม่เกิน 10',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'รอบที่ 1: $roll1',
//                 style: TextStyle(fontSize: 24),
//               ),
//               Text(
//                 'รอบที่ 2: $roll2',
//                 style: TextStyle(fontSize: 24),
//               ),
//               Text(
//                 'รอบที่ 3: $roll3',
//                 style: TextStyle(fontSize: 24),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'ผลรวม: $total',
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 message,
//                 style: TextStyle(fontSize: 20, color: Colors.green),
//               ),
//               SizedBox(height: 40),
//               // ปุ่มทอยรอบแรก
//               step == 1
//                   ? ElevatedButton(
//                       onPressed: rollFirst,
//                       child: Text(
//                         'ทอยรอบที่ 1',
//                         style: TextStyle(fontSize: 18),
//                       ),
//                     )
//                   : Container(),

//               // ปุ่มทอยรอบที่ 2
//               step == 2
//                   ? ElevatedButton(
//                       onPressed: rollSecond,
//                       child: Text(
//                         'ทอยรอบที่ 2',
//                         style: TextStyle(fontSize: 18),
//                       ),
//                     )
//                   : Container(),

//               // ปุ่มทอยรอบที่ 3
//               step == 3
//                   ? ElevatedButton(
//                       onPressed: rollThird,
//                       child: Text(
//                         'ทอยรอบที่ 3',
//                         style: TextStyle(fontSize: 18),
//                       ),
//                     )
//                   : Container(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ทอยลูกเต๋า',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DiceRoller(),
    );
  }
}

class DiceRoller extends StatefulWidget {
  @override
  _DiceRollerState createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int roll1 = 0;
  int roll2 = 0;
  int roll3 = 0;
  int total = 0;
  int step = 1; // stepRoll

  Random random = Random();

  void rollFirst() {
    roll1 = random.nextInt(6) + 1;
    setState(() {
      step = 2;
    });
  }

  void rollSecond() {
    roll2 = random.nextInt(6) + 1;
    while (roll1 + roll2 > 9) {
      roll2 = random.nextInt(6) + 1;
    }
    setState(() {
      step = 3;
    });
  }

  void rollThird() {
    roll3 = random.nextInt(6) + 1;
    while (roll1 + roll2 + roll3 > 10) {
      roll3 = random.nextInt(6) + 1;
    }

    total = roll1 + roll2 + roll3;

    setState(() {
      step = 4;
    });
  }

  void resetGame() {
    setState(() {
      roll1 = 0;
      roll2 = 0;
      roll3 = 0;
      total = 0;
      step = 1; // reset to rollFirst
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DiceRoll'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Roll 1:   $roll1',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                'Roll 2:   $roll2',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                'Roll 3:   $roll3',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              Text(
                'Total:   $total',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              step == 1
                  ? ElevatedButton(
                      onPressed: rollFirst,
                      child: Text(
                        'Roll 1',
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  : Container(),
              step == 2
                  ? ElevatedButton(
                      onPressed: rollSecond,
                      child: Text(
                        'Roll 2',
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  : Container(),
              step == 3
                  ? ElevatedButton(
                      onPressed: rollThird,
                      child: Text(
                        'Roll 3',
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  : Container(),
              step == 4
                  ? ElevatedButton(
                      onPressed: resetGame,
                      child: Text(
                        'Reset',
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.red, // เปลี่ยนสีเป็นแดงเพื่อเน้นปุ่มรีเซ็ต
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

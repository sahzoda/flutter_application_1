import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_1/data/localData/QuetionLocalData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  List<Icon> icons = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text( "Тапшырма 07"),
         ),
         body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(questionsLocalData.suroonuAlipKel().toString(),
            style: TextStyle(color: Colors.white,fontSize: 40),
            ),
            InkWell(
              onTap: () {
             koldonuuchunJoobu(true);
              },
              child: Container(
                width: 400,
              color: const Color(0xff4CB050),
              child: const Text(
                'Туура',
                style: TextStyle(color: Colors.white, fontSize: 40),
                textAlign: TextAlign.center,
              ),
              ),
            ),
            const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              koldonuuchunJoobu(false);
            },
            child: Container(
              width: 400,
              color: Colors.red,
              child: const Text(
                'Ката',
                style: TextStyle(color: Colors.white, fontSize: 40),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Row(
            children: icons,
          )
            ],
         ),
    );
  }
  void koldonuuchunJoobu(bool userdinJoobu) {
    if (userdinJoobu == questionsLocalData.jooptuAlipKel()) {
      icons.add(
        const Icon(
          Icons.check,
          color: Colors.green,
          size: 50,
        ),
      );
    } else {
      icons.add(
        const Icon(
          Icons.cancel,
          color: Colors.red,
          size: 50,
        ),
      );
    }
    questionsLocalData.suroonuOtkoz();
    questionsLocalData.suroonuAlipKel();

    setState(() {});
  }
}

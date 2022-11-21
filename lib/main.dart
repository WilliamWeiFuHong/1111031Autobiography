import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('C109151168 洪濰阜 期中自傳作業',),centerTitle: true,),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: '個人背景',),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm),label: '學習歷程',),
            BottomNavigationBarItem(icon: Icon(Icons.business), label: '特殊表現',),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: '教育程度',),
          ],
          onTap: (index) { setState(() {
            _currentindex=index;
            if (index!=0) {
              player.stop();
            }
          });
          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='我目前就讀高雄科技大學資訊工程系。'
      '父親在台電處理外線裝修的職務。'
      '母親曾任職於遠傳電信旗下的全虹企業現為家庭主婦。'
      '姊姊目前在亞太電信就職。'
      '我從小就很喜歡幫別人修東西，順帶理解其順利運作的原理，'
      '因為爸爸和媽媽分別是機械科與資訊科出身，所以我對陌生結構的適應很快。'
      '小時候第一次碰到電腦就被其無限的可能性吸引，因此高中選擇就讀資訊科；大學選擇就讀資工系。';

  @override
  Widget build(BuildContext context) {

    player.play(AssetSource("Free_Test_Data_1MB_MP3.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("個人背景",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.amberAccent,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s1,
              style: TextStyle(fontSize: 20),),
          ),
          Container(
            color: Colors.blueAccent,
            child: Image.asset('images/image1.png'),
            height: 200,
            width: 200,
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/image2.png'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/image3.png'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("高中時期")],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    Text('1. 擔任多項股長及幹部'),
                    Text('2. 學習多種程式語言'),
                    Text('3. 考取證照'),
                    Text('4. 利用閒暇時間實作聊天機器人'),
                  ],
                ),
              ),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大一時期")],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    Text('1. 加入資訊研習社'),
                    Text('2. 學習組合語言'),
                    Text('3. 將聊天機器人完成為專題'),
                  ],
                ),
              ),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大二時期")],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    Text('1. 加入實驗室'),
                    Text('2. 學習類神經網路'),
                    Text('3. 打穩多種程式語言基礎'),
                  ],
                ),
              ),
            ],),
        ],
      ),);
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("高中時期")],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 400,
                child: ListView(
                  children: [
                    Text('校內技藝競賽榮獲第二名'),
                    Text('國語朗讀比賽榮獲第二名'),
                    Text('英語說故事比賽榮獲第三名'),
                    Text('代表學校參加第49屆全國技能競賽-機器人組佳作'),
                  ],
                ),
              ),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大一時期")],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 400,
                child: ListView(
                  children: [
                    Text('系學會主辦的黑克松第一名'),
                  ],
                ),
              ),
            ],),
        ],
      ),);
  }
}

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child:Column(
      children: [
        SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 200,
              child: ListView(
                children: [
                  Text('臺中市大雅區大雅國民小學'),
                  Text('臺中市立大華國民中學'),
                  Text('臺中市立大甲工業高級中等學校'),
                ],
              ),
            ),
          ],),
      ],
    ),);
  }
}

import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hiragana",
      home: MyHomePage(title: "Hiragana"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController _arrowsController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            centerTitle: true,
            title: Text(
              "Hiragana",
              style: TextStyle(
                  color: Colors.amberAccent[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            backgroundColor: Colors.indigo[900],
          ),
        ),
        body: TabBarView(children: [
          ArrowsDemo(controller: _arrowsController),
        ]),
      ),
    );
  }
}

class ArrowsDemo extends StatelessWidget {
  final ScrollController controller;

  const ArrowsDemo({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final _itemExtent = 580.0;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollbar.arrows(
      alwaysVisibleScrollThumb: true,
      backgroundColor: Colors.grey.shade800,
      padding: EdgeInsets.only(right: 4.0),
      labelTextBuilder: (double offset) => Text("${offset ~/ _itemExtent}",
          style: TextStyle(color: Colors.white)),
      controller: controller,
      child: ListView.builder(
          controller: controller,
          itemCount: 1,
          itemExtent: _itemExtent,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(8.0),
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/a.mp3");
                              player.play();
                            },
                            child: Text(
                              'あ   a',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/i.mp3");
                              player.play();
                            },
                            child: Text(
                              'い    i',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/u.mp3");
                              player.play();
                            },
                            child: Text(
                              'う    u',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/e.mp3");
                              player.play();
                            },
                            child: Text(
                              'え    e',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/o.mp3");
                              player.play();
                            },
                            child: Text(
                              'お    o',
                              style: TextStyle(fontSize: 30),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/ka.mp3");
                              player.play();
                            },
                            child: Text(
                              'か ka',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/ki.mp3");
                              player.play();
                            },
                            child: Text(
                              'き  ki',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/ku.mp3");
                              player.play();
                            },
                            child: Text(
                              'く  ku',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/ke.mp3");
                              player.play();
                            },
                            child: Text(
                              'け  ke',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/ko.mp3");
                              player.play();
                            },
                            child: Text(
                              'こ  ko',
                              style: TextStyle(fontSize: 30),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/sa.mp3");
                              player.play();
                            },
                            child: Text(
                              'さ sa',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/shi.mp3");
                              player.play();
                            },
                            child: Text(
                              'しshi',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/su.mp3");
                              player.play();
                            },
                            child: Text(
                              'す  su',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/se.mp3");
                              player.play();
                            },
                            child: Text(
                              'せ  se',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/so.mp3");
                              player.play();
                            },
                            child: Text(
                              'そ  so',
                              style: TextStyle(fontSize: 30),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/ta.mp3");
                              player.play();
                            },
                            child: Text(
                              'た  ta',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/chi.mp3");
                              player.play();
                            },
                            child: Text(
                              'ちchi',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/tsu.mp3");
                              player.play();
                            },
                            child: Text(
                              'つ tsu',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/te.mp3");
                              player.play();
                            },
                            child: Text(
                              'て   te',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/to.mp3");
                              player.play();
                            },
                            child: Text(
                              'と   to',
                              style: TextStyle(fontSize: 30),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/na.mp3");
                              player.play();
                            },
                            child: Text(
                              'な na',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/ni.mp3");
                              player.play();
                            },
                            child: Text(
                              'に  ni',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/nu.mp3");
                              player.play();
                            },
                            child: Text(
                              'ぬ  nu',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/ne.mp3");
                              player.play();
                            },
                            child: Text(
                              'ね  ne',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/no.mp3");
                              player.play();
                            },
                            child: Text(
                              'の  no',
                              style: TextStyle(fontSize: 30),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/ha.mp3");
                              player.play();
                            },
                            child: Text(
                              'は ha',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/hi.mp3");
                              player.play();
                            },
                            child: Text(
                              'ひ  hi',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/fu.mp3");
                              player.play();
                            },
                            child: Text(
                              'ふ   fu',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/he.mp3");
                              player.play();
                            },
                            child: Text(
                              'へ  he',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/ho.mp3");
                              player.play();
                            },
                            child: Text(
                              'ほ  ho',
                              style: TextStyle(fontSize: 30),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/ma.mp3");
                              player.play();
                            },
                            child: Text(
                              'まma',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/mi.mp3");
                              player.play();
                            },
                            child: Text(
                              'み mi',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/mu.mp3");
                              player.play();
                            },
                            child: Text(
                              'む mu',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/me.mp3");
                              player.play();
                            },
                            child: Text(
                              'め me',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/mo.mp3");
                              player.play();
                            },
                            child: Text(
                              'も mo',
                              style: TextStyle(fontSize: 30),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/ya.mp3");
                              player.play();
                            },
                            child: Text(
                              'や  ya',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 90),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/yu.mp3");
                              player.play();
                            },
                            child: Text(
                              'ゆ   yu',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 90),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/yo.mp3");
                              player.play();
                            },
                            child: Text(
                              'よ   yo',
                              style: TextStyle(fontSize: 30),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/ra.mp3");
                              player.play();
                            },
                            child: Text(
                              'ら  ra',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/ri.mp3");
                              player.play();
                            },
                            child: Text(
                              'り   ri',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/ru.mp3");
                              player.play();
                            },
                            child: Text(
                              'る   ru',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/re.mp3");
                              player.play();
                            },
                            child: Text(
                              'れ   re',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/ro.mp3");
                              player.play();
                            },
                            child: Text(
                              'ろ   ro',
                              style: TextStyle(fontSize: 30),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/wa.mp3");
                              player.play();
                            },
                            child: Text(
                              'わ  wa',
                              style: TextStyle(fontSize: 30),
                            )),
                        SizedBox(width: 280),
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/wo.mp3");
                              player.play();
                            },
                            child: Text(
                              'を  wo',
                              style: TextStyle(fontSize: 30),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.setAsset("android/assets/audio/n.mp3");
                              player.play();
                            },
                            child: Text(
                              'ん     n',
                              style: TextStyle(fontSize: 30),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

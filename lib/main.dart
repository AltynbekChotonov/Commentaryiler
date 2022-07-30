import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // class: dart учун жаны тушунук  (Object) болуп аталат
  // MyApp: Widget тен келген class (Object)
// extends: Parent class тан  child class ка мурас берет
  const MyApp({Key? key}) : super(key: key);
// Key: бир widget ке ачкыч бергибиз келсе беребиз
  // super: Атасына бериле турган проперти  беруу учун колдонулат < child тан paren ке берет>

  @override
  // @override: (Атасындагы функцияны кайра жазуу жумушун аткарат)
  Widget build(BuildContext context) {
    // Widget: build метедунун кайтаруу тиби
    // build: Функциянын аты
    // BuildContext context: build функциясы ала турган параметр
    // Проперти: бул class тын касиети деп айтылат.
    return MaterialApp(
      // return: build Функциясынын артка кайтаруучусу.
      title: 'Flutter Demo',
      // title: MaterialApp тын  бир пропертиси String тибинде буга текст берилет
      /* title: бул проперти (MyHomePage ке дагы таандык болот)String тибинде будагы текст алат
      MaterialApp да title: text берилет  MyHomePage дагы title: text берилет */
      theme: ThemeData(
        // theme: MaterialApp тын бир  пропертиси ThemeData тибинде

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'КОММЕНТАРИЙЛЕР'),
      // home: MaterialApp тын бир пропертиси  бул Widget
      // MyHomePage: бул дагы бир Widget
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  // MyHomePage({Key? key, required this.title}): MyHomePage тин (constructor) куруучусу болот
  // Key: бир widget ке ачкыч бергибиз келсе беребиз
  // required this.title: constructor бул созсуз турдо озуно бир title  алышы керек
  // super: Атасына бериле турган проперти  беруу учун колдонулат < child тан paren ке берет>

  // int: озгормонун тиби (бутун сан болот)
  // title: озгормонун аты болот;

  final String title;
  // final бир жолу гана маани берет мындайча айтканда кийин эч качан озгортпойт.

  @override
  // @override: Атасындагы функцияны кайра жазып берет.
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // setsetState: функциянын аты (setState функциясын чакырганда build функциясы кайрадан иштеп баштайт)
      _counter++;
      // _counter++; _counter дин маанисин бирди кош дегенди билдирек ++ бирди кошот +1 бул дагы бирди кошот
    });
  }

  @override
  Widget build(BuildContext context) {
    // Widget build тун кайтаруу тибин билдирет (return type
    // build куруу бир методтун аты

    return Scaffold(
      // Scaffold: бул тиркеменин ичиндеги ак тусу деп койсок болот.
      appBar: AppBar(
        // appBar: AppBar: < колдонмо тиркеме > бул озунчо бир виджет тиркеменин сап башында жайгашат.
        title: Text(widget.title),
        // title: Text: бул панелдик тиркемедеги String тибинде тексттерди корсотуп жаткан бир виджет.
        // toString: бул дагы берилген бир нерсе дейбизби же тапшырмабы айтор ошону кайтарып берет.
      ),
      body: Center(
        // body: бул болсо тиркеменин ичи - бул озуно коптогон параметрлерди камтыйт.
        // Center - бул макет виджети. Ал body нин ичиндеги виджеттерди ортого жайгаштырып берет.
        child: Column(
          // child: бул болсо озунун ичинде виджеттерди камтыйт.
          // Column: элементтерди вертикалдуу турундо жайгаштырып берет.
          mainAxisAlignment: MainAxisAlignment.center,
          /* mainAxisAlignment: MainAxisAlignment.center: Column конструкторунун бир параметри
           элементтерди вертикалдуу турундо жайгаштырып берет жана ортого жаштырып берет. */
          children: <Widget>[
            const Text(
              ' // class: dart учун жаны тушунук (Object) болуп аталат ',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
              // style: бул кандайдыр бир текст болобу же виджет болобу style: аркылуу стилин, тусун беребиз.
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //floatingActionButton: бул кнопка
        onPressed: _incrementCounter,
        // onPressed: бул ошол эле кнопканы басканда иштетип беруучу бир параметр.
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:badges/badges.dart ' as badges;
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sizer/sizer.dart';

import 'src/utils/data.dart';

Qbrain qbrain = Qbrain();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Center questionText({String data = ""}) {
  return Center(
    child: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Text(
        'QUESTION:   $data',
        style: const TextStyle(fontSize: 23.5, color: Colors.white70),
      ),
    ),
  );
}

class _MyHomePageState extends State<MyHomePage> {
  generate(List<String> data) {
    if (chosen.isEmpty) {
      for (var opt in data) {
        chosen[opt] = false;
      }
    }
    return chosen;
  }

  Map<String, bool> chosen = {};
  Question currentQuestion = qbrain.getQuestion();
  List<Icon> checkList = [];
  int _riteCount = 0;
  int _wrongCount = 0;

  _onBasicWaitingAlertPressed(context) async {
    await Alert(
      context: context,
      title: "MISSING OPTION ",
      desc: "Please Select an Option to be able to go the next Question",
    ).show();
  }

  void newQuestion() {
    debugPrint(currentQuestion.correctAnswer);
    currentQuestion.correctAnswer = "hop";
    debugPrint(currentQuestion.correctAnswer);
    void update(value) {
      setState(() {
        value == "R" ? _riteCount++ : _wrongCount++;
        currentQuestion = qbrain.getQuestion();
        chosen = {};
      });
    }

    String choice = '';

    chosen.forEach((key, value) {
      value ? choice = key : "";
    });
    choice == ""
        ? _onBasicWaitingAlertPressed(context)
        : choice == currentQuestion.correctAnswer
            ? update("R")
            : update("W");
  }

  void updateOption(opt, state) {
    setState(() {
      chosen.updateAll((key, value) => false);
      chosen[opt] = state;
    });
  }

  List<Widget> contents({
    int questWidth = 1,
    int rowBtn = 2,
    required currentQuestion,
    required List currentOpt,
    required optState,
    required BuildContext context,
    required List<Icon> checkList,
  }) {
    return [
      Expanded(
        flex: questWidth,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            color: Colors.black12,
            child: questionText(data: currentQuestion),
          ),
        ),
      ),
      Expanded(
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: badges.Badge(
                      badgeAnimation: const badges.BadgeAnimation.slide(),
                      position: badges.BadgePosition.topEnd(end: 0, top: 0),
                      badgeContent: Text(
                        _riteCount.toString(),
                        style: TextStyle(
                            color: Colors.green.shade50, fontSize: 20),
                      ),
                      child: IconButton(
                          icon: Icon(
                            Icons.check_box,
                            color: Colors.green.shade900,
                            size: 30,
                          ),
                          onPressed: () {}),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: badges.Badge(
                      badgeAnimation: const badges.BadgeAnimation.slide(),
                      position: badges.BadgePosition.topEnd(end: 0, top: 0),
                      badgeContent: Text(
                        _wrongCount.toString(),
                        style:
                            TextStyle(color: Colors.red.shade50, fontSize: 20),
                      ),
                      child: IconButton(
                          icon: Icon(
                            Icons.close_sharp,
                            color: Colors.red.shade900,
                            size: 30,
                          ),
                          onPressed: () {}),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: ListView(
                    children: currentOpt.map((e) {
                      return Container(
                        margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple,
                            width: 1.5,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: CheckboxListTile(
                          value: optState[e],
                          onChanged: (value) {
                            updateOption(e, value);
                          },
                          title: Text(e,
                              style: const TextStyle(letterSpacing: 2.0)),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: TextButton(
                  onPressed: () {
                    qbrain.nextQuest();
                    newQuestion();
                  },
                  style: ButtonStyle(
                    padding: const MaterialStatePropertyAll(
                        EdgeInsets.fromLTRB(0, 20, 0, 20)),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.purple.shade800),
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(letterSpacing: 2, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }

  // print(currentQuestion.question);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      body: OrientationBuilder(builder: (context, orientation) {
        return Builder(builder: (context) {
          return SafeArea(
            child: orientation == Orientation.portrait
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: contents(
                      questWidth: 1,
                      currentQuestion: currentQuestion.question,
                      currentOpt: currentQuestion.options,
                      optState: generate(currentQuestion.options),
                      context: context,
                      checkList: checkList,
                    ))
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: contents(
                      questWidth: 2,
                      rowBtn: 1,
                      currentQuestion: currentQuestion.question,
                      currentOpt: currentQuestion.options,
                      optState: generate(currentQuestion.options),
                      context: context,
                      checkList: checkList,
                    )),
          );
        });
      }),
    );
  }
}

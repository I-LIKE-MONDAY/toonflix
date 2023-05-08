import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // 뽀모도로는 25분 일하고 5분 쉬는 사이클, 25분 = 1500초
  static const twentyFiveMinutes = 1500;
  int totalSeconds = twentyFiveMinutes;

  // 재생/일시정지 flag
  bool isRunning = false;

  // 타이머 생성. late : 해당 property 를 당장 초기화 하지 않아도 된다는 것을 의미한다.
  // 하지만 약속은 하나 했음 --> property 를 사용하기 전에 반드시 초기화 할 것이라고.
  late Timer timer;

  // 뽀모도로 완료 횟수
  int totalPomodoros = 0;

  // 정해진 주기마다 실행되는 함수 = totalSeconds 에서 1씩 마이너스 됨.
  // periodic 이 실행하는 함수는 그 인자로 Timter 자체를 받음. -> 인자로 Timer timer 삽입
  void onTick(Timer timer) {
    if(totalSeconds == 0) {
      setState(() {
        isRunning = false;
        totalPomodoros++;
        totalSeconds = twentyFiveMinutes;
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  // 카운트를 시작하는 함수
  void onStartPressed() {
    // periodic : 주기(duration) 마다 해당 함수 (timer) {} 실행
    // onTick() 이라고 하지 않고 onTick 이라고 한 이유(괄호X) : 괄호가 있으면 즉시 실행된다는 뜻이라서.
    // Timer 가 매 초마다 괄호를 넣어서 실행해 줄 것임
    timer = Timer.periodic(Duration(seconds: 1), onTick);

    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  // 초 단위를 분 단위로 변경해주는 함수
  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return '${duration.toString().split(".").first.substring(2,7)}';  // 0:24:51.000000
  }

  void refresh() {
    setState(() {
      isRunning = false;
      totalSeconds = twentyFiveMinutes;
    });
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          // 하드코딩되는 값을 만들게해줌
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                // '${totalSeconds}',
                format(totalSeconds),
                style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 89,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 120,
                    color: Theme.of(context).cardColor,
                    icon: Icon(isRunning
                        ? Icons.pause_circle_outline
                        : Icons.play_circle_outlined),
                    onPressed: isRunning ?  onPausePressed : onStartPressed,
                  ),
                  IconButton(
                    iconSize: 60,
                    color: Theme.of(context).cardColor,
                    icon: Icon(isRunning
                        ? Icons.refresh_outlined
                        : null),
                    onPressed: isRunning ?  refresh : null,
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '뽀모도로',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .color),
                      ),
                      Text(
                        // 뽀모도로를 완료한 횟수
                        '${totalPomodoros}',
                        style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .color),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}

import 'package:base_widgets/components/_widgets/arrow_paint.dart';
import 'package:base_widgets/components/paper_clipper.dart';
import 'package:base_widgets/hooks/use_datetime.dart';
import 'package:flutter/material.dart';

class BoardingCard extends StatelessWidget {
  final DateTime boardedAt;
  final String departure;
  final String arrival;
  final String airline;
  final String boardingType;
  final String registration;

  final TextStyle titleTextStyle = const TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 11,
    height: 1,
    letterSpacing: .2,
    fontWeight: FontWeight.w600,
    color: Color(0xffafafaf),
  );
  final TextStyle contentTextStyle = const TextStyle(
    fontFamily: 'Oswald',
    fontSize: 16,
    height: 1.8,
    letterSpacing: .3,
    color: Color(0xff083e64),
  );

  const BoardingCard({
    Key? key,
    required this.boardedAt,
    required this.departure,
    required this.arrival,
    required this.airline,
    required this.boardingType,
    required this.registration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final useDatetime = UseDatetime();
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ClipPath(
        clipBehavior: Clip.antiAlias,
        clipper: PaperClipper(),
        child: Stack(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Board'.toUpperCase(),
                                  style: titleTextStyle),
                              Text(useDatetime.formatDatetime(boardedAt),
                                  style: contentTextStyle),
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Type'.toUpperCase(), style: titleTextStyle),
                              Text(boardingType, style: contentTextStyle),
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Reg'.toUpperCase(), style: titleTextStyle),
                              Text(registration, style: contentTextStyle),
                            ]),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(
                          width: 90,
                          height: 40,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Dep.'.toUpperCase(),
                                    style: titleTextStyle),
                                FittedBox(
                                  child: Text(
                                    departure,
                                    style: contentTextStyle,
                                  ),
                                ),
                              ]),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 60,
                              height: 40,
                              child: CustomPaint(
                                painter: ArrowPaint(
                                    color: airline == 'JAL'
                                        ? Colors.red
                                        : airline == 'ANA'
                                            ? Colors.blue
                                            : Colors.grey),
                                child: Align(
                                  alignment: const Alignment(-.2, 0),
                                  child: Text(
                                    airline,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 90,
                          height: 40,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Arr.'.toUpperCase(),
                                    style: titleTextStyle),
                                FittedBox(
                                  child: Text(
                                    arrival,
                                    style: contentTextStyle,
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

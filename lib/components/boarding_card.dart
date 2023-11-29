import 'package:base_widgets/components/_widgets/arrow_paint.dart';
import 'package:base_widgets/hooks/use_datetime.dart';
import 'package:flutter/material.dart';

class BoardingCard extends StatelessWidget {
  final DateTime boardedAt;
  final String departure;
  final String arrival;
  final String airline;
  final String boardingType;
  final String registration;

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
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80,
                    height: 20,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        useDatetime.formatDatetime(boardedAt),
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 10,
                          letterSpacing: 0.8,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    departure,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: CustomPaint(
                      painter: ArrowPaint(
                        color: airline == 'JAL' ? Colors.red : airline == 'ANA' ? Colors.blue : Colors.green),
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
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 60,
                    height: 20,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '$boardingType\n$registration',
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 11,
                          letterSpacing: 0.8,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    arrival,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
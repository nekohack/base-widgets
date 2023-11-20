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
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        useDatetime.formatDatetime(boardedAt),
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 22,
                          letterSpacing: 0.8,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    departure,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 44,
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
                  const Image(
                    image: AssetImage('assets/plane.png'),
                    fit: BoxFit.cover,
                    width: 125,
                    height: 50,
                  ),
                  Text(
                    '--- $airline ---',
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
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
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '$boardingType\n$registration',
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          letterSpacing: 0.8,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    arrival,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 44,
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
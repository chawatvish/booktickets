import 'package:booktickets_flutter/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            Container(
              width: size.width * .44,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(50),
                ),
                color: Colors.white,
              ),
              child: const Center(child: Text('Airline tickets')),
            ),
            Container(
              width: size.width * .44,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(50),
                ),
                color: Colors.transparent,
              ),
              child: const Center(child: Text('Hotels')),
            ),
          ],
        ),
      ),
    );
  }
}

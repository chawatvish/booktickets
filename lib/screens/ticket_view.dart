import 'package:booktickets_flutter/utils/app_layout.dart';
import 'package:booktickets_flutter/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isSetDefaultColor;

  const TicketView(
      {Key? key, required this.ticket, this.isSetDefaultColor = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            showing the blue part of the card/ticket
             */
            Container(
              decoration: BoxDecoration(
                color: isSetDefaultColor == true
                    ? const Color(0xFF526799)
                    : Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '${ticket['from']['code']}',
                        style: isSetDefaultColor == true
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      Expanded(child: Container()),
                      ThickContainer(
                        isSetDefaultColor: isSetDefaultColor,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                                height: 24,
                                child: AppLayoutBuilderWidget(
                                  isSetDefaultColor: isSetDefaultColor,
                                  sections: 6,
                                )),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isSetDefaultColor == true
                                      ? Colors.white
                                      : const Color(0xFF8ACCF7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ThickContainer(
                        isSetDefaultColor: isSetDefaultColor,
                      ),
                      Expanded(child: Container()),
                      Text(
                        '${ticket['to']['code']}',
                        style: isSetDefaultColor == true
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          '${ticket['from']['name']}',
                          style: isSetDefaultColor == true
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        '${ticket['flying_time']}',
                        style: isSetDefaultColor == true
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          '${ticket['to']['code']}',
                          style: isSetDefaultColor == true
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
            showing the read part of the card/ticket
             */
            Container(
              color:
                  isSetDefaultColor == true ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isSetDefaultColor == true
                            ? Colors.white
                            : Colors.grey.shade50,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraint) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              (constraint.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: isSetDefaultColor == true
                                        ? Colors.white
                                        : Colors.grey.shade300,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isSetDefaultColor == true
                            ? Colors.white
                            : Colors.grey.shade50,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            /*
            showing bottom part of the orange
             */
            Container(
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              decoration: BoxDecoration(
                color: isSetDefaultColor == true
                    ? Styles.orangeColor
                    : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft:
                        Radius.circular(isSetDefaultColor == true ? 21 : 0),
                    bottomRight:
                        Radius.circular(isSetDefaultColor == true ? 21 : 0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firstText: '${ticket['date']}',
                      secondText: 'Date',
                      isSetDefaultColor: isSetDefaultColor,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: AppColumnLayout(
                        alignment: CrossAxisAlignment.center,
                        firstText: '${ticket['departure_time']}',
                        secondText: 'Departure time',
                        isSetDefaultColor: isSetDefaultColor,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: AppColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      firstText: '${ticket['number']}',
                      secondText: 'Number',
                      isSetDefaultColor: isSetDefaultColor,
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

import 'package:booktickets_flutter/screens/ticket_view.dart';
import 'package:booktickets_flutter/utils/app_style.dart';
import 'package:booktickets_flutter/widgets/column_layout.dart';
import 'package:booktickets_flutter/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';
import '../widgets/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            children: [
              const Gap(40),
              Text(
                'Tickets',
                style: Styles.headLineStyle1,
              ),
              const Gap(20),
              const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              const Gap(20),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(
                  ticket: ticketList[0],
                  isSetDefaultColor: false,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                            alignment: CrossAxisAlignment.start,
                            firstText: 'Flutter DB',
                            secondText: 'Passenger',
                            isSetDefaultColor: false),
                        AppColumnLayout(
                            alignment: CrossAxisAlignment.end,
                            firstText: '5221 478566',
                            secondText: 'Passport',
                            isSetDefaultColor: false)
                      ],
                    ),
                    const Gap(20),
                    const AppLayoutBuilderWidget(
                      isSetDefaultColor: false,
                      sections: 15,
                      width: 5,
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                            alignment: CrossAxisAlignment.start,
                            firstText: '0055 444 77147',
                            secondText: 'Number of E-ticket',
                            isSetDefaultColor: false),
                        AppColumnLayout(
                            alignment: CrossAxisAlignment.end,
                            firstText: 'B2SG28',
                            secondText: 'Booking code',
                            isSetDefaultColor: false)
                      ],
                    ),
                    const Gap(20),
                    const AppLayoutBuilderWidget(
                      isSetDefaultColor: false,
                      sections: 15,
                      width: 5,
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 11,
                                ),
                                Text(
                                  " *** 2462",
                                  style: Styles.headLineStyle3,
                                )
                              ],
                            ),
                            const Gap(5),
                            Text(
                              'Payment method',
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                        const AppColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          firstText: '\$249.99',
                          secondText: 'Price',
                          isSetDefaultColor: false,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    const Gap(20),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

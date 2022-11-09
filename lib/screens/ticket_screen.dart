import 'package:booktickets_flutter/screens/ticket_view.dart';
import 'package:booktickets_flutter/utils/app_style.dart';
import 'package:booktickets_flutter/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';

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
            ],
          ),
        ],
      ),
    );
  }
}

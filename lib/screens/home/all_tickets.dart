import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/app_info_list.dart';
import 'package:ticket_app/screens/home/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList.map((singleTicket) =>
                  Container(
                    margin: const EdgeInsets.only(bottom: 30),
                      child: TicketView(ticket: singleTicket, wholeScreen: true))).toList(),

            ),
          )
        ],
      ),
    );
  }
}

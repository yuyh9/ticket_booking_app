import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/app_info_list.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/screens/home/widgets/hotel_view.dart';
import 'package:ticket_app/screens/home/widgets/ticket_view.dart';
import '../../base/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: AppStyles.headLineStyle3),
                        const SizedBox(height: 5,),
                        Text("Book Tickets", style: AppStyles.headLineStyle1),
                      ],
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/img_1.png')
                        )
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD),
                  ),
                  child: const Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(FluentSystemIcons.ic_fluent_search_regular, color: Colors.amber,),
                    Text("Search"),
                   ],
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                  bigText: 'Upcoming Flights',
                  smallText: 'View All',
                  func: () => Navigator.pushNamed(context, "all_tickets"),),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ticketList.
                            take(2).
                            map((singleTicket) =>
                            TicketView(ticket: singleTicket))
                            .toList(),

                    )
                ),
                const SizedBox(height: 35),
                AppDoubleText(
                  bigText: 'Hotels',
                  smallText: 'View All',
                  func: () => Navigator.pushNamed(context, "all_hotels"),),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:  Row(
                    children: hotelList
                        .take(2)
                        .map((singleHotel) =>
                        Hotel(hotel: singleHotel))
                        .toList(),
                  ),
                )
            ]),
          ),

        ],
    ));
  }
}


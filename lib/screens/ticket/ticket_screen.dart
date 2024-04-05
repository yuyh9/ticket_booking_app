import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/app_info_list.dart';
import 'package:ticket_app/base/utils/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_layout.dart';
import 'package:ticket_app/base/widgets/app_layout_builder.dart';
import 'package:ticket_app/screens/home/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          const SizedBox(height: 40,),
          Text("Tickets", style: AppStyles.headLineStyle1,),
          const SizedBox(height: 20,),
          const AppTicketTabs(
            firstTab: "upcoming",
            secondTab: "Previous",
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.only(left: 16),
              child: TicketView(ticket: ticketList[0], isColor: true,)),
          const SizedBox(height: 1,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            color: AppStyles.ticketColor,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      topText: "Flutter ",
                      bottomText: "Passenger",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnLayout(
                      topText: "5544331 ",
                      bottomText: "Passport",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                const AppLayoutBuilder(randomDivider: 15, width: 5, isColor: false,),
                const SizedBox(height: 20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      topText: "2465 658494046865",
                      bottomText: "Number of E-ticket",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnLayout(
                      topText: "B46859",
                      bottomText: "Booking code",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                const AppLayoutBuilder(randomDivider: 15, width: 5, isColor: false,),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/visa.png", scale: 11),
                            const SizedBox(width: 8),
                            Text(" *** 2462", style: AppStyles.headLineStyle3,)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Text("Payment method", style: AppStyles.headLineStyle4,)
                      ],
                    ),
                    const AppColumnLayout(
                      topText: "\$249.99",
                      bottomText: "Price",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 1,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: AppStyles.ticketColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(21),
                bottomLeft: Radius.circular(21)
              )
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                  child: BarcodeWidget(
                    height: 70,
                    barcode: Barcode.code128(),
                    data: "tickets",
                    drawText: false,
                    color: AppStyles.textColor,
                    width: double.infinity,
                  ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
              padding: const EdgeInsets.only(left: 16),
              child: TicketView(ticket: ticketList[0],)),

        ],
      ),
    );
  }
}

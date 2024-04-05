import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_layout.dart';
import 'package:ticket_app/base/widgets/app_layout_builder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 50,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/img_1.png')
                    )
                ),
              ),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: AppStyles.headLineStyle1),
                  const SizedBox(height: 2,),
                  Text('New-York',
                      style: AppStyles.headLineStyle4.copyWith(color: Colors.blueGrey)),
                  const SizedBox(height: 8,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppStyles.bgColor,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppStyles.kakiColor,
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,color: Colors.white,
                            size: 15,),
                        ),
                        const SizedBox(width: 5),
                        Text('Premium',
                            style: AppStyles.headLineStyle3.copyWith(color: Colors.deepOrangeAccent)),
                        const SizedBox(width: 5),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("test tab");
                    },
                    child: Text(
                      "Edit", style: AppStyles.textStyle,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 8,),
          Divider(color: Colors.grey.shade300,),
          const SizedBox(height: 8,),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(20)
                )
              ),
              Positioned(
                right: -45,
                top: -30,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Colors.indigo),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: AppStyles.primaryColor,
                        size: 27,
                      ),
                    ),
                    const SizedBox(width: 8,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('You\'ve got a new award',
                          style: AppStyles.headLineStyle2.copyWith(color: Colors.white),),
                        Text('You have 95 flights in a year',
                          style: AppStyles.headLineStyle3.copyWith(color: Colors.white.withOpacity(0.8)),),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 25,),
          Text(
            'Accumulated Miles',
            style: AppStyles.headLineStyle2,
          ),
          const SizedBox(height: 15,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppStyles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: AppStyles.planeColor,
                  blurRadius: 1,
                  spreadRadius: 1,
                )
              ]
            ),
            child: Column(
              children: [
                const SizedBox(height: 15,),
                Text("198340", style: AppStyles.headLineStyle1,),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Mile accrued", style: AppStyles.headLineStyle4.copyWith(fontSize: 18),),
                    Text("11 June 2026", style: AppStyles.headLineStyle4.copyWith(fontSize: 18),)
                  ],
                ),
                const SizedBox(height: 20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(topText: '53 340',
                      bottomText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: true,),
                    AppColumnLayout(topText: 'Airline.Inc',
                      bottomText: 'Received from',
                      alignment: CrossAxisAlignment.start,
                      isColor: true,)
                  ],
                ),
                const SizedBox(height: 15,),
                const AppLayoutBuilder(randomDivider: 15, width: 15,  isColor: false,),
                const SizedBox(height: 15,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(topText: '24',
                      bottomText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: true,),
                    AppColumnLayout(topText: 'Alaska.Inc',
                      bottomText: 'Received from',
                      alignment: CrossAxisAlignment.start,
                      isColor: true,)
                  ],
                ),
                const SizedBox(height: 15,),
                const AppLayoutBuilder(randomDivider: 15, width: 15,  isColor: false,),
                const SizedBox(height: 15,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(topText: '63 234',
                      bottomText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: true,),
                    AppColumnLayout(topText: 'JetBlue.Inc',
                      bottomText: 'Received from',
                      alignment: CrossAxisAlignment.start,
                      isColor: true,)
                  ],
                ),
                const SizedBox(height: 5,),

                

              ],
            ),
          ),
          const SizedBox(height: 15,),
          Center(
            child: Text("How to get more miles",
              style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor, fontSize: 18),),
          )
        ],
      ),
    );
  }
}

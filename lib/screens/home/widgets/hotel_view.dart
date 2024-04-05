import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String,dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.only(right: 16),
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 180,
              decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/images/${hotel['image']}"
                      )
                  )
          )),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel['place'],
              style: AppStyles.headLineStyle1.copyWith(color: AppStyles.kakiColor) ,),
          ),
          const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel['destination'],
              style: AppStyles.headLineStyle2.copyWith(color: Colors.white) ,),
          ),
          const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "\$${hotel['price']}/night",
              style: AppStyles.headLineStyle1.copyWith(color: AppStyles.kakiColor) ,),
          )
        ],
      ),
    );
  }
}

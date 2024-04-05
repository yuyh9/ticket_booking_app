import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/app_info_list.dart';
import 'package:ticket_app/screens/home/widgets/hotel_view.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Hotels"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 25,
            childAspectRatio: 0.47,
          ),itemCount: hotelList.length,

          itemBuilder: (context, index) {
            return Hotel(hotel: hotelList[index]);
          }
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_4/detail_screen.dart';
import 'package:state_management_4/list_item.dart';
import 'package:state_management_4/provider/done_tourism_provider.dart';
import 'model/tourism_place.dart';


class TourismList extends StatefulWidget{
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState () => _TourismListState();
}

class _TourismListState extends State<TourismList>{
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda',
      imageAsset: 'assets/img/submarine.jpg',
      day: 'Setiap Hari',
      time: '08:00 - 16:30',
      price: 'Rp 5.000',
    ),
    TourismPlace(
      name: 'Kelenteng Sanggar Agung',
      location: 'Kenjeran',
      imageAsset: 'assets/img/klenteng.jpg',
      day: 'Setiap Hari',
      time: '08:00 - 16:30',
      price: 'Rp 5.000',
    ),
    TourismPlace(
      name: 'House of Sampoerna',
      location: 'Krembangan Utara',
      imageAsset: 'assets/img/sampoerna.jpeg',
      day: 'Setiap Hari',
      time: '08:00 - 16:30',
      price: 'Rp 5.000',
    ),
    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Alun-alun contong',
      imageAsset: 'assets/img/pahlawan.jpg',
      day: 'Setiap Hari',
      time: '08:00 - 16:30',
      price: 'Rp 5.000',
    ),
    TourismPlace(
      name: 'Patung Suro Boyo',
      location: 'Wonokromo',
      imageAsset: 'assets/img/sby.jpg',
      day: 'Setiap Hari',
      time: '08:00 - 16:30',
      price: 'Rp 5.000',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index){
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Consumer<DoneTourismProvider>(
              builder: (context, DoneTourismProvider data, widget){
                return ListItem(
                  place: place,
                  isDone: data.doneTourismPlaceList.contains(place),
                  onCheckboxClick: (bool? value) {
                    setState(() {
                      if (value != null) {
                        value
                            ? data.doneTourismPlaceList.add(place)
                            : data.doneTourismPlaceList.remove(place);
                      }
                    });
                  });
              }
            ),
          );
        },
        itemCount: tourismPlaceList.length,
      );
  }
}
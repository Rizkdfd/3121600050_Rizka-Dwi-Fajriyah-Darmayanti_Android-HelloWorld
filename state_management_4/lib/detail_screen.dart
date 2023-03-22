import 'package:flutter/material.dart';
import 'package:state_management_4/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
        children: <Widget> [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Image.asset(place.imageAsset),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Lobster',
                ),
              ),
            ), //Container for the title
            Container(
                  color: Colors.indigo[50],
                  height: 150,
                  constraints: BoxConstraints.tight(const Size(200, 85)),
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: const <Widget> [
                            Icon(Icons.calendar_today),
                            Text('Open everyday'),
                          ],
                        ),
                        Column(
                          children: const <Widget> [
                            Icon(Icons.access_time),
                            Text('08:00 - 16:00'),
                          ],
                        ),
                        Column(
                          children: const <Widget> [
                            Icon(Icons.price_change_outlined),
                            Text('Rp. 10.000,-'),
                          ],
                        ),
                      ]
                  ),
                ), //icon Container
            Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text(
                    'Mesum insude a decommissioned Russian war submarine with tours & an adjacent park with cafes. Clean and well maintained. Car park cost 10k, entrance free 15k/person. You can see KRI Pasopati there, it is a russian whiskey class. You can also watch the video about the Indonesian Navy at the building beside the submerine.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Oxygen',
                    ),
                  ),
                ), //Container for Description
            Container(
                    color: Colors.indigo[50],
                    height: 150,
                    constraints: BoxConstraints.tight(const Size(200, 200)),
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.all(20),

                    child:ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget> [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(110), // Image radius
                              child: Image.network('https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg', fit: BoxFit.cover),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(110), // Image radius
                              child: Image.asset('assets/img/gambar1.jpg', fit: BoxFit.cover),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(110), // Image radius
                              child: Image.asset('assets/img/gambar2.jpg', fit: BoxFit.cover),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(110), // Image radius
                              child: Image.asset('assets/img/gambar3.jpg', fit: BoxFit.cover),
                            ),
                          ),
                        ],
                    ),
                ),
          ],
        ),
        ],
      ),
      ),
    );
  }
}
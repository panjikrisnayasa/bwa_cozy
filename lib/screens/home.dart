import 'package:flutter/material.dart';

import '../theme.dart';
import '../widgets/city_item.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore Now',
                    style: mediumFont.copyWith(fontSize: 24),
                  ),
                  Text(
                    'Find cozy place to stay',
                    style: lightFont.copyWith(fontSize: 16, color: greyFont),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Text(
                      'Popular Area',
                      style: regularFont.copyWith(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              height: 165,
              child: ListView(
                padding: const EdgeInsets.only(left: 30, right: 30),
                scrollDirection: Axis.horizontal,
                children: const [
                  CityItem(
                    cityName: 'Denpasar',
                    imageUrl: 'https://picsum.photos/250?image=10',
                  ),
                  CityItem(
                    cityName: 'Canggu',
                    imageUrl: 'https://picsum.photos/250?image=11',
                  ),
                  CityItem(
                    cityName: 'Kuta',
                    imageUrl: 'https://picsum.photos/250?image=12',
                  ),
                  CityItem(
                    cityName: 'Ubud',
                    imageUrl: 'https://picsum.photos/250?image=13',
                  ),
                  CityItem(
                    cityName: 'Jimbaran',
                    imageUrl: 'https://picsum.photos/250?image=14',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

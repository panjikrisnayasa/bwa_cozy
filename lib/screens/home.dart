import 'package:flutter/material.dart';

import '../theme.dart';
import '../widgets/city_item.dart';
import '../widgets/floating_navigation.dart';
import '../widgets/space_item.dart';
import '../widgets/tips_guidances_item.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedNavigatorIndex = 0;

  void _navigatorOnPressed(int index) {
    setState(() {
      _selectedNavigatorIndex = index;
    });
  }

  bool _isNavigatorSelected(int index) {
    return _selectedNavigatorIndex == index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.only(top: 30, bottom: 140),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Explore Now',
                      style: mediumFont.copyWith(fontSize: 24),
                    ),
                    Text(
                      'Find cozy place to stay',
                      style: lightFont.copyWith(
                        fontSize: 16,
                        color: darkGreyColor,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: Text(
                        'Popular Areas',
                        style: regularFont.copyWith(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                height: 165,
                child: ListView(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CityItem(
                      city: 'Denpasar',
                      imageUrl: 'https://picsum.photos/250?image=10',
                    ),
                    CityItem(
                      city: 'Canggu',
                      imageUrl: 'https://picsum.photos/250?image=11',
                      isFavored: true,
                    ),
                    CityItem(
                      city: 'Kuta',
                      imageUrl: 'https://picsum.photos/250?image=12',
                    ),
                    CityItem(
                      city: 'Ubud',
                      imageUrl: 'https://picsum.photos/250?image=13',
                    ),
                    CityItem(
                      city: 'Jimbaran',
                      imageUrl: 'https://picsum.photos/250?image=14',
                      isFavored: true,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: Text(
                  'Recommended Spaces',
                  style: regularFont.copyWith(fontSize: 16),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Column(
                  children: const [
                    SpaceItem(
                      imageUrl: 'https://picsum.photos/250?image=20',
                      rating: 4,
                      name: 'Kuretakeso Hott',
                      pricePerMonth: 52,
                      city: 'Denpasar',
                    ),
                    SpaceItem(
                      imageUrl: 'https://picsum.photos/250?image=1',
                      rating: 5,
                      name: 'Roemah Nenek',
                      pricePerMonth: 11,
                      city: 'Canggu',
                    ),
                    SpaceItem(
                      imageUrl: 'https://picsum.photos/250?image=7',
                      rating: 3,
                      name: 'Darling How',
                      pricePerMonth: 25,
                      city: 'Ubud',
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 22, left: 30),
                child: Text(
                  'Tips & Guidances',
                  style: regularFont.copyWith(fontSize: 16),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Column(
                  children: const [
                    TipsGuidancesItem(
                      image: 'assets/images/city_guidelines.jpeg',
                      title: 'City Guidelines',
                      lastUpdate: '20 Apr',
                    ),
                    TipsGuidancesItem(
                      image: 'assets/images/jakarta_fairship.jpeg',
                      title: 'Jakarta Fairship',
                      lastUpdate: '11 Dec',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingNavigation(
        isNavigatorSelected: _isNavigatorSelected,
        navigatorOnPressed: _navigatorOnPressed,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

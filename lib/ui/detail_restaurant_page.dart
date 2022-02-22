import 'package:flutter/material.dart';
import 'package:restaurant_app/data/model/restaurants.dart';

class DetailRestaurantPage extends StatelessWidget {
  static const routeName = '/restaurant_detail';

  final Restaurant restaurant;

  DetailRestaurantPage({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(restaurant.pictureId),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant.name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const Divider(color: Colors.grey),
                  Row(children: <Widget>[
                    const Icon(
                      Icons.pin_drop,
                      color: Colors.redAccent,
                    ),
                    const SizedBox(width: 10),
                    Text(restaurant.city)
                  ]),
                  const SizedBox(height: 10),
                  Row(children: <Widget>[
                    const Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                    ),
                    const SizedBox(width: 10),
                    Text(restaurant.rating.toString())
                  ]),
                  const Divider(color: Colors.grey),
                  Text(
                    restaurant.description,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

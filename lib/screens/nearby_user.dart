// ignore_for_file: unnecessary_new, unused_local_variable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:free_tinder/constants/colors.dart';
import 'package:free_tinder/models/user_model.dart';

class NearByUsers extends StatefulWidget {
  const NearByUsers({Key? key}) : super(key: key);
  static const routeName = '/nearbuusesr';

  @override
  State<NearByUsers> createState() => _NearByUsersState();
}

class _NearByUsersState extends State<NearByUsers> {
  @override
  Widget build(BuildContext context) {
    UserModel users = new UserModel(
        name: 'Anaya',
        gender: false,
        phoneno: "3333333",
        intrests: ["dancing", "playing", "fucking"],
        age: 19,
        image: "https://picsum.photos/200",
        email: "afdskfjk@gmail.com");
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 0.95,
            child: Image.network(
              'https://picsum.photos/200',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              child: Column(
                children: [
                  Positioned(
                    left: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          users.name,
                          style:
                              const TextStyle(fontSize: 30, color: MyColors.h1),
                        ),
                        Text(
                          "  " + users.age.toString(),
                          style:
                              const TextStyle(fontSize: 30, color: MyColors.h1),
                        ),
                        
                      ],
                    ),
                  ),
                  Wrap(
                    children: [
                      Chip(label: Text(users.intrests[0])),
                      Chip(label: Text(users.intrests[1])),
                      Chip(label: Text(users.intrests[2])),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.replay_outlined,
                            size: 40,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            size: 55,
                            color: Colors.green,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.wifi_tethering_error_rounded_sharp,
                            size: 40,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.person,
                            size: 40,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.person,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

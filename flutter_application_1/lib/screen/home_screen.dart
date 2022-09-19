import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/models/Building.dart';
import 'package:flutter_application_1/screen/building_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var buildings = [
    Building(
      name: 'أبراج الكويت',
      imgURL:
          'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
    ),
    Building(
      name: 'برج التحرير',
      imgURL:
          'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
    ),
    Building(
      name: 'المسجد الكبير',
      imgURL:
          'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mene'),
      ),
      body: ListView.builder(
        itemCount: buildings.length,
        itemBuilder: (context, index) {
          return Card(

              // this has to be build after building the screen🔴🔴🔴
              child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BuildScreen(
                    myBuilding: buildings[index],
                  ),
                ),
              );
            },
            child: Row(children: [
              Image.network(
                buildings[index].imgURL,
                width: 150,
                height: 150,
              ),
              Container(
                  padding: EdgeInsets.all(40),
                  child: Text(
                    buildings[index].name,
                    style: TextStyle(fontSize: 30),
                  ))
            ]),
          ));
        },
      ),
    );
  }
}

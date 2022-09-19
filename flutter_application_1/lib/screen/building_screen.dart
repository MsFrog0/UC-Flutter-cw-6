// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_application_1/models/Building.dart';

// class FoodScreen extends StatelessWidget {
//   const FoodScreen({super.key, required });
//   Building building;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('dgf'),
//       ),
//       body: Center(child: Image.network('')),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/models/Building.dart';

class BuildScreen extends StatelessWidget {
  BuildScreen({super.key, required this.myBuilding});

  Building myBuilding;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(myBuilding.name),
      ),
      body: Center(child: Image.network(myBuilding.imgURL)),
    );
  }
}

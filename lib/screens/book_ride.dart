import 'package:flutter/material.dart';

import 'package:argon_flutter/constants/Theme.dart';

//widgets
import 'package:argon_flutter/widgets/navbar.dart';
import 'package:argon_flutter/widgets/drawer.dart';
import 'package:argon_flutter/widgets/input.dart';
import 'package:argon_flutter/widgets/table-cell.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BookRide extends StatefulWidget {
  @override
  _BookRideState createState() => _BookRideState();
}

class _BookRideState extends State<BookRide> {





  bool switchValueOne;
  bool switchValueTwo;

  void initState() {
    setState(() {
      switchValueOne = true;
      switchValueTwo = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Navbar(
          title: "BookRide",
        ),
        backgroundColor: ArgonColors.bgColorScreen,
        drawer: ArgonDrawer(currentPage: "BookRide"),
        body: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(9.072264, 7.491302),
            zoom: 15,
          ),
        ));
  }
}

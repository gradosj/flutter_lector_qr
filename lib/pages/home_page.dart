import 'package:flutter/material.dart';
import 'package:lector_qr/pages/direcciones_page.dart';
import 'package:lector_qr/pages/maps_page.dart';
import 'package:lector_qr/widgets/custom_navigatorbar.dart';

import '../widgets/scan_botton.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Historial'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever))
          ],
        ),
        body: _HomePageBody(),
        bottomNavigationBar: CustomNavigationBar(),
        floatingActionButton: ScanButton(),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked);
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    const currentIndex = 1;

    switch (currentIndex) {
      case 0:
        return MapsPage();
      case 1:
        return DireccionesPage();

      default:
        return MapsPage();
    }
  }
}

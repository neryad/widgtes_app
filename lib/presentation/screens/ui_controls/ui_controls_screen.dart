import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UIControlView(),
    );
  }
}

class _UIControlView extends StatefulWidget {
  const _UIControlView({
    super.key,
  });

  @override
  State<_UIControlView> createState() => _UIControlViewState();
}

enum Transportation { car, plane, boat, submariene }

class _UIControlViewState extends State<_UIControlView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakFast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            value: isDeveloper,
            title: const Text('Developer Mode'),
            subtitle: const Text('Controles adicionales'),
            onChanged: (value) {
              setState(() {
                isDeveloper = !isDeveloper;
              });
            }),
        ExpansionTile(
          title: const Text('Vehículo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
                title: const Text('By car'),
                subtitle: const Text('Viajar por carro'),
                value: Transportation.car,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.car;
                  });
                }),
            RadioListTile(
                title: const Text('By boat'),
                subtitle: const Text('Viajar por bote'),
                value: Transportation.boat,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.boat;
                  });
                }),
            RadioListTile(
                title: const Text('By Plane'),
                subtitle: const Text('Viajar por avion'),
                value: Transportation.plane,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.plane;
                  });
                }),
            RadioListTile(
                title: const Text('By submarine'),
                subtitle: const Text('Viajar por submarino'),
                value: Transportation.submariene,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.submariene;
                  });
                }),
          ],
        ),
        CheckboxListTile(
            title: const Text('Quiere Desayuno'),
            value: wantsBreakFast,
            onChanged: (value) {
              setState(() {
                wantsBreakFast = !wantsBreakFast;
              });
            }),
        CheckboxListTile(
            title: const Text('Quiere Almuerzo'),
            value: wantsLunch,
            onChanged: (value) {
              setState(() {
                wantsLunch = !wantsLunch;
              });
            }),
        CheckboxListTile(
            title: const Text('Quiere Cena'),
            value: wantsDinner,
            onChanged: (value) {
              setState(() {
                wantsDinner = !wantsDinner;
              });
            }),
      ],
    );
  }
}

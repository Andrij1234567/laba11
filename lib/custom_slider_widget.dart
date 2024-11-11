import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'slider_provider.dart';

class CustomSliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SliderProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSlider("TL", provider.topLeft, provider.setTopLeft),
            SizedBox(width: 20),
            buildSlider("TR", provider.topRight, provider.setTopRight),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSlider("BL", provider.bottomLeft, provider.setBottomLeft),
            SizedBox(width: 20),
            buildSlider("BR", provider.bottomRight, provider.setBottomRight),
          ],
        ),
      ],
    );
  }

  Widget buildSlider(String label, double value, onChanged) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "$label: ${value.toStringAsFixed(2)}",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Slider(
          value: value,
          min: 0,
          max: 100,
          onChanged: onChanged,
          activeColor: Colors.purple,
          inactiveColor: Colors.grey.shade300,
          thumbColor: Colors.purple,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:multiline_provider/Provider/sliderProvider.dart';
import 'package:provider/provider.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<SliderProvider>(context, listen: false);
    print('build');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiline Provider Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(
            builder: (context, val, child) => Slider(
                min: 0,
                max: 1,
                value: val.value,
                onChanged: (vale) {
                  val.getValue(vale);
                }),
          ),
          Row(
            children: [
              Expanded(
                child: Consumer<SliderProvider>(
                  builder: (context, val, child) => Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent.withOpacity(val.value)),
                    child: const Center(child: Text('Container 1')),
                  ),
                ),
              ),
              Expanded(
                child: Consumer<SliderProvider>(
                  builder: (context, val, child) => Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(val.value)),
                    child: const Center(child: Text('Container 2')),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

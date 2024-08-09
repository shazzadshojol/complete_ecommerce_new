import 'dart:math';

import 'package:flutter/material.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0, _height = 170, _age = 23, _weight = 65;

  double _bmi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: _bodyUi(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _bmi = _weight / pow(_height / 100, 2);
          });
        },
        child: const Icon(Icons.calculate),
      ),
    );
  }

  Widget _bodyUi() {
    return Column(
      children: [
        _genderSelector(),
        _heightSlider(),
        _ageAndWeight(),
        _resultsSection()
      ],
    );
  }

  Container _resultsSection() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.blue.shade200, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text('Your Result',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            SizedBox(height: 10),
            Text(
              '$_bmi',
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }

  Row _ageAndWeight() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [_weightCount(), _ageCount()],
    );
  }

  Widget _weightCount() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.blue.shade200, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text('Weight',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ItemCount(
                initialValue: _weight,
                minValue: 35,
                maxValue: 200,
                onChanged: (value) {
                  setState(() {
                    _weight = value.toInt();
                  });
                },
                decimalPlaces: 0)
          ],
        ),
      ),
    );
  }

  Widget _ageCount() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.blue.shade200, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text('Age',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ItemCount(
                initialValue: _age,
                minValue: 1,
                maxValue: 100,
                onChanged: (value) {
                  setState(() {
                    _age = value.toInt();
                  });
                },
                decimalPlaces: 0)
          ],
        ),
      ),
    );
  }

  Widget _heightSlider() {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.blue.shade200, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'Height',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Slider(
                min: 10,
                max: 300,
                divisions: 300,
                value: _height.toDouble(),
                onChanged: (value) {
                  setState(() {
                    _height = value.toInt();
                  });
                }),
            Text('$_height cm', style: TextStyle()),
          ],
        ),
      ),
    );
  }

  Widget _genderSelector() {
    return Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.blue.shade200,
            borderRadius: BorderRadius.circular(15)),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                    icon: Icon(
                      Icons.male,
                      size: 60,
                      color: _selectedIndex == 0 ? Colors.blue : Colors.red,
                    ),
                  ),
                  const Text('Male',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                    icon: Icon(
                      Icons.female,
                      size: 60,
                      color: _selectedIndex == 1 ? Colors.blue : Colors.red,
                    ),
                  ),
                  const Text(
                    'Female',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ]));
  }
}

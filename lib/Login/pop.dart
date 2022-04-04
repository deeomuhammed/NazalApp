import 'package:flutter/material.dart';

class cl extends StatefulWidget {
  const cl({Key? key}) : super(key: key);

  @override
  State<cl> createState() => _clState();
}

class _clState extends State<cl> {
  int? selectedvalue;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedvalue = 0;
  }

  select(int? val) {
    setState(() {
      selectedvalue = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      width: 50,
      child: Column(
        children: [
          RadioListTile<int>(
            activeColor: Colors.green,
            value: 1,
            groupValue: selectedvalue,
            onChanged: (val) {
              select(val);
            },
            title: const Text('Student'),
          ),
          RadioListTile<int>(
            activeColor: Colors.green,
            value: 2,
            groupValue: selectedvalue,
            onChanged: (val) {
              select(val);
            },
            title: const Text('Student'),
          )
        ],
      ),
    );
  }
}

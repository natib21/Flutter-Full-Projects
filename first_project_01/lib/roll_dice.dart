import 'package:flutter/material.dart';

class RoleDice extends StatefulWidget {
  const RoleDice({super.key});
  @override
  State<RoleDice> createState() {
    return _RoleDiceState();
  }
}

class _RoleDiceState extends State<RoleDice> {
  var srcImage = 'assets/images/dice-1.png';

  void roledice() {
    setState(() {
      srcImage = 'assets/images/dice-2.png';
    });
    print("Hello World");
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          srcImage,
          width: 200,
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28)),
            onPressed: roledice,
            child: Text('Roll dice!'))
      ],
    );
  }
}

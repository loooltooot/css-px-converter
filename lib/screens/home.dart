import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _pxS = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Px —> vh & vw converter'),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
            const Text('px'),
            Container(
              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: TextField(
                onChanged: (value) {
                  if(value.isEmpty) {
                    _pxS = '0';
                  } else {
                    _pxS = value;
                  }
                  setState(() {});
                },
              ),
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                border: Border.fromBorderSide(
                  BorderSide(
                    color: Theme.of(context).focusColor,
                    width: 4,
                  )
                ),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  Text('${(((int.tryParse(_pxS) ?? 0) / 1920) * 10000).ceil() / 100} vw'),
                  Text('${(((int.tryParse(_pxS) ?? 0) / 1080) * 10000).ceil() / 100} vh')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

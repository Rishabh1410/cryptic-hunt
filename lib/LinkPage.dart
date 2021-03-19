import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LinkPage extends StatelessWidget {
  final String link = 'link';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/c.png'),
            Text(
              'Riddle solved',
              style: TextStyle(fontSize: 30, fontFamily: 'Countryside'),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(link),
              InkWell(
                  onTap: () {
                    Clipboard.setData(ClipboardData(text: link))
                        .then((value) => {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(
                                    'Text copied, kindly paste this link in your browser'),
                                backgroundColor: Colors.red[300],
                              ))
                            });
                  },
                  child: ImageIcon(
                    AssetImage('assets/images/copy.png'),
                  ))
            ])
          ],
        ),
      ),
    );
  }
}

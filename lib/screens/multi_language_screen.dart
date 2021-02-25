import 'package:flutter/material.dart';
import 'package:multi_language/widgets/item_text.dart';
import 'package:easy_localization/easy_localization.dart';

class MultiLanguageScreen extends StatefulWidget {
  @override
  _MultiLanguageState createState() => _MultiLanguageState();
}

class _MultiLanguageState extends State<MultiLanguageScreen> {
  bool isID = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multi Language'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            ItemText(value: 'name'),
            ItemText(value: 'gender'),
            ItemText(value: 'age'),
            ItemText(value: 'favorite'),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text(isID == true ? 'English' : 'Indonesia'),
              onPressed: () {
                context.locale =
                    isID == true ? Locale('en', 'US') : Locale('id', 'ID');
                setState(() {
                  isID = !isID;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

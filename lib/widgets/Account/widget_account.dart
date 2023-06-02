import 'package:flutter/material.dart';
import 'package:web_view/widgets/account/Account_widgets/widget_myglossaryorder.dart';

import 'Account_widgets/widget_myfoodorder.dart';

class ScreenAccount extends StatelessWidget {
  const ScreenAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xffF5F5F5),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            color: const Color(0xff808080).withOpacity(0.1),
            width: 1.0,
          ),
        ),
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              margin: const EdgeInsets.all(10),
              child: ListTile(
                leading: const Icon(Icons.food_bank),
                title: const Text('My Food Orders'),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WidgetMyFoodOrder(),
                    ),
                  );
                },
              ),
            ),
            Divider(
              thickness: 1,
              color: const Color(0xff808080).withOpacity(0.2),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              margin: const EdgeInsets.all(10),
              child: ListTile(
                leading: const Icon(Icons.book),
                title: const Text('My Glossary Orders'),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WidgetMyGlossaryOrder(),
                    ),
                  );
                },
              ),
            ),
            Divider(
              thickness: 1,
              color: const Color(0xff808080).withOpacity(0.2),
            )
          ],
        ),
      ),
    );
  }
}

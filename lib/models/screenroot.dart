import 'package:flutter/material.dart';
import 'package:web_view/widgets/Account/Account_widgets/widget_myfoodorder.dart';
import '../widgets/food order/widget_zomato.dart';


class ScreenRoot extends StatefulWidget {
  const ScreenRoot({Key? key}) : super(key: key);

  @override
  State<ScreenRoot> createState() => _ScreenRootState();
}

class _ScreenRootState extends State<ScreenRoot> {
  List<Widget> listScreens = [
    const ScreenYummys(),
    // const ScreenGrocery(),  //Grocery 
    const WidgetMyFoodOrder(),
  ];
  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (listScreens.isNotEmpty) listScreens[currentIndex],
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Food Order',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.book),
          //   label: 'Grocery',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

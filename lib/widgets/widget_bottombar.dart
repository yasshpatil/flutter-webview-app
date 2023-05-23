// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:provider/provider.dart';
// import '../../models/model_provider.dart';
// import '../themes/themes.dart';

// class WidgetBottomNav extends StatelessWidget {
//   const WidgetBottomNav({ Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(blurRadius: 40, color: ThemeColor.dark.withOpacity(0.2)),
//         ],
//       ),
//       child: Consumer<ModelProvider>(
//         builder: (context, provider, child) => BottomNavigationBar(
//           currentIndex: provider.getCurrentIndex(),
//           onTap: (value) {
//             provider.setCurrentIndex(value);
//           },
//           selectedItemColor: ThemeColor.primary,
//           selectedLabelStyle: const TextStyle(
//             fontWeight: FontWeight.w600,
//             fontSize: 12,
//           ),
//           showUnselectedLabels: true,
//           unselectedItemColor: Theme.of(context).textTheme.caption?.color,
//           type: BottomNavigationBarType.fixed,
//           items: [
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset(
//                 'assets/svg/icons/cepe.svg',
//                 color: provider.getCurrentIndex() == 0
//                     ? ThemeColor.primary
//                     : Theme.of(context).textTheme.caption?.color,
//               ),
//               label: 'Zomato',
//             ),
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset(
//                 'assets/svg/icons/score.svg',
//                 color: provider.getCurrentIndex() == 1
//                     ? ThemeColor.primary
//                     : Theme.of(context).textTheme.caption?.color,
//               ),
//               label: 'Glossary',
//             ),
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset(
//                 'assets/svg/icons/insights.svg',
//                 color: provider.getCurrentIndex() == 2
//                     ? ThemeColor.primary
//                     : Theme.of(context).textTheme.caption?.color,
//               ),
//               label: 'Accounts',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

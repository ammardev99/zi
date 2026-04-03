// import 'package:flutter/material.dart';
// import 'package:zi/web_view/sections/header.dart';
// import 'package:zi/web_view/site/components/tabs.dart.dart';
// import 'package:zi/web_view/sections/right_side_bar.dart';
// import 'package:zi/widgets/content_body.dart';
// import 'package:zi/widgets/utiles.dart';
// import 'package:zi/widgets/wrapper.dart';
// import 'package:zi_core/zi_core_io.dart';

// class WebCollection extends StatefulWidget {
//   const WebCollection({super.key});

//   @override
//   State<WebCollection> createState() => _WebCollectionState();
// }

// class _WebCollectionState extends State<WebCollection> {
//   int selectedIndex = 0;

//   List<WebTabItem> items = tabOptionsList;

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         // breakpoint (you can adjust)
//         bool isDesktop = constraints.maxWidth > 800;
//         bool showRightSidebar = constraints.maxWidth > 1100;

//         if (isDesktop) {
//           return _buildDesktop();
//         } else {
//           return _buildMobile();
//         }
//       },
//     );
//   }

//   // ---------------- DESKTOP ----------------
//   Widget _buildDesktop() {
//     final item = items[selectedIndex];

//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(15),
//         child: Column(
//           children: [
//             // NavBar(),
//             Header(),
//             Expanded(
//               child: Row(
//                 children: [
//                   // LEFT SIDEBAR
//                   ContentBody(
//                     width: 250,
//                     child: ListView.separated(
//                       itemCount: items.length,
//                       itemBuilder: (context, index) {
//                         bool isSelected = index == selectedIndex;
//                         return SideTab(
//                           label: items[index].label,
//                           isActive: isSelected,
//                           onTap: () {
//                             setState(() {
//                               selectedIndex = index;
//                             });
//                           },
//                         );
//                       },
//                       separatorBuilder: (_, __) => const SizedBox(height: 8),
//                     ),
//                   ),

//                   // MAIN CONTENT
//                   Expanded(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         border: Border(
//                           left: BorderSide(color: ZiColors.border),
//                           right: BorderSide(color: ZiColors.border),
//                         ),
//                       ),
//                       child: WebContentWrapper(
//                         title: item.label,
//                         child: item.page,
//                       ),
//                     ),
//                   ),

//                   // RIGHT SIDEBAR
//                   // dont show on tab
                  
//                   const RightSideBar(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // ---------------- MOBILE ----------------
//   Widget _buildMobile() {
//     return Scaffold(
//       appBar: AppBar(title: Text("Zi Components")),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return CollectionTab(
//             label: items[index].label,
//             page: items[index].page,
//           );

//           // ListTile(
//           //   title: Text(items[index].label),
//           //   onTap: () {
//           //     Navigator.push(
//           //       context,
//           //       MaterialPageRoute(builder: (_) => items[index].page),
//           //     );
//           //   },
//         },
//       ),
//     );
//   }
// }

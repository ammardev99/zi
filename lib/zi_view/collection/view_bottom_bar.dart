// add pkg flutter pub add awesome_bottom_bar
import 'package:flutter/material.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:zi_core/zi_core.dart';

const List<TabItem> items = [
  TabItem(icon: Icons.home, title: 'Home'),
  TabItem(icon: Icons.search_sharp, title: 'Shop'),
  TabItem(icon: Icons.favorite_border, title: 'Wishlist'),
  TabItem(icon: Icons.shopping_cart_outlined, title: 'Cart'),
  TabItem(icon: Icons.account_box, title: 'profile'),
];

class ViewBottomBars extends StatefulWidget {
  const ViewBottomBars({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ViewBottomBarsState createState() => _ViewBottomBarsState();
}

class _ViewBottomBarsState extends State<ViewBottomBars> {
  int visit = 0;
  double height = 30;
  Color colorSelect = const Color(0XFF0686F8);
  Color color = const Color(0XFF7AC0FF);
  Color color2 = const Color(0XFF96B1FD);
  Color bgColor = const Color(0XFF1752FE);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Bottom Bar Collection")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            SectionDivider(label: "Intresting Bottom Bars"),

            SizedBox(height: height),
            //1
            BottomBarInspiredOutside(
              items: items,
              backgroundColor: bgColor,
              color: color2,
              colorSelected: Colors.white,
              indexSelected: visit,
              onTap:
                  (int index) => setState(() {
                    visit = index;
                  }),
              top: -25,
              animated: true,
              itemStyle: ItemStyle.hexagon,
              chipStyle: const ChipStyle(drawHexagon: true),
            ),
            SizedBox(height: height),
            //2
            BottomBarInspiredOutside(
              items: items,
              backgroundColor: bgColor,
              color: color2,
              colorSelected: Colors.white,
              indexSelected: visit,
              onTap:
                  (int index) => setState(() {
                    visit = index;
                  }),
              top: -28,
              animated: false,
              itemStyle: ItemStyle.circle,
              chipStyle: const ChipStyle(
                notchSmoothness: NotchSmoothness.sharpEdge,
              ),
            ),
            SizedBox(height: height),
            //3
            BottomBarInspiredOutside(
              items: items,
              backgroundColor: bgColor,
              color: color2,
              colorSelected: Colors.white,
              indexSelected: visit,
              onTap:
                  (int index) => setState(() {
                    visit = index;
                  }),
              top: -28,
              animated: false,
              itemStyle: ItemStyle.circle,
            ),
            SizedBox(height: height),

            BottomBarInspiredOutside(
              items: items,
              backgroundColor: bgColor,
              color: color2,
              colorSelected: Colors.white,
              indexSelected: visit,
              onTap:
                  (int index) => setState(() {
                    visit = index;
                  }),
              top: -28,
              animated: false,
              itemStyle: ItemStyle.circle,
              chipStyle: const ChipStyle(
                notchSmoothness: NotchSmoothness.smoothEdge,
              ),
            ),
            SizedBox(height: height),
            //4
            BottomBarInspiredOutside(
              items: items,
              backgroundColor: bgColor,
              color: color2,
              colorSelected: Colors.white,
              indexSelected: visit,
              onTap:
                  (int index) => setState(() {
                    visit = index;
                  }),
              top: -28,
              animated: false,
              itemStyle: ItemStyle.circle,
              chipStyle: const ChipStyle(
                notchSmoothness: NotchSmoothness.verySmoothEdge,
              ),
            ),
            SizedBox(height: height),
            //5
            BottomBarInspiredInside(
              items: items,
              backgroundColor: bgColor,
              color: color2,
              colorSelected: Colors.white,
              indexSelected: visit,
              onTap:
                  (int index) => setState(() {
                    visit = index;
                  }),
              chipStyle: const ChipStyle(convexBridge: true),
              itemStyle: ItemStyle.circle,
              animated: false,
            ),
            SizedBox(height: height),

            //7
            BottomBarInspiredInside(
              items: items,
              backgroundColor: bgColor,
              color: color2,
              colorSelected: Colors.white,
              indexSelected: visit,
              onTap:
                  (int index) => setState(() {
                    visit = index;
                  }),
              animated: false,
              chipStyle: const ChipStyle(isHexagon: true, convexBridge: true),
              itemStyle: ItemStyle.hexagon,
            ),

            SizedBox(height: height),
            BottomBarCreative(
              items: items,
              backgroundColor: Colors.green.withValues(alpha: 0.21),
              color: color,
              colorSelected: colorSelect,
              indexSelected: visit,
              onTap:
                  (int index) => setState(() {
                    visit = index;
                  }),
            ),
            SizedBox(height: height),
            BottomBarCreative(
              items: items,
              backgroundColor: Colors.green.withValues(alpha: 0.21),
              color: color,
              colorSelected: colorSelect,
              indexSelected: visit,
              highlightStyle: const HighlightStyle(isHexagon: true),
              onTap:
                  (int index) => setState(() {
                    visit = index;
                  }),
            ),
            SizedBox(height: height),
            BottomBarCreative(
              items: items,
              backgroundColor: Colors.green.withValues(alpha: 0.21),
              color: color,
              colorSelected: colorSelect,
              indexSelected: visit,
              isFloating: true,
              onTap:
                  (int index) => setState(() {
                    visit = index;
                  }),
            ),
            SizedBox(height: height),
            BottomBarCreative(
              items: items,
              backgroundColor: Colors.green.withValues(alpha: 0.21),
              color: color,
              colorSelected: colorSelect,
              indexSelected: visit,
              isFloating: true,
              highlightStyle: const HighlightStyle(
                sizeLarge: true,
                background: Colors.red,
                elevation: 3,
              ),
              onTap:
                  (int index) => setState(() {
                    visit = index;
                  }),
            ),
            SizedBox(height: height),

            BottomBarCreative(
              items: items,
              backgroundColor: Colors.green.withValues(alpha: 0.21),
              color: color,
              colorSelected: colorSelect,
              indexSelected: visit,
              isFloating: true,
              highlightStyle: const HighlightStyle(
                sizeLarge: true,
                isHexagon: true,
                elevation: 2,
              ),
              onTap:
                  (int index) => setState(() {
                    visit = index;
                  }),
            ),
            SizedBox(height: height),
            BottomBarInspiredFancy(
              items: items,
              backgroundColor: Colors.green.withValues(alpha: 0.21),
              color: color,
              colorSelected: colorSelect,
              indexSelected: visit,
              onTap:
                  (int index) => setState(() {
                    visit = index;
                  }),
            ),
            SizedBox(height: height),
            BottomBarInspiredFancy(
              items: items,
              backgroundColor: Colors.green.withValues(alpha: 0.21),
              color: color,
              colorSelected: colorSelect,
              indexSelected: visit,
              styleIconFooter: StyleIconFooter.dot,
              onTap:
                  (int index) => setState(() {
                    visit = index;
                  }),
            ),
            SizedBox(height: height),
            BottomBarDivider(
              items: items,
              backgroundColor: Colors.amber,
              color: Colors.grey,
              colorSelected: Colors.blue,
              indexSelected: visit,
              onTap:
                  (index) => setState(() {
                    visit = index;
                  }),
              styleDivider: StyleDivider.bottom,
              countStyle: const CountStyle(
                background: Colors.white,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: height),
            SectionDivider(label: "Cut Bars"),
            // BottomBarSalomon(
            //   items: items,
            //   color: Colors.blue,
            //   backgroundColor: Colors.white,
            //   colorSelected: Colors.white,
            //   backgroundSelected: Colors.blue,
            //   borderRadius: BorderRadius.circular(0),
            //   indexSelected: visit,
            //   onTap:
            //       (index) => setState(() {
            //         visit = index;
            //       }),
            // ),
            SectionDivider(label: "Zi Bars"),
            ZiBottomBar(
              items: items,
              currentIndex: visit,
              onTap: (i) => setState(() => visit = i),
              type: ZiBottomBarType.fancy,
              style: ZiBottomBarStyle.defaultStyle(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 15, right: 15, left: 15),
        child: BottomBarFloating(
          items: items,
          backgroundColor: Colors.black.withValues(alpha: 0.8),
          color: Colors.white,
          colorSelected: Colors.orange,
          indexSelected: visit,
          paddingVertical: 24,
          onTap:
              (int index) => setState(() {
                visit = index;
              }),
        ),
      ),
    );
  }
}

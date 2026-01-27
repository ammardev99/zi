import 'package:flutter/material.dart';
import 'package:zi/zi_core/zi_core_io.dart';

class MenuOptions extends StatefulWidget {
  const MenuOptions({super.key});

  @override
  State<MenuOptions> createState() => _MenuOptionsState();
}

class _MenuOptionsState extends State<MenuOptions> {
  final openTestPage = ZiTapAction(
    type: ZiTapActionType.openPage,
    // page: const TestPage(),
  );

  bool themeS = false;
  bool notificationsS = true;

  @override
  Widget build(BuildContext context) {
    return ZiScaffold(
      appBar: ZiAppBar(title: "Menu Options"),
      body: ListView(
        shrinkWrap: true,
        children: [
          // Section 1: Basic User Menu
          SectionDivider(label: "User Menu 1.0"),
          Column(
            children: [
              ZiMenuTile1(
                icon: Icons.person,
                label: "Edit Profile",
                action: openTestPage,
              ),
              ZiMenuTile1(
                icon: Icons.info,
                label: "About Us",
                action: openTestPage,
              ),
              ZiMenuTile1(
                icon: Icons.star_rate,
                label: "Rate App",
                action: openTestPage,
              ),
              ZiMenuTile1(
                icon: Icons.share,
                label: "Share App",
                action: openTestPage,
              ),
              ZiMenuTile1(
                icon: Icons.settings,
                label: "Settings",
                action: openTestPage,
              ),
            ],
          ),

          // Section 2: Grouped menu with border
          SectionDivider(label: "User Menu 1.1"),
          ZiMenuGroup(
            tiles: [
              ZiMenuTile1(
                icon: Icons.person,
                label: "Edit Profile",
                action: openTestPage,
              ),
              ZiMenuTile1(
                icon: Icons.info,
                label: "About Us",
                action: openTestPage,
              ),
              ZiMenuTile1(
                icon: Icons.star_rate,
                label: "Rate App",
                action: openTestPage,
              ),
              ZiMenuTile1(
                icon: Icons.share,
                label: "Share App",
                action: openTestPage,
              ),
              ZiMenuTile1(
                icon: Icons.settings,
                label: "Settings",
                action: openTestPage,
                showBorderbottom: false,
              ),
            ],
          ),

          // Section 3: Menu with switch and different options
          SectionDivider(label: "User Menu 1.2"),
          ZiMenuGroup(
            bgColor: ZiColors.forground,
            tiles: [
              ZiMenuTile1(
                icon: themeS ? Icons.light_mode : Icons.dark_mode,
                label: "Theme Switch",
                action: openTestPage,
                trailingWidget: Switch(
                  activeColor: ZiColors.black,
                  value: themeS,
                  onChanged: (v) {
                    themeS = v;
                    setState(() {});
                  },
                ),
              ),
              ZiMenuTile1(
                icon: Icons.notifications,
                label: "Notifications",
                action: openTestPage,
                trailingWidget: Switch(
                  activeColor: Colors.green,
                  value: notificationsS,
                  onChanged: (v) {
                    notificationsS = v;
                    setState(() {});
                  },
                ),
              ),
              ZiMenuTile1(
                icon: Icons.phone,
                label: "Contact Us",
                action: openTestPage,
              ),
              ZiMenuTile1(
                icon: Icons.lock,
                label: "Privacy Policy",
                action: openTestPage,
              ),
              ZiMenuTile1(
                icon: Icons.help,
                label: "Help & Support",
                action: openTestPage,
                showBorderbottom: false,
              ),
            ],
          ),

          // Section 4: Separated menu
          SectionDivider(label: "User Menu 1.3"),
          Column(
            children: [
              ZiMenuTile1(
                icon: Icons.person,
                label: "Profile",
                action: openTestPage,
                seprated: true,
              ),
              ZiMenuTile1(
                icon: Icons.info,
                label: "About",
                action: openTestPage,
                seprated: true,
              ),
              ZiMenuTile1(
                icon: Icons.star_rate,
                label: "Rate App",
                action: openTestPage,
                seprated: true,
              ),
              ZiMenuTile1(
                icon: Icons.share,
                label: "Share",
                action: openTestPage,
                seprated: true,
              ),
              ZiMenuTile1(
                icon: Icons.settings,
                label: "Settings",
                action: openTestPage,
                seprated: true,
              ),
            ],
          ),

          // Section 5: Another group with custom styling
          SectionDivider(label: "User Menu 1.4"),
          ZiMenuGroup(
            tiles: [
              ZiMenuTile1(
                icon: Icons.person,
                label: "Edit Profile",
                action: openTestPage,
                seprated: true,
              ),
              ZiMenuTile1(
                icon: Icons.info,
                label: "About Us",
                action: openTestPage,
                seprated: true,
              ),
              ZiMenuTile1(
                icon: Icons.star_rate,
                label: "Rate App",
                action: openTestPage,
                seprated: true,
              ),
              ZiMenuTile1(
                icon: Icons.share,
                label: "Share App",
                action: openTestPage,
                seprated: true,
              ),
              ZiMenuTile1(
                icon: Icons.settings,
                label: "Settings",
                action: openTestPage,
                seprated: true,
              ),
            ],
          ),

          SectionDivider(label: "---End---"),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

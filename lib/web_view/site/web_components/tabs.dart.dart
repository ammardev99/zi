// lib/web_view/web_app.dart

import 'package:zi/widgets/utiles.dart';

import '../../../zi_view/zi_view_io.dart';

final List<WebTabItem> tabOptionsList = [
  // ─────────────────────────────────────────
  // 🟢 INTRODUCTION
  // ─────────────────────────────────────────
  // WebTabItem(label: "Pickers", page: ZiPickersView(), isInDev: true),
  // ─────────────────────────────────────────
  WebTabItem(label: "About Zi Core", page: ZiAboutView(), isInDev: false),
  // WebTabItem(label: "Welcome", page: ZiWelcomePage()), // 🔜 Add intro landing pa, isInDev: truege

  // ─────────────────────────────────────────
  // 🟣 FOUNDATION (Design System)
  // ─────────────────────────────────────────
  WebTabItem(label: "Theme Colors", page: ThemeColorsPage(), isInDev: false),
  WebTabItem(label: "Typography", page: TypographyPage(), isInDev: false),
  // WebTabItem(label: "Spacing System", page: ZiSpacingPage()), //, isInDev: true 🔜
  // WebTabItem(label: "Shadows & Elevation", page: ZiElevationPage()), //, isInDev: true 🔜

  // ─────────────────────────────────────────
  // 🔵 ACTIONS
  // ─────────────────────────────────────────
  WebTabItem(label: "Buttons", page: ViewButtons(), isInDev: false),
  WebTabItem(label: "Menu Options", page: MenuOptions(), isInDev: false),
  WebTabItem(
    label: "Elevated Actions",
    page: ElevatedActionsView(),
    isInDev: false,
  ),

  // ─────────────────────────────────────────
  // 🟡 INPUTS & FORMS
  // ─────────────────────────────────────────
  WebTabItem(label: "Inputs", page: ViewZiInputs(), isInDev: false),
  // WebTabItem(label: "Pickers", page: ZiPickersView(), isInDev: true),
  WebTabItem(label: "Selections", page: ViewSelections(), isInDev: false),
  // WebTabItem(label: "Form Validation", page: ZiFormValidationPage()), //, isInDev: true 🔜
  // WebTabItem(label: "Form Layouts", page: ZiFormLayoutsPage()), //, isInDev: true 🔜

  // ─────────────────────────────────────────
  // 🟠 NAVIGATION
  // ─────────────────────────────────────────
  // WebTabItem(label: "Tabs", page: ViewTabs(), isInDev: true),
  WebTabItem(label: "Bottom Bars", page: ViewBottomBars(), isInDev: false),
  // WebTabItem(label: "Sidebar Navigation", page: ZiSidebarPage()), //, isInDev: true 🔜
  // WebTabItem(label: "Routing System", page: ZiRoutingPage()), //, isInDev: true 🔜

  // ─────────────────────────────────────────
  // 🔴 FEEDBACK & STATES
  // ─────────────────────────────────────────
  WebTabItem(label: "Loadings", page: ViewLoadings(), isInDev: false),
  WebTabItem(label: "SnackBar", page: ZiSnackBarView(), isInDev: false),
  // WebTabItem(label: "Dialogs", page: ZiDialogsPage()), //, isInDev: true 🔜
  // WebTabItem(label: "Empty States", page: ZiEmptyStatePage()), //, isInDev: true 🔜

  // ─────────────────────────────────────────
  // 🟤 MEDIA
  // ─────────────────────────────────────────
  // WebTabItem(label: "Images", page: ViewMediaImagesPage(), isInDev: true),
  WebTabItem(label: "Icons", page: IconsView(), isInDev: false),
  // WebTabItem(label: "Icons", page: ZiIconsPage()), //, isInDev: true 🔜
  // WebTabItem(label: "Avatars", page: ZiAvatarPage()), //, isInDev: true 🔜

  // ─────────────────────────────────────────
  // ⚫ ADVANCED COMPONENTS
  // ─────────────────────────────────────────
  // WebTabItem(label: "Feed Overlays", page: ViewFeedOver(), isInDev: true),
  // WebTabItem(label: "Modular Cards", page: ZiCardsPage()), //, isInDev: true 🔜
  // WebTabItem(label: "Dynamic Lists", page: ZiListsPage()), //, isInDev: true 🔜

  // ─────────────────────────────────────────
  // ⚙️ SYSTEM / UTILITIES
  // ─────────────────────────────────────────
  // WebTabItem(label: "Responsive System", page: ZiResponsivePage()), //, isInDev: true 🔜
  // WebTabItem(label: "Theme Switching", page: ZiThemeSwitchPage()), //, isInDev: true 🔜

  // ─────────────────────────────────────────
  // 🧪 TESTING / DEV
  // ─────────────────────────────────────────
  // WebTabItem(label: "Test Page", page: ViewTestPage(), isInDev: true),

  // ─────────────────────────────────────────
  // 🚀 FUTURE / EXPERIMENTAL
  // ─────────────────────────────────────────
  // WebTabItem(label: "Feed Over (Legacy)", page: FeedOverView()), //, isInDev: true 🧪
  // WebTabItem(label: "Splash Screen", page: SplashScreen()), //, isInDev: true 🔜
];

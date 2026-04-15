// lib/web_view/web_app.dart

import 'package:zi/widgets/utiles.dart';

import '../../../zi_view/zi_view_io.dart';

final List<WebTabItem> tabOptionsList = [
  // ─────────────────────────────────────────
  // 🟢 INTRODUCTION
  // ─────────────────────────────────────────
  WebTabItem(label: "Pickers", page: ZiPickersView()),
  // ─────────────────────────────────────────
  WebTabItem(label: "About Zi Core", page: ZiAboutView()),
  // WebTabItem(label: "Welcome", page: ZiWelcomePage()), // 🔜 Add intro landing page

  // ─────────────────────────────────────────
  // 🟣 FOUNDATION (Design System)
  // ─────────────────────────────────────────
  WebTabItem(label: "Theme Colors", page: ThemeColorsPage()),
  WebTabItem(label: "Typography", page: TypographyPage()),
  // WebTabItem(label: "Spacing System", page: ZiSpacingPage()), // 🔜
  // WebTabItem(label: "Shadows & Elevation", page: ZiElevationPage()), // 🔜

  // ─────────────────────────────────────────
  // 🔵 ACTIONS
  // ─────────────────────────────────────────
  WebTabItem(label: "Buttons", page: ViewButtons()),
  WebTabItem(label: "Menu Options", page: MenuOptions()),
  WebTabItem(label: "Elevated Actions", page: ElevatedActionsView()),

  // ─────────────────────────────────────────
  // 🟡 INPUTS & FORMS
  // ─────────────────────────────────────────
  WebTabItem(label: "Inputs", page: ViewZiInputs()),
  WebTabItem(label: "Pickers", page: ZiPickersView()),
  WebTabItem(label: "Selections", page: ViewSelections()),
  // WebTabItem(label: "Form Validation", page: ZiFormValidationPage()), // 🔜
  // WebTabItem(label: "Form Layouts", page: ZiFormLayoutsPage()), // 🔜

  // ─────────────────────────────────────────
  // 🟠 NAVIGATION
  // ─────────────────────────────────────────
  // WebTabItem(label: "Tabs", page: ViewTabs()),
  WebTabItem(label: "Bottom Bars", page: ViewBottomBars()),
  // WebTabItem(label: "Sidebar Navigation", page: ZiSidebarPage()), // 🔜
  // WebTabItem(label: "Routing System", page: ZiRoutingPage()), // 🔜

  // ─────────────────────────────────────────
  // 🔴 FEEDBACK & STATES
  // ─────────────────────────────────────────
  WebTabItem(label: "Loadings", page: ViewLoadings()),
  WebTabItem(label: "Status Toast", page: ZiStatusToastView()),
  // WebTabItem(label: "Dialogs", page: ZiDialogsPage()), // 🔜
  // WebTabItem(label: "Empty States", page: ZiEmptyStatePage()), // 🔜

  // ─────────────────────────────────────────
  // 🟤 MEDIA
  // ─────────────────────────────────────────
  WebTabItem(label: "Images", page: ViewMediaImagesPage()),
  WebTabItem(label: "Icons", page: IconsView()),
  // WebTabItem(label: "Icons", page: ZiIconsPage()), // 🔜
  // WebTabItem(label: "Avatars", page: ZiAvatarPage()), // 🔜

  // ─────────────────────────────────────────
  // ⚫ ADVANCED COMPONENTS
  // ─────────────────────────────────────────
  WebTabItem(label: "Feed Overlays", page: ViewFeedOver()),
  // WebTabItem(label: "Modular Cards", page: ZiCardsPage()), // 🔜
  // WebTabItem(label: "Dynamic Lists", page: ZiListsPage()), // 🔜

  // ─────────────────────────────────────────
  // ⚙️ SYSTEM / UTILITIES
  // ─────────────────────────────────────────
  // WebTabItem(label: "Responsive System", page: ZiResponsivePage()), // 🔜
  // WebTabItem(label: "Theme Switching", page: ZiThemeSwitchPage()), // 🔜

  // ─────────────────────────────────────────
  // 🧪 TESTING / DEV
  // ─────────────────────────────────────────
  // WebTabItem(label: "Test Page", page: ViewTestPage()),

  // ─────────────────────────────────────────
  // 🚀 FUTURE / EXPERIMENTAL
  // ─────────────────────────────────────────
  // WebTabItem(label: "Feed Over (Legacy)", page: FeedOverView()), // 🧪
  // WebTabItem(label: "Splash Screen", page: SplashScreen()), // 🔜
];

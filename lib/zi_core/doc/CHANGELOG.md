# Zi EcoSystem - SDP

Zi Software Development Plan

## Contributors

- Product Owner - Ammar

---

- zi_core/widgets/ – Reusable UI components (buttons, inputs, layouts, navigation, feedback)
- zi_core/theme/ – Colors, text styles, spacing, radius, shadows, themes
- zi_core/utils/ – Helpers: date, network, logger, formatter, debounce
- zi_core/validators/ – Email, password, phone, required, generic validators
- zi_core/extensions/ – Productivity extensions for String, num, context
- zi_core/config/ – Env, build, and app configuration
- zi_core/localization/ – Multi-language support (en.json, ur.json)
- zi_core/z_assets/ – Centralized icons, illustrations, social assets
- cp_core/constants/ – Strings, routes, regex, API constants, storage keys

---

> Zi_Architechture

- zi_name_style     // can follow same design system
- zi_name_type      // can use in diffrent cases
- zi_get_name       // get used by main public widget
- zi_name_variant   // can be diffrent layout
architecture → consistency = maintainability.
- Visual
- Layout
- Behavior

> 29 Jan 2026

- Zi Bottom bar - awesome_bottom_bar: ^1.2.4 [link] {pub.dev/packages/awesome_bottom_bar}

- Awesome Bottom Bar
  - IOS
  - Android

- Intresting Styles
  - default
  - creative
  - creativeHexagon
  - floating
  - inspiredOutsideDeep
  - inspiredTop
  - salomon

- Others Styles
  - background
  - borderBottom
  - background
  - borderBottom
  - borderTop
  - bottomTop
  - creative
  - default
  - fancyBorder
  - fancyDot
  - fancyBorder
  - fancyDot
  - inspiredInside
  - floating
  - inspiredInside
  - inspiredInsideHexagon
  - inspiredOutSide
  - inspiredInsideHexagon
  - inspiredOutSide
  - inspiredOutSideHexagon
  - inspiredOutsideDeep
  - inspiredOutSideHexagon
  - inspiredOutsideRadius
  - inspiredTopHexagon
  - inspiredOutsideRadius
  - inspiredTopHexagon

- Introduced `ZiBottomBar` as a unified bottom navigation bar for Zi Ecosystem.
- Supports multiple styles via `ZiBottomBarType` (InspiredOutside, Creative, Fancy, Divider, etc.).
- Configurable design system through `ZiBottomBarStyle` (backgroundColor, activeColor, inactiveColor, elevation, animation).
- Wrappers for `awesome_bottom_bar` package implemented internally to ensure consistent API.
- Enables future expansion: floating icons, hexagon/diamond shapes, labels on/off.

> 28 Jan 2026

- zi_core/widgets/zi_inputs/
- zi_core/widgets/zi_forms/
- My Zi inputs
  - zi_input_style_variant  //
  - zi_input_layout         //
- Introduced a new unified `ZiInput` system with support for multiple variants:
  - outline
  - filled
  - underlined
  - stacked
- Added input style abstraction via `ZiInputStyle`
- Added variant-based decoration builder using `ZiInputStyleVariant`
- Added input type handling utilities (text, phone, password, etc.)
- Added `view_inputs` screen to showcase and test all input configurations

---

> 27 Jan 2026

- zi_buttons/
- zi_loadings/

✨ `Added`

- ZiLoading system
- Circular, Linear, Dots, Percent, and Skeleton loaders
- Theme-based and custom style variants
- Skeleton loaders
- List-based skeleton loading
- Grid-based skeleton loading with configurable columns & ratios
- Shimmer engine
- Shared shimmer animation for all skeleton loaders
- Loader overlay foundation
- Blocking overlay loader for async operations (login, submit, fetch)
- New UI kit components
- Section titles and dividers
- Menu option molecules
- Button and icon button refinements

🎨 `Updated`

- Theme tokens refactored
- Colors
- Radius
- Spacing
- Typography
- Theme IO
- Improved consistency across Zi widgets and layouts
- Updated widget exports (zi_widgets_io)

🧹 `Removed`

- Deprecated legacy loader widget
- Deprecated tab action organism
- Cleaned unused / experimental UI components

🧱 `Internal`

- Prepared foundation for:
- Input system (ZiInput, ZiInputType, ZiInputStyle)
- Controlled form validation
- Future overlay & feedback components

---

import 'package:flutter/material.dart';
import 'package:zi/widgets/content_body.dart';
import 'package:zi/widgets/utiles.dart';
import 'package:zi_core/zi_core_io.dart';

class WebSidebarRight extends StatelessWidget {
  const WebSidebarRight({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentBody(
      width: 280,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// ================= CORE SYSTEM =================
            SideInfoCard(
              title: "Zi Core System",
              description:
                  "Modular Flutter architecture for scalable apps, built for Web, Mobile & Desktop.",
            ),

            ziGap(10),

            SideInfoCard(
              title: "Version Control",
              description:
                  "Current ecosystem: v1.0.0 | Supports semantic versioning, CI/CD ready structure.",
            ),

            ziGap(10),

            /// ================= ARCHITECTURE =================
            SideInfoCard(
              title: "Architecture Pattern",
              description:
                  "Feature-based modular structure with reusable UI blocks, services & shared core layer.",
            ),

            ziGap(10),

            SideInfoCard(
              title: "State Management Ready",
              description:
                  "Compatible with Provider, Riverpod, Bloc or custom lightweight state systems.",
            ),

            ziGap(10),

            /// ================= DEVELOPMENT =================
            SideInfoCard(
              title: "Best Practices",
              description:
                  "Follow DRY, SOLID principles, reusable widgets, and clean separation of UI & logic layers.",
            ),

            ziGap(10),

            SideInfoCard(
              title: "Performance Focus",
              description:
                  "Optimized rebuilds, lazy rendering, and responsive layout system for all screen sizes.",
            ),

            ziGap(10),

            /// ================= SUPPORT =================
            SideInfoCard(
              title: "Need Help?",
              description:
                  "Reach out for debugging, architecture guidance, or UI/UX improvements.",
            ),

            ziGap(10),

            SideInfoCard(
              title: "Documentation",
              description:
                  "Full docs available for components, layout system, and reusable patterns.",
            ),

            ziGap(10),

            /// ================= FOOTER INSIGHT =================
            SideInfoCard(
              title: "Ecosystem Status",
              description:
                  "Stable core foundation. Actively evolving UI system for enterprise-grade applications.",
            ),
          ],
        ),
      ),
    );
  }
}
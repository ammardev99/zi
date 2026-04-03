// lib/web_view/web_app.dart

import 'package:flutter/material.dart';
import 'package:zi/widgets/content_body.dart';
import 'package:zi/widgets/utiles.dart';
import 'package:zi_core/zi_core_io.dart';

class RightSideBar extends StatelessWidget {
  const RightSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentBody(
      child: ListView(
        shrinkWrap: true,
        children: [
          SideInfoCard(
            title: "What is Zi Core?",
            description:
                "Zi Core is a scalable Flutter architecture and component system to accelerate app development. It give pre-built modules, structured UI patterns, and reusable logic to help teams build production-ready faster applications and more efficiently.",
          ),
          ziGap(10),
          SideInfoCard(
            title: "Why Choose Zi Core?",
            description:
                "Zi Core enforces clean architecture, modular ready and consistency across projects. It reduces development time, improves maintainability, and enables teams to scale apps with confidence using standardized patterns.",
          ),
          ziGap(10),
          SideInfoCard(
            title: "Custom Development",
            description:
                "We offer tailored solutions based on Zi Core to match your business requirements. From UI customization to feature-specific modules, everything can be adapted to fit your product vision.",
          ),
          ziGap(10),
          SideInfoCard(
            title: "Need Guidance?",
            description:
                "Follow the Zi Core development standards for best results. If you need help with implementation, architecture decisions, or scaling your app, our team is available to support you.",
          ),
        ],
      ),
    );
  }
}

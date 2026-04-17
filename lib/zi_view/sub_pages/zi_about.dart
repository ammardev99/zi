import 'package:flutter/material.dart';
import 'package:zi/doc/zi_meta.dart';
import 'package:zi_core/zi_core_io.dart';

class ZiAboutView extends StatelessWidget {
  const ZiAboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return ZiScaffoldB(
      showPagePadding: false,
      body: ListView(
        shrinkWrap: true,
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ZiSvgIcon(path: 'assets/logo.svg', size: 80),
          ziGap(20),
          Center(
            child: Text(
              "Welcome to Zi Core",
              style: ZiTypoStyles.titleXl,
              textAlign: TextAlign.center,
            ),
          ),
          ziGap(10),
          Center(
            child: Text(
              "Build scalable, production-ready apps faster with a structured Flutter architecture and reusable components.",
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),

          ziGap(30),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("What You Get", style: ZiTypoStyles.titleMd),

              ziGap(10),
              Text("• Pre-built UI components and layouts"),
              Text("• Modular architecture for clean code"),
              Text("• Scalable structure for teams and SaaS apps"),
              Text("• Ready-to-use forms, dashboards, and flows"),
            ],
          ),

          ziGap(20),

          Text("Start building faster. Maintain better. Scale smarter."),
          ziGap(10),
          Text(
            "Zi Core is a modular Flutter framework built to standardize app development across teams. It focuses on reusable UI components, clean architecture, and scalable project structure.Designed for startups, agencies, and SaaS products, Zi Core helps reduce development time while maintaining code quality and consistency. It’s ideal for teams looking to build production-ready apps faster without sacrificing maintainability. With Zi Core, you get a library of pre-built UI components, a modular architecture for clean code, and a scalable structure that can grow with your project. Whether you’re building a simple MVP or a complex enterprise app, Zi Core provides the tools and structure to help you succeed.",
          ),
          ziGap(30),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: BoxDecoration(
              border: Border(
                // ignore: deprecated_member_use
                top: BorderSide(color: Colors.grey.withOpacity(0.2)),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Contact & Support", style: ZiTypoStyles.titleMd),

                ziGap(12),

                SelectableText(
                  "📧 Email: ammardev99@gmail.com",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                ziGap(6),

                SelectableText(
                  "📱 Phone: +92 342 4264494",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                ziGap(6),

                SelectableText(
                  "🌐 Portfolio: https://be.net/AmmarDev99",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                ziGap(6),

                SelectableText(
                  "🔗 LinkedIn: https://www.linkedin.com/in/ammardev99",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                ziGap(20),

                Divider(),

                ziGap(10),

                Center(
                  child: SelectableText(
                    "© 2026 Zi Core. Built with Flutter. Designed for scalable applications. | ${ZiMeta.version} +${ZiMeta.push}",
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

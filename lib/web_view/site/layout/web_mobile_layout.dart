import 'package:flutter/material.dart';
import 'package:zi/web_view/sections/header.dart';
import 'package:zi/web_view/site/components/tabs.dart.dart';
import 'package:zi_core/zi_core_io.dart';

class WebMobileLayout extends StatelessWidget {
  const WebMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ZiScaffoldB(
      
      // appBar: AppBar(title: const Text("Zi Components")),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Header(),
              Column(
                children: tabOptionsList.map((item) {
                  return CollectionTab(
                    label: item.label,
                    page: item.page,
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
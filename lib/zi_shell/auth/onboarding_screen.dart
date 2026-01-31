import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _index = 0;

  final List<Map<String, String>> pages = [
    {
      'title': 'Welcome',
      'desc': 'Manage your work efficiently',
    },
    {
      'title': 'Secure',
      'desc': 'Your data is protected',
    },
    {
      'title': 'Get Started',
      'desc': 'Let’s create your account',
    },
  ];

  void _next() {
    if (_index == pages.length - 1) {
      Navigator.pushReplacementNamed(context, '/login');
    } else {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: pages.length,
              onPageChanged: (i) => setState(() => _index = i),
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.apps, size: 80),
                      const SizedBox(height: 24),
                      Text(pages[i]['title']!,
                          style: const TextStyle(fontSize: 24)),
                      const SizedBox(height: 12),
                      Text(
                        pages[i]['desc']!,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: _next,
              child: Text(_index == 2 ? 'Start' : 'Next'),
            ),
          )
        ],
      ),
    );
  }
}

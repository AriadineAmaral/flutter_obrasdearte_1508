import 'package:flutter/material.dart';
import 'package:obras_de_arte/routes.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final List<Map<String, String>> _pages = [
    {
      'title': 'Bem-vindo ao app',
      'subtitle': 'aprenda a usar o app passo a passo',
      'lottie': 'assets/lottie/intro1.json',
    },
    {
      'title': 'Funcionalidades',
      'subtitle': 'Explore as diversas funcionalidades',
      'lottie': 'assets/lottie/intro2.json',
    },
    {
      'title': 'Comece agora',
      'subtitle': 'Vamos começar a utilizar o app',
      'lottie': 'assets/lottie/intro3.json',
    },
  ];

  final PageController _pageController = PageController();
  int _currentPage = 0;
  bool _dontShowAgain = false;

  void _onNext() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: Duration(microseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      _finishIntro();
    }
  }

  void _finishIntro() {
    Navigator.pushReplacementNamed(context, Routes.home);
  }

  void _onBack() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: Duration(microseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLastpage = _currentPage == _pages.length - 1;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Placeholder()),
            if (isLastpage) Padding(padding: EdgeInsets.all(16)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

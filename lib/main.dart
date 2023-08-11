import 'package:daisy_ui_clone/components/card_page.dart';
// import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'components/alert_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // Theme config for FlexColorScheme version 7.1.x. Make sure you use
// same or higher package version, but still same major version. If you
// use a lower package version, some properties may not be supported.
// In that case remove them after copying this theme to your app.
      // theme: FlexThemeData.light(
      //   scheme: FlexScheme.materialBaseline,
      //   surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      //   blendLevel: 7,
      //   subThemesData: const FlexSubThemesData(
      //     blendOnLevel: 10,
      //     blendOnColors: false,
      //     useTextTheme: true,
      //     useM2StyleDividerInM3: true,
      //   ),
      //   visualDensity: FlexColorScheme.comfortablePlatformDensity,
      //   useMaterial3: true,
      //   swapLegacyOnMaterial3: true,
      //   // To use the Playground font, add GoogleFonts package and uncomment
      //   // fontFamily: GoogleFonts.notoSans().fontFamily,
      // ),
      // darkTheme: FlexThemeData.dark(
      //   scheme: FlexScheme.materialBaseline,
      //   surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      //   blendLevel: 13,
      //   subThemesData: const FlexSubThemesData(
      //     blendOnLevel: 20,
      //     useTextTheme: true,
      //     useM2StyleDividerInM3: true,
      //   ),
      //   visualDensity: FlexColorScheme.comfortablePlatformDensity,
      //   useMaterial3: true,
      //   swapLegacyOnMaterial3: true,
      //   // To use the Playground font, add GoogleFonts package and uncomment
      //   // fontFamily: GoogleFonts.notoSans().fontFamily,
      // ),
// If you do not have a themeMode switch, uncomment this line
// to let the device system mode control the theme mode:
// themeMode: ThemeMode.system,

      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.network(
          "https://daisyui.com/images/daisyui-logo/daisyui-logomark-1024-1024.png",
          height: 24,
          width: 24,
        ),
        title: Text("DaisyUI"),
        centerTitle: false,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: List.generate(componentsTitle.length, (index) {
                return ListTile(
                  title: Text(componentsTitle[index]),
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                );
              }),
            ),
          ),
          Expanded(
            flex: 4,
            child: componentsPage[_selectedIndex],
          ),
        ],
      ),
    );
  }
}

final List<String> componentsTitle = [
  'Alert',
  'Card',
];

final List<Widget> componentsPage = [
  AlertPage(),
  CardPage(),
];

import 'package:flutter/material.dart';
import 'package:flutter_icon_field/flutter_icon_field.dart';
import 'package:flutter_icon_field_teste/widget/title_information.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Icon Field Showcase',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Icon Field Showcase',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleInformation('LabelType: ifta | Icon left | Size: small'),
                const SizedBox(height: 10),
                SizedBox(
                  width: 400, // ou MediaQuery, ou LayoutBuilder, etc.
                  child: FlutterIconField(
                    label: 'Usuário',
                    labelType: FlutterIconFieldLabelType.ifta,
                    iconPosition: FlutterIconFieldPosition.left,
                    size: FlutterIconFieldSize.small,
                    icon: const Icon(
                      Icons.person,
                      color: Colors.deepOrangeAccent,
                    ),
                    hintText: 'Digite seu nome',
                  ),
                ),
                const SizedBox(height: 10),
                TitleInformation(
                  'LabelType: float | Icon right | Size: normal',
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: 400, // ou MediaQuery, ou LayoutBuilder, etc.
                  child: FlutterIconField(
                    label: 'Senha',
                    labelType: FlutterIconFieldLabelType.float,
                    iconPosition: FlutterIconFieldPosition.right,
                    size: FlutterIconFieldSize.normal,
                    icon: const Icon(Icons.lock, color: Colors.pinkAccent),
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: 10),
                TitleInformation('LabelType: none | Icon left | Size: large'),
                const SizedBox(height: 8),
                SizedBox(
                  width: 400, // ou MediaQuery, ou LayoutBuilder, etc.
                  child: FlutterIconField(
                    iconPosition: FlutterIconFieldPosition.left,
                    size: FlutterIconFieldSize.large,
                    icon: const Icon(Icons.email, color: Colors.blueAccent),
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(height: 10),
                TitleInformation('LabelType: ifta | Icon right | SVG icon'),
                const SizedBox(height: 8),
                SizedBox(
                  width: 400, // ou MediaQuery, ou LayoutBuilder, etc.
                  child: FlutterIconField(
                    label: 'Busca',
                    labelType: FlutterIconFieldLabelType.ifta,
                    iconPosition: FlutterIconFieldPosition.right,
                    icon: SvgPicture.asset(
                      'assets/icons/search.svg',
                      width: 20,
                    ),
                    hintText: 'Buscar algo...',
                  ),
                ),
                const SizedBox(height: 10),
                TitleInformation(
                  'LabelType: none | Icon left | obscureText true',
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: 400, // ou MediaQuery, ou LayoutBuilder, etc.
                  child: FlutterIconField(
                    icon: const Icon(
                      Icons.visibility_off,
                      color: Colors.amberAccent,
                    ),
                    obscureText: true,
                    hintText: 'Campo secreto',
                    iconPosition: FlutterIconFieldPosition.left,
                  ),
                ),
                const SizedBox(height: 10),
                TitleInformation(
                  'LabelType: float | Icon left | KeyboardType: number',
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: 400, // ou MediaQuery, ou LayoutBuilder, etc.
                  child: FlutterIconField(
                    label: 'Idade',
                    labelType: FlutterIconFieldLabelType.float,
                    iconPosition: FlutterIconFieldPosition.left,
                    icon: const Icon(Icons.numbers, color: Colors.redAccent),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:getting_started_app/models/recipe.model.dart';
import 'package:getting_started_app/views/recipe_detail.view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme
              .copyWith(primary: Colors.grey, secondary: Colors.black)),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext ctx, int idx) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                  return RecipeDetail(recipe: Recipe.samples[idx]);
                }));
              },
              child: buildRecipeCard(Recipe.samples[idx]),
            );
          },
        ),
      ),
    );
  }
}

Widget buildRecipeCard(Recipe recipe) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.imgUrl)),
          const SizedBox(
            height: 14.0,
          ),
          Text(
            recipe.label,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino'),
          )
        ],
      ),
    ),
  );
}

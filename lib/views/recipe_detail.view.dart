import 'package:flutter/material.dart';
import 'package:getting_started_app/models/ingredient.mode.dart';
import 'package:getting_started_app/models/recipe.model.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image(image: AssetImage(widget.recipe.imgUrl)),
          ),
          const SizedBox(height: 4),
          Text(
            widget.recipe.label,
            style: const TextStyle(fontSize: 18),
          ),
          Expanded(
              child: ListView.builder(
            padding: const EdgeInsets.all(7.0),
            itemCount: widget.recipe.ingredients.length,
            itemBuilder: (BuildContext ctx, int idx) {
              final ingredient = widget.recipe.ingredients[idx];
              return Text(
                  '${ingredient.name} ${ingredient.quantity * _sliderVal} (${ingredient.measure})');
            },
          )),
          Slider(
            min: 1,
            max: 10,
            divisions: 10,
            label: '${_sliderVal * widget.recipe.servings} Servings',
            value: _sliderVal.toDouble(),
            onChanged: (newVal) {
              setState(() {
                _sliderVal = newVal.round();
              });
            },
            activeColor: Colors.green,
            inactiveColor: Colors.black,
          )
        ],
      )),
    );
  }
}

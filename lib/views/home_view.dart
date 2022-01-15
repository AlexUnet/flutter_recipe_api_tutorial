import 'package:flutter/material.dart';
import 'package:recipe_list_app/modules/recipe.api.dart';
import 'package:recipe_list_app/modules/recipe.dart';
import 'package:recipe_list_app/views/widgets/recipe_card.dart';

class HomaPage extends StatefulWidget {
  HomaPage({Key? key}) : super(key: key);

  @override
  _HomaPageState createState() => _HomaPageState();
}

class _HomaPageState extends State<HomaPage> {
  List<Recipe> _recipes = [];
  @override
  void initState() {
    super.initState();
    _getRecipes();
  }

  Future<void> _getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {});
    //print(_recipes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.restaurant_menu),
              SizedBox(width: 10),
              Text('Food Recipe')
            ],
          ),
        ),
        body: ListView.builder(
            itemCount: _recipes.length,
            itemBuilder: (context, index) {
              return RecipeCard(
                  title: _recipes[index].name,
                  cookTime: _recipes[index].totalTime,
                  rating:
                      _recipes[index].rating.toString(), //esto se ve horrible
                  thumbnailUrl: _recipes[index].images);
            }));
  }
}

import 'package:flutter/material.dart';

import 'package:cookboox_1/models/recipe.dart';
import 'package:cookboox_1/screens/data_screen.dart';
import 'package:cookboox_1/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My CookBoox'),
      ),
      drawer: const Drawer1(),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: Recipe.getRecipe().length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              final route = MaterialPageRoute(
                builder: (context) => DataScreen(recipe: Recipe.getRecipe()[index],)
              );
              Navigator.push(context, route);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              child: SizedBox(
                height: 250,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: _CardRecipe(index),
                ),
              ),
            ),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }
}

class _CardRecipe extends StatelessWidget {
  final int index;
  const _CardRecipe(this.index);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FadeInImage(
          placeholder: const AssetImage('assets/loading.gif'), 
          image: NetworkImage(Recipe.getRecipe()[index].imageUrl),
          fit: BoxFit.cover,
          height: 250,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            color: Colors.black.withOpacity(0.5),
            width: double.infinity,
            height: 70,
            child: ListTile(
              title: Text(Recipe.getRecipe()[index].title,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              subtitle: Text(Recipe.getRecipe()[index].subTitle,style: const TextStyle(color: Colors.white),),
              trailing: const Icon(Icons.favorite_border,color: Colors.white,size: 30,),
            ),
          ),
        )
      ],
    );
  }
}
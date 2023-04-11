import 'package:cookboox_1/models/recipe.dart';
import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget {
  final Recipe recipe;
  const DataScreen({
    super.key, 
    required this.recipe
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context,index){
            return [
              SliverAppBar(
                expandedHeight: 300,
                flexibleSpace: Stack(
                  
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(recipe.imageUrl),
                          fit: BoxFit.cover
                        )
                      ),
                      child: Container(
                        color: Colors.black38,
                      ),
                    ),
                    _AppBarData(size:size,recipe:recipe),
                  ],
                ),
                pinned: true,
                bottom: const TabBar(
                    tabs: [
                      Tab(text: "Ingredientes"),
                      Tab(text: "Preparacion"),
                    ],
                  ),
              ),       
            ];
          },
          body: TabBarView(
            children: [
              _TabBarView1(recipe: recipe),
              _TabBarView2(recipe: recipe)
            ],
          ),
        ),
      ),
    );
  }
}

class _TabBarView1 extends StatelessWidget {
  final Recipe recipe;

  const _TabBarView1({
    required this.recipe
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(recipe.title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          const Text(
            'Adipisicing aliqua amet quis Lorem labore minim nisi. Exercitation minim fugiat est amet nisi sunt eu nostrud irure magna. Sunt exercitation commodo officia sint. Esse quis consequat dolor tempor labore qui voluptate minim commodo. Sunt occaecat ad reprehenderit consequat officia proident dolor enim commodo fugiat aliqua commodo nulla. Anim adipisicing exercitation laboris adipisicing incididunt aliqua dolore. Laborum eiusmod sint deserunt cillum proident non aliquip sunt.',
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10,),
          const Text('Ingrediente',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          const _Ingredientes(),
          const _Ingredientes(),
          const _Ingredientes(),
          const _Ingredientes(),
          const _Ingredientes(),
          const _Ingredientes(),

        ],
      ),
    );
  }
}

class _Ingredientes extends StatelessWidget {
  const _Ingredientes();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(height: 10,width: 10,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.blue),),
          const SizedBox(width: 10,),
          const Text(
            'Adipisicing',
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
class _TabBarView2 extends StatelessWidget {
  final Recipe recipe;
  const _TabBarView2({
    required this.recipe
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Preparacion',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text(
            'Adipisicing aliqua amet quis Lorem labore minim nisi. Exercitation minim fugiat est amet nisi sunt eu nostrud irure magna. Sunt exercitation commodo officia sint. Esse quis consequat dolor tempor labore qui voluptate minim commodo. Sunt occaecat ad reprehenderit consequat officia proident dolor enim commodo fugiat aliqua commodo nulla. Anim adipisicing exercitation laboris adipisicing incididunt aliqua dolore. Laborum eiusmod sint deserunt cillum proident non aliquip sunt.',
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 10,),
          Text(
            'Adipisicing aliqua amet quis Lorem labore minim nisi. Exercitation minim fugiat est amet nisi sunt eu nostrud irure magna. Sunt exercitation commodo officia sint. Esse quis consequat dolor tempor labore qui voluptate minim commodo. Sunt occaecat ad reprehenderit consequat officia proident dolor enim commodo fugiat aliqua commodo nulla. Anim adipisicing exercitation laboris adipisicing incididunt aliqua dolore. Laborum eiusmod sint deserunt cillum proident non aliquip sunt.',
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}


class _AppBarData extends StatelessWidget {
  const _AppBarData({
    required this.size,
    required this.recipe,
  });

  final Size size;
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(recipe.title),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(
          icon: const Icon(Icons.edit),color: Colors.white,
          onPressed: (){},
          splashRadius: 20,
        ),
        IconButton(
          icon: const Icon(Icons.favorite_border),color: Colors.white,
          onPressed: (){},
          splashRadius: 20,
        ),
        IconButton(
          icon: const Icon(Icons.info_outline),color: Colors.white,
          onPressed: (){},
          splashRadius: 20,
        ),
        const SizedBox(width: 5,)
      ],
    );
  }
}
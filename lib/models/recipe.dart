
class Recipe {
  int idRecipe;
  String title;
  String subTitle;
  String imageUrl;


  Recipe({
    required this.idRecipe,
    required this.title,
    required this.subTitle,
    required this.imageUrl
  });


  static List<Recipe> getRecipe(){
    return [
      Recipe(idRecipe: 1,title: 'Sopa de tortillas', subTitle: 'Esperanza Joya', imageUrl: 'https://www.mylatinatable.com/wp-content/uploads/2017/02/sopa-de-tortilla-3.jpg'),
      Recipe(idRecipe: 2,title: 'Empanadas de Carne', subTitle: 'Esperanza Joya', imageUrl: 'https://comidasparaguayas.com/wp-content/uploads/2019/11/empanada-de-carne-paraguaya_700x465.jpg'),
      Recipe(idRecipe: 3,title: 'Parrillada', subTitle: 'Esperanza Joya', imageUrl: 'https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2021/08/07/16283202517103.jpg'),
      Recipe(idRecipe: 4,title: 'Pollo Dorado', subTitle: 'Esperanza Joya', imageUrl: 'https://cdn.recetacubana.com/wp-content/uploads/2019/10/como-hacer-pollo-frito.jpg'),
    ];
  }

}
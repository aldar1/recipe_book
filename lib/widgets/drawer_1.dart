import 'package:flutter/material.dart';

class Drawer1 extends StatelessWidget {
  const Drawer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 230,
            child: Stack(
              children: [
                const Image(
                  image: AssetImage('assets/menu-img.jpg'),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          maxRadius: 25,
                          child: Text('PJ'),
                        ),
                        const SizedBox(height: 10,),
                        const Text('Juan Perez',style: TextStyle(color: Colors.white),),
                        const SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(Icons.settings,color: Colors.white,),
                            Icon(Icons.arrow_drop_down_sharp,color: Colors.white,)
                          ],
                        )
                      ],
                    ),
                  )
                ),
                
              ],
            ),
          ),
          const _IconDrawer(icon:Icons.book_sharp,title:'Recetas',color: Colors.orange,),
          const _IconDrawer(icon:Icons.favorite,title:'Recetas Favoritas',color: Colors.redAccent,),
          const _IconDrawer(icon:Icons.settings_suggest_outlined,title:'Cerrar Session',color: Colors.redAccent,),
        ],
      ),
    );
  }
}

class _IconDrawer extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  const _IconDrawer({
    required this.icon, 
    required this.title, required this.color
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){},
      leading: Icon(icon,color: color,),
      title: Text(title),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neko/ui/detail_screen.dart';

import '../blue_print/neko_data.dart';

TextStyle titleTextStyle = GoogleFonts.poppins(
  color: Color(0xff222222),
  fontWeight: FontWeight.bold,
  fontSize: 26,
);

TextStyle priceTextStyle = GoogleFonts.poppins(
  color: Color(0xff222222),
  fontWeight: FontWeight.w300,
  fontSize: 18,
);

TextStyle titleTextWebStyle = GoogleFonts.poppins(
  color: Color(0xff222222),
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

TextStyle priceTextWebStyle = GoogleFonts.poppins(
  color: Color(0xff222222),
  fontWeight: FontWeight.w300,
  fontSize: 12,
);

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Nekos', style: titleTextStyle,),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return nekoFavorite();
          } else if (constraints.maxWidth <= 1200) {
            return nekoGrid(gridCount: 4);
          } else {
            return nekoGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}

class nekoFavorite extends StatefulWidget {
  @override
  State<nekoFavorite> createState() => _nekoFavoriteState();
}

class _nekoFavoriteState extends State<nekoFavorite> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final NekoData neko = nekoList[index];
        return Dismissible(
          background: Container(color: Colors.red,
              child: Icon(Icons.delete_forever, color: Colors.black,)),
          key: Key(neko.id.toString()),
          direction: DismissDirection.endToStart,
          onDismissed: (direction){
            setState(() {
              nekoList.removeAt(index);
            });

          },
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(neko: neko);
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Image.asset(neko.imageAsset),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    neko.name,
                    style: titleTextStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    neko.price,
                    style: priceTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: nekoList.length,
    );
  }
}

class nekoGrid extends StatelessWidget {
  final int gridCount;

  nekoGrid({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: nekoList.map((neko) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(neko: neko);
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        neko.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        neko.name,
                        style: titleTextWebStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        neko.price,
                        style: priceTextWebStyle,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

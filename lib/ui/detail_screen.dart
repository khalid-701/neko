import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:neko/blue_print/neko_data.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle titleTextStyle = GoogleFonts.poppins(
  color: Color(0xff222222),
  fontWeight: FontWeight.bold,
  fontSize: 26,
);

TextStyle subTitleTextStyle = GoogleFonts.poppins(
  color: Color(0xff222222),
  fontWeight: FontWeight.w300,
  fontSize: 14,
);

TextStyle descTextStyle = GoogleFonts.poppins(
  color: Color(0xff222222),
  fontWeight: FontWeight.w300,
  fontSize: 16,
);

TextStyle titleTextWebStyle = GoogleFonts.poppins(
  color: Color(0xff222222),
  fontWeight: FontWeight.bold,
  fontSize: 32,
);

TextStyle subTitleTextWebStyle = GoogleFonts.poppins(
  color: Color(0xff222222),
  fontWeight: FontWeight.w300,
  fontSize: 22,
);

TextStyle descTextWebStyle = GoogleFonts.poppins(
  color: Color(0xff222222),
  fontWeight: FontWeight.w300,
  fontSize: 20,
);

class DetailScreen extends StatelessWidget {
  final NekoData neko;

  DetailScreen({required this.neko});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(neko: neko);
        } else {
          return DetailMobilePage(neko: neko);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final NekoData neko;

  const DetailMobilePage({required this.neko});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            Stack(
              children:  [
                Image.asset(neko.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        FavoriteButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                neko.name,
                textAlign: TextAlign.center,
                style: titleTextStyle,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                neko.description,
                textAlign: TextAlign.center,
                style: descTextStyle,
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  Column(
                    children:  [
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0),
                      Text(
                        'Publish Date',
                        style: subTitleTextStyle,
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        neko.publishDate,
                        style: subTitleTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children:  [
                      Icon(Icons.access_time),
                      SizedBox(height: 8.0),
                      Text(
                        'Publish Time',
                        style: subTitleTextStyle,
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        neko.publishTime,
                        style: subTitleTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children:  [
                      Icon(Icons.monetization_on),
                      SizedBox(height: 8.0),
                      Text(
                        'Price',
                        style: subTitleTextStyle,
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        neko.price,
                        style: subTitleTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailWebPage extends StatelessWidget {
  final NekoData neko;
  const DetailWebPage({Key? key, required this.neko}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: Container(
            width: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Neko',
                  style: titleTextStyle,
                ),
                SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(neko.imageAsset),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children:  [
                              Container(
                                child: Text(
                                  neko.name,
                                  textAlign: TextAlign.center,
                                  style: titleTextStyle,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children:  [
                                      Icon(Icons.calendar_today),
                                      SizedBox(width: 8.0),
                                      Text(
                                        neko.publishDate,
                                        style: subTitleTextStyle,
                                      ),
                                    ],
                                  ),
                            FavoriteButton(),
                                ],
                              ),
                              Row(
                                children:  [
                                  Icon(Icons.access_time),
                                  SizedBox(width: 8.0),
                                  Text(
                                    neko.publishTime,
                                    style: subTitleTextStyle,
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                children:  [
                                  Icon(Icons.monetization_on),
                                  SizedBox(width: 8.0),
                                  Text(
                                    neko.price,
                                    style: subTitleTextStyle,
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  neko.description,
                                  textAlign: TextAlign.justify,
                                  style: descTextStyle,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

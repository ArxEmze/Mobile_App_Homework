import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Image.asset("assets/images/instagram-logo.png"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, left: 8, bottom: 8, right: 10),
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.black87,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, left: 8, bottom: 8, right: 10),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.black87,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, left: 8, bottom: 8, right: 15),
                          child: Icon(
                            Icons.send,
                            color: Colors.black87,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  // widht: 50,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              StoryWidget("assets/images/emre-gorsel.jpg", "ArxEmze"),
                              StoryWidget("assets/images/burak.jpg", "brkc_ikizler"),
                              StoryWidget("assets/images/koko.jpg", "KoKoWick"),
                              StoryWidget("assets/images/tahir.jpg", "LogiNoX"),
                              StoryWidget("assets/images/fatih.jpg", "AyKa36"),
                              StoryWidget("assets/images/azim.jpg", "Dogus_Oto"),
                              StoryWidget("assets/images/emre-gorsel.jpg", "ArxEmze"),
                              StoryWidget("assets/images/burak.jpg", "brkc_ikizler"),
                              StoryWidget("assets/images/koko.jpg", "KoKoWick"),
                              StoryWidget("assets/images/tahir.jpg", "LogiNoX"),
                              StoryWidget("assets/images/fatih.jpg", "AyKa36"),
                              StoryWidget("assets/images/azim.jpg", "Dogus_Oto"),
                            ],
                          ),
                        ),
                        post("assets/images/emre-gorsel.jpg","assets/images/araba5.jpg", "ArxEmze", "Kars/Merkez"),
                        post("assets/images/azim.jpg","assets/images/araba1.jpg", "Dogus_Oto", "İstanbul/Bağcılar"),
                        post("assets/images/tahir.jpg","assets/images/araba2.jpg", "LogiNoX", "Denizli/Pamukkale"),
                        post("assets/images/fatih.jpg","assets/images/araba4.jpg", "AyKa36", "Tekirdağ/Değirmenaltı"),
                        post("assets/images/burak.jpg","assets/images/araba3.jpg", "brkc_ikizler", "İstanbul/4.Levent"),
                      ],
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.black12,
                )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Icon(
                        Icons.home,
                        size: 35,
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Icon(
                        Icons.search,
                        size: 35,
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Icon(
                        Icons.movie,
                        size: 35,
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Icon(
                        Icons.favorite,
                        size: 35,
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Icon(
                        Icons.person,
                        size: 35,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container post(String avatar, String photo, String name, String location) => Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(avatar),
                          radius: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              location,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.more_horiz)
                  ],
                ),
              ),
              Image.asset(photo),
              LikeCommentBox(),
              CommentBox(),
              CommentBox2(),
              CommentBox3(),
              CommentBox4("ÖFA", "Çok güzel çekim kardeşim ellerine sağlık miss gibi olmuş. Çekimlerin devamını bekliyoruz :)"),
            ],
          ),
        ),
      );

  Padding LikeCommentBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.favorite_outline, color: Colors.black87, size: 25),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.comment_outlined, color: Colors.black87, size: 25),
              SizedBox(
                width: 13,
              ),
              Icon(
                Icons.send_outlined,
                color: Colors.black87,
                size: 25,
              ),
            ],
          ),
          Icon(Icons.flag_outlined, color: Colors.black87, size: 28),
        ],
      ),
    );
  }

  Padding CommentBox() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Text(
            "3436 Beğenme",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Padding CommentBox2() {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Row(
        children: [
          Text(
            "ArxEmze",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Padding CommentBox3() {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Row(
        children: [
          Text(
            "LogiNoX",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Araç kendini belli eder.",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black87,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Padding CommentBox4(String name, String comment) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Row(
        children: [
          Expanded(
            child: RichText(
                maxLines: 3,
                text: TextSpan(children: [
                  TextSpan(
                    text: name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                  TextSpan(text: " "),
                  TextSpan(
                      text:
                          comment,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black87,
                        fontSize: 12,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget StoryWidget(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                const Color.fromRGBO(214, 71, 103, 1),
                const Color.fromRGBO(241, 166, 117, 1),
                ]
              ),
              shape: BoxShape.circle
            ),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 33,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
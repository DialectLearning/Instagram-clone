import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageUrls = [
    'https://picsum.photos/id/237/200/300',
    'https://picsum.photos/id/884/200/300',
    'https://picsum.photos/id/1025/200/300',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: Image.asset("asset/camara.png"),
        actions: [
          SvgPicture.asset(
            "asset/IGTV.svg",
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SvgPicture.asset(
              "asset/Shape.svg",
            ),
          )
        ],
        title: SvgPicture.asset("asset/Instagram Logo.svg", height: 30),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const StatusWidget(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) => const PostWidget(),
            ),
          )
        ],
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("asset/profile_user.jpg"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("joshua_l",
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.verified,
                        color: Colors.blue,
                      )
                    ],
                  ),
                  Text("Tokyo, Japan",
                      style: TextStyle(color: Colors.white, fontSize: 13))
                ],
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
            )
          ],
        ),
        Image.asset(
          "asset/tokyo_1.avif",
          fit: BoxFit.cover,
          width: double.infinity,
          height: 375,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset("asset/Like.svg"),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset("asset/Comment.svg"),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              "asset/Shape.svg",
            ),
            const Spacer(),
            SvgPicture.asset(
              "asset/Save.svg",
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 13,
                backgroundImage: AssetImage("asset/profile_user.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Liked by craig_love and 44,686 others",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "joshua_l The game in Japan was amazing and I want to share some photos",
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
        )
      ],
    );
  }
}

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      padding: const EdgeInsets.all(5),
      width: 80,
      height: 80,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            Color.fromRGBO(251, 170, 71, 1),
            // Color.fromRGBO(217, 26, 70, 1),
            Color.fromRGBO(166, 15, 141, 1)
          ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
      child: const FittedBox(
        fit: BoxFit.contain,
        child: CircleAvatar(
          backgroundColor: Colors.black,
          radius: 75,
          child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(
                "asset/Inner Oval (1).png",
              ),
              //  child: Image.asset("asset/profile_user.jpg"),
              backgroundColor: Colors.transparent),
        ),
      ),
    );
  }
}

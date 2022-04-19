import 'package:flutter/material.dart';
import 'package:kopi_hitam/presentation/item_detail/item_detail_page.dart';

class MenuListPage extends StatefulWidget {
  const MenuListPage({Key? key}) : super(key: key);

  @override
  State<MenuListPage> createState() => _MenuListPageState();
}

class _MenuListPageState extends State<MenuListPage> {
  List<String> listGambar = [
    "assets/images/food.jpg",
    "assets/images/food1.jpg",
    "assets/images/food2.jpg",
    "assets/images/food3.jpg",
    "assets/images/food4.jpg",
    "assets/images/food5.jpg",
    "assets/images/food.jpg",
    "assets/images/food1.jpg",
    "assets/images/food2.jpg",
    "assets/images/food3.jpg",
    "assets/images/food4.jpg",
    "assets/images/food5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[400],
        title: Text("Photos"),
      ),
      body: SafeArea(
        child: Container(
          child: GridView.builder(
            itemCount: listGambar.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1,
              crossAxisSpacing: 5,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => InkWell(
                onTap: () {
                  print("klik " + listGambar[index]);
                  Navigator.pushNamed(context, '/item_detail_page',
                      arguments: {'id': 1, 'image': listGambar[index]});
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) =>
                  //         ItemDetailPage(image: listGambar[index])));
                },
                child: ListImageItem(listGambar: listGambar[index])),
          ),
        ),
      ),
    );
  }
}

class ListImageItem extends StatelessWidget {
  const ListImageItem({
    Key? key,
    required this.listGambar,
  }) : super(key: key);

  final String listGambar;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 100,
      width: 100,
      child: Image.asset(
        listGambar,
        fit: BoxFit.cover,
      ),
    );
  }
}

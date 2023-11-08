import 'package:flutter/material.dart';
import 'package:todo_list/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu,
              color: black,
            size: 30,),
            SizedBox(
              height: 50,
              width: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset('assests/profile.png'),
              ),
            )
          ],
        ),
      ),

      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
                  searchBox(),
            Expanded(
              child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 50,
                        bottom: 20,
                      ),
                      child: const Text("All ToDos",
                        style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.w300),),
                    ),
                  ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget searchBox(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
       decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(30)
            ),
      child: TextField(
           decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(0),
                prefixIcon: Icon(
                        Icons.search,
                        color: black,
                        size: 30,
                         ),
            prefixIconConstraints: const BoxConstraints(
                        maxHeight: 20,
                        maxWidth: 25,
                       ),
                 border: InputBorder.none,
                 hintText: 'Search',
                 hintStyle: TextStyle(color: grey)
                    ),
                  ),
               );
            }

}

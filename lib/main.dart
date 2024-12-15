import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,

            actions: [IconButton(onPressed: (){}, icon: Icon(Icons.list)),
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications))],
            title: Row(
              children: [
                Text("오류동",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700,),),
                IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_sharp))
              ],
            )


        ),

        body:Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // 사진
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(232, 229, 229, 2.0),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: ClipRRect(
                  child: Image.asset("assets/test.jpg"),
                )

              ),


              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  //제목
                  Row(
                    children: [
                      Text("삼성 노트북,\n NT750XGR-A58AG 미개봉 신품         ",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp)),
                    ],
                  ),

                  //지역, 올린시간
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text("개봉동 · 1시간 전")
                    ],
                  ),
                  //가격
                  Text("540,000원", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),),

                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.chat)),
                      Text("1", style: TextStyle(fontSize:5, color: Color.fromRGBO(232, 229, 229, 2.0)),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
                      Text("7", style: TextStyle(fontSize:5, color: Color.fromRGBO(232, 229, 229, 2.0)),),
                    ],
                  ),
                ]

              )

            ],



          ),

        )


      )


    );
  }
}

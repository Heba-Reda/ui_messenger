import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MyPage extends StatefulWidget {
  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {

    // TODO: implement build

    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor:Colors.pink.shade50,
        elevation: 0,
        titleSpacing: 20,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/512/5231/5231019.png'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Chats",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body:Stack(
        children: [
          Image.network(
            'https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902023.jpg',
            height: double.infinity,
            width:double.infinity ,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.shade50,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Search"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 100,
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, int index) {
                          return Container(
                            width: 60,
                            child: Column(children: [
                              Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: NetworkImage(
                                        'https://cdn-icons-png.flaticon.com/512/5231/5231019.png'),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.only(
                                      bottom: 3,
                                      end: 3,
                                    ),
                                    child: CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Heba Reda",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ]),
                          );
                        },
                        separatorBuilder: (context, int index) {
                          return SizedBox(
                            width: 20,
                          );
                        },
                        itemCount: 20),
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 20,
                      separatorBuilder: (context, int index) {
                        return SizedBox(
                          height: 20,
                        );
                      },
                      itemBuilder: (context, int index) {
                        return Row(children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://cdn-icons-png.flaticon.com/512/5231/5231019.png'),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom: 3,
                                  end: 3,
                                ),
                                child: CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Heba Reda",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Hello How are you ?",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 7.0),
                                        child: Container(
                                          width: 7,
                                          height: 7,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                      Text(" 10:15 AM "),
                                    ],
                                  ),
                                ]),
                          ),
                        ]);
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(
            color: Colors.pink.shade400,
          ),
        ),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.white,
          animationCurve: Curves.easeInOutCubicEmphasized,
          height: 50,
          index:1,
          onTap: (index){},
          items: [
            Icon(Icons.chat,size: 20,),
            Icon(Icons.video_call_outlined,size: 20,),
            Icon(Icons.people,size: 20,),
            Icon(Icons.amp_stories_outlined,size: 20,),


          ],

        ),
      ),
    );
  }
}

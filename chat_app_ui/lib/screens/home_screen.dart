
import 'package:chat_app_ui/screens/screen_click.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:chat_app_ui/models/message_model.dart';

class  HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFefefef),
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        leading: IconButton(icon: Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {},),
        title: Center(child: Text('Harmonium')),
        flexibleSpace: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  const Color(0xFFf44336),
                  const Color(0xFF424242),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},)
      ],
    ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (BuildContext context, int index) {
          final Message chat = chats[index];
          return GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ChatScreen(
              user: chat.sender,
            ),),),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
            ),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: chat.unread ? BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                        width: 2,
                        color: Theme.of(context).primaryColor,
                    ),
                      //shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                    ],
                  ):
                BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                   ),
                  ],
                ),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(chat.sender.imageUrl),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    padding: EdgeInsets.only(left: 20,),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(chat.sender.name, style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),),
                                chat.sender.isOnline ?
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ):
                                Container(child: null,),
                              ],
                            ),
                            Text(chat.time, style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w300,
                              color: Colors.black54,
                            ),),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(chat.text, style: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },),
          );
    }
  }

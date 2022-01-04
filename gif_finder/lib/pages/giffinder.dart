// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gif_finder/api/api_request.dart';
import 'package:gif_finder/api/apikeys.dart';

class GifFinder extends StatefulWidget {
  const GifFinder({Key? key}) : super(key: key);

  @override
  _GifFinderState createState() => _GifFinderState();
}

class _GifFinderState extends State<GifFinder> {
  TextEditingController textEditingController = TextEditingController();
  ApiRequest apiRequest = ApiRequest(api_key, '', 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('GiFinder'),
          leading: Icon(
            Icons.favorite,
            color: Colors.orange,
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        controller: textEditingController,
                        textAlign: TextAlign.center,
                        textCapitalization: TextCapitalization.words,
                        autocorrect: false,
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                          hintText: 'You are looking for..',
                          hintStyle: TextStyle(fontSize: 20),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.search),
                            onPressed: () async {
                              print('Basıldı');
                              apiRequest.numberOfGifs = 5;
                              apiRequest.search_term =
                                  textEditingController.text.trim();
                              await apiRequest.getData();
                              setState(() {});
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: Colors.blue[800],
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.all(20.0),
                          color: Colors.red[300],
                          child: apiRequest.gifList.isEmpty
                              ? CircularProgressIndicator()
                              : Image.network(apiRequest.gifList[0]),
                        );
                      },
                      itemCount: 4,
                      scrollDirection: Axis.vertical,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

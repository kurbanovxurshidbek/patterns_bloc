
import 'package:flutter/material.dart';

class Utils {

  static Future<bool> dialogCommon(BuildContext context, String title, String content, bool single) async {
    return await showDialog<bool>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              height: 160,
              width: 280,
              child: Column(
                children: [
                  Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Text(content, maxLines: 2, overflow: TextOverflow.ellipsis),
                  SizedBox(height: 20,),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            single ?
                            Expanded(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.of(context).pop(false);
                                },
                                child: Container(
                                  height: 36,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      border: Border.all(color: Colors.blueAccent)
                                  ),
                                  child: Center(
                                    child: Text(
                                      '취소',
                                      style: TextStyle(color: Colors.blueAccent),
                                    ),
                                  ),
                                ),
                              ),
                            ):SizedBox.shrink(),

                            SizedBox(width: 10,),
                            Expanded(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.of(context).pop(true);
                                },
                                child: Container(
                                  height: 36,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '확인',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
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
        });
  }

}
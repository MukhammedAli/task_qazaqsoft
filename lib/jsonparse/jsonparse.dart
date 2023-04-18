import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'dart:convert';
import 'package:new_app/model/jsondatamodel.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:new_app/widgets/custom_app_bar.dart';
import 'package:new_app/widgets/mybutton.dart';




class JsonParse extends StatelessWidget {
  const JsonParse({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
    debugShowCheckedModeBanner: false,
    home: UserList(),
    );
  }
}



class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {

  final List<JsonDataModel> _jsonlist = [];




  void initState() { 
      readJsonData().then((value) => _jsonlist.addAll(value));
  
    super.initState();
  }

  
  

  Future<List<JsonDataModel>> readJsonData() async { 



  
    final response  = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    List<JsonDataModel> list = [];
    

    
    if (response.statusCode == 200) { 
      final jsonresponse = jsonDecode(response.body);
      
      for ( var jsondata in jsonresponse) { 
        list.add(JsonDataModel.fromJson(jsondata));
      }
    return list;

    }
    else { 
      throw Exception(
        'Не удалось загрузить информацию'
      );
    }
    
   
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CupertinoPageScaffold(
          child: NestedScrollView(
        
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)  { 
              return <Widget>[
                  CupertinoSliverNavigationBar(largeTitle: Text('Пользователи'),)
              ];
  },
            body: FutureBuilder(
              future: readJsonData(),
              builder: (context, data) {
          if (data.hasError) { 
            return Center(child: Column(
              children: [

                Text("${data.error}"),
                MyButton(onPressed: 
               () => setState(() {
                 
               }),
                 text: 'Обновить',
                ),
                
              
              ],
            ),);
             }
            else if (data.hasData) {
              
              return ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: _jsonlist.length,
                itemBuilder: (context,index){
                  return  ListTile(
                    leading: Icon(
                       CupertinoIcons.profile_circled,
                        size: 50,
                                 ),
                    title: Text(_jsonlist[index].name.toString(),
                                style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.bold),),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(_jsonlist[index].email.toString()),
                                    Text(_jsonlist[index].username.toString()),
                                  ],
                                ),
                  ); 
                }
              );
               
            } else { 
              return Center(child: CircularProgressIndicator(color: Color.fromRGBO(187, 107, 217, 1),),);
            }
          }
          ),
          ),
        )
      ),
    );
    
    
    }
    
  }



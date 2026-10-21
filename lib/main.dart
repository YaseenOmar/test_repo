import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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
          title: Text('API '),

        ),
        body: Center(
          child: ElevatedButton(onPressed: () async{
           final String baseUrl = 'https://jsonplaceholder.typicode.com';
            final url = Uri.parse('$baseUrl/todos');

            final response = await http.get(url);

            if(response.statusCode == 200){
              print(response.body);
            }
            else{
              print('Error +++++++++${response.statusCode}');
            }
          }, child: Text('Get Data')),
        ),
      ),
    );
  }
}

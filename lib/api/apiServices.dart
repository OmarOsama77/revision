import 'package:revision/api/post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiServices{
    static String baseUrl = 'https://jsonplaceholder.typicode.com/posts';

    static Future<List<Post>> getData()async{
          final response = await http.get(Uri.parse(baseUrl));
          if(response.statusCode==200){
              final List<dynamic>data = jsonDecode(response.body);
              return data.map((e) => Post.fromJson(e)).toList();
          }
           else{
             throw Exception("Help");
          }
    }
}
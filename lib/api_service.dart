import 'dart:convert';

import 'products_model.dart';
import 'package:http/http.dart' as http;

class ApiService{

  static Future<List<Product>> fetchProduct() async{
    final response = await http.get(Uri.parse("https://6964b210e8ce952ce1f28cf9.mockapi.io/products"));

    if(response.statusCode == 200) {
        final List data = jsonDecode(response.body);
        return data.map((e) => Product.fromJson(e)).toList();
      }else {
        throw Exception('โหลดข้อมูลไม่สำเร็จ');
    }
  }
}
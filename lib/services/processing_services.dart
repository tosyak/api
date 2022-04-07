import 'dart:convert';
import 'package:api/models/processing.dart';
import 'package:api/models/processing_materials.dart';
import 'package:api/models/processing_products.dart';
import 'package:http/http.dart' as http;

Future<Processing> fetchProcessing() async {
  final response = await http.get(
      Uri.parse(
          'https://online.moysklad.ru/api/remap/1.2/entity/processing/ae07fa03-b4a0-11ec-0a80-03c100019870'),
      headers: {
        'authorization': 'Bearer f7756f7da07100fa2ee2de6d5c0368e820fe2502',
        'Content-Type': 'application/json',
        "Access-Control_Allow_Origin": "*",
      });
  if (response.statusCode == 200) {
    return Processing.fromJson(json.decode(response.body));
  } else {
    print(response.statusCode);
    throw Exception('Failed to load album');
  }
}

Future<ProcessingMaterials> fetchProcessingMaterials() async {
  var processingMaterialsLink = await fetchProcessing();
  var url = processingMaterialsLink.materials.meta.href;
  print(url);

  final response = await http.get(
      Uri.parse(
          'https://online.moysklad.ru/api/remap/1.2/entity/processing/ae07fa03-b4a0-11ec-0a80-03c100019870/materials'),
      headers: {
        'authorization': 'Bearer f7756f7da07100fa2ee2de6d5c0368e820fe2502',
        'Content-Type': 'application/json',
        "Access-Control_Allow_Origin": "*",
      });
  if (response.statusCode == 200) {
    return ProcessingMaterials.fromJson(json.decode(response.body));
  } else {
    print(response.statusCode);
    throw Exception('Failed to load album');
  }
}

Future<ProcessingProducts> fetchProcessingProducts() async {
  var processingProductsLink = await fetchProcessing();
  var url = processingProductsLink.products.meta.href;
  final response = await http.get(Uri.parse('$url'), headers: {
    'authorization': 'Bearer f7756f7da07100fa2ee2de6d5c0368e820fe2502',
  });
  if (response.statusCode == 200) {
    return ProcessingProducts.fromJson(json.decode(response.body));
    ;
  } else {
    print(response.statusCode);
    throw Exception('Failed to load album');
  }
}

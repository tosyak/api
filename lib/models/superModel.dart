import 'package:api/models/processing.dart';
import 'package:api/models/processing_materials.dart';
import 'package:api/models/processing_products.dart';

class SuperModel {
  final Processing processing;
  final ProcessingMaterials processingMaterials;
  final ProcessingProducts processingProducts;

  const SuperModel(
      {required this.processing,
      required this.processingMaterials,
      required this.processingProducts});
}

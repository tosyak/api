import 'package:meta/meta.dart';
import 'dart:convert';

ProcessingMaterials processingMaterialsFromJson(String str) =>
    ProcessingMaterials.fromJson(json.decode(str));

String processingMaterialsToJson(ProcessingMaterials data) =>
    json.encode(data.toJson());

class ProcessingMaterials {
  ProcessingMaterials({
    required this.context,
    required this.meta,
    required this.rows,
  });

  final Context context;
  final ProcessingMaterialsMeta meta;
  final List<Row> rows;

  factory ProcessingMaterials.fromJson(Map<String, dynamic> json) =>
      ProcessingMaterials(
        context: Context.fromJson(json["context"]),
        meta: ProcessingMaterialsMeta.fromJson(json["meta"]),
        rows: List<Row>.from(json["rows"].map((x) => Row.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "context": context.toJson(),
        "meta": meta.toJson(),
        "rows": List<dynamic>.from(rows.map((x) => x.toJson())),
      };
}

class Context {
  Context({
    required this.employee,
  });

  final Employee employee;

  factory Context.fromJson(Map<String, dynamic> json) => Context(
        employee: Employee.fromJson(json["employee"]),
      );

  Map<String, dynamic> toJson() => {
        "employee": employee.toJson(),
      };
}

class Employee {
  Employee({
    required this.meta,
  });

  final EmployeeMeta meta;

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        meta: EmployeeMeta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
      };
}

class EmployeeMeta {
  EmployeeMeta({
    required this.href,
    required this.metadataHref,
    required this.type,
    required this.mediaType,
    required this.uuidHref,
  });

  final String href;
  final String? metadataHref;
  final Type? type;
  final MediaType? mediaType;
  final String? uuidHref;

  factory EmployeeMeta.fromJson(Map<String, dynamic> json) => EmployeeMeta(
        href: json["href"],
        metadataHref:
            json["metadataHref"] == null ? null : json["metadataHref"],
        type: typeValues.map[json["type"]],
        mediaType: mediaTypeValues.map[json["mediaType"]],
        uuidHref: json["uuidHref"] == null ? null : json["uuidHref"],
      );

  Map<String, dynamic> toJson() => {
        "href": href,
        "metadataHref": metadataHref == null ? null : metadataHref,
        "type": typeValues.reverse[type],
        "mediaType": mediaTypeValues.reverse[mediaType],
        "uuidHref": uuidHref == null ? null : uuidHref,
      };
}

enum MediaType { APPLICATION_JSON }

final mediaTypeValues =
    EnumValues({"application/json": MediaType.APPLICATION_JSON});

enum Type { EMPLOYEE, VARIANT, PRODUCT, PROCESSINGPOSITIONMATERIAL }

final typeValues = EnumValues({
  "employee": Type.EMPLOYEE,
  "processingpositionmaterial": Type.PROCESSINGPOSITIONMATERIAL,
  "product": Type.PRODUCT,
  "variant": Type.VARIANT
});

class ProcessingMaterialsMeta {
  ProcessingMaterialsMeta({
    required this.href,
    required this.type,
    required this.mediaType,
    required this.size,
    required this.limit,
    required this.offset,
  });

  final String href;
  final Type? type;
  final MediaType? mediaType;
  final int size;
  final int limit;
  final int offset;

  factory ProcessingMaterialsMeta.fromJson(Map<String, dynamic> json) =>
      ProcessingMaterialsMeta(
        href: json["href"],
        type: typeValues.map[json["type"]],
        mediaType: mediaTypeValues.map[json["mediaType"]],
        size: json["size"],
        limit: json["limit"],
        offset: json["offset"],
      );

  Map<String, dynamic> toJson() => {
        "href": href,
        "type": typeValues.reverse[type],
        "mediaType": mediaTypeValues.reverse[mediaType],
        "size": size,
        "limit": limit,
        "offset": offset,
      };
}

class Row {
  Row({
    required this.meta,
    required this.id,
    required this.accountId,
    required this.quantity,
    required this.assortment,
  });

  final EmployeeMeta meta;
  final String id;
  final String accountId;
  final double quantity;
  final Employee assortment;

  factory Row.fromJson(Map<String, dynamic> json) => Row(
        meta: EmployeeMeta.fromJson(json["meta"]),
        id: json["id"],
        accountId: json["accountId"],
        quantity: json["quantity"].toDouble(),
        assortment: Employee.fromJson(json["assortment"]),
      );

  Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "id": id,
        "accountId": accountId,
        "quantity": quantity,
        "assortment": assortment.toJson(),
      };
}

class EnumValues<T> {
  late Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}

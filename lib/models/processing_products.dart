// To parse this JSON data, do
//
//     final processingProducts = processingProductsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class ProcessingProducts {
    ProcessingProducts({
        required this.meta,
        required this.rows,
    });

    final ProcessingProductsMeta meta;
    final List<Row> rows;

    factory ProcessingProducts.fromRawJson(String str) => ProcessingProducts.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ProcessingProducts.fromJson(Map<String, dynamic> json) => ProcessingProducts(
        meta: ProcessingProductsMeta.fromJson(json["meta"]),
        rows: List<Row>.from(json["rows"].map((x) => Row.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "rows": List<dynamic>.from(rows.map((x) => x.toJson())),
    };
}

class ProcessingProductsMeta {
    ProcessingProductsMeta({
        required this.href,
        required this.type,
        required this.mediaType,
        required this.size,
        required this.limit,
        required this.offset,
    });

    final String href;
    final String type;
    final String mediaType;
    final int size;
    final int limit;
    final int offset;

    factory ProcessingProductsMeta.fromRawJson(String str) => ProcessingProductsMeta.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ProcessingProductsMeta.fromJson(Map<String, dynamic> json) => ProcessingProductsMeta(
        href: json["href"],
        type: json["type"],
        mediaType: json["mediaType"],
        size: json["size"],
        limit: json["limit"],
        offset: json["offset"],
    );

    Map<String, dynamic> toJson() => {
        "href": href,
        "type": type,
        "mediaType": mediaType,
        "size": size,
        "limit": limit,
        "offset": offset,
    };
}

class Row {
    Row({
        required this.quantity,
        required this.assortment,
    });

    final double quantity;
    final Assortment assortment;

    factory Row.fromRawJson(String str) => Row.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Row.fromJson(Map<String, dynamic> json) => Row(
        quantity: json["quantity"].toDouble(),
        assortment: Assortment.fromJson(json["assortment"]),
    );

    Map<String, dynamic> toJson() => {
        "quantity": quantity,
        "assortment": assortment.toJson(),
    };
}

class Assortment {
    Assortment({
        required this.meta,
    });

    final AssortmentMeta meta;

    factory Assortment.fromRawJson(String str) => Assortment.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Assortment.fromJson(Map<String, dynamic> json) => Assortment(
        meta: AssortmentMeta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
    };
}

class AssortmentMeta {
    AssortmentMeta({
        required this.href,
        required this.metadataHref,
        required this.type,
        required this.mediaType,
        required this.uuidHref,
    });

    final String href;
    final String metadataHref;
    final String type;
    final String mediaType;
    final String uuidHref;

    factory AssortmentMeta.fromRawJson(String str) => AssortmentMeta.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory AssortmentMeta.fromJson(Map<String, dynamic> json) => AssortmentMeta(
        href: json["href"],
        metadataHref: json["metadataHref"],
        type: json["type"],
        mediaType: json["mediaType"],
        uuidHref: json["uuidHref"],
    );

    Map<String, dynamic> toJson() => {
        "href": href,
        "metadataHref": metadataHref,
        "type": type,
        "mediaType": mediaType,
        "uuidHref": uuidHref,
    };
}

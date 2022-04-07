// // To parse this JSON data, do
// //
// //     final processing = processingFromJson(jsonString);

// import 'package:meta/meta.dart';
// import 'dart:convert';

// class Processing {
//     Processing({
//         required this.organization,
//         required this.processingSum,
//         required this.quantity,
//         required this.processingPlan,
//         required this.productsStore,
//         required this.materialsStore,
//         required this.products,
//         required this.materials,
//     });

//     final MaterialsStore organization;
//     final double processingSum;
//     final double quantity;
//     final MaterialsStore processingPlan;
//     final MaterialsStore productsStore;
//     final MaterialsStore materialsStore;
//     final Materials products;
//     final Materials materials;   

//     factory Processing.fromJson(Map<String, dynamic> json) => Processing(
//         organization: MaterialsStore.fromJson(json["organization"]),
//         processingSum: json["processingSum"],
//         quantity: json["quantity"],
//         processingPlan: MaterialsStore.fromJson(json["processingPlan"]),
//         productsStore: MaterialsStore.fromJson(json["productsStore"]),
//         materialsStore: MaterialsStore.fromJson(json["materialsStore"]),
//         products: Materials.fromJson(json["products"]),
//         materials: Materials.fromJson(json["materials"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "organization": organization.toJson(),
//         "processingSum": processingSum,
//         "quantity": quantity,
//         "processingPlan": processingPlan.toJson(),
//         "productsStore": productsStore.toJson(),
//         "materialsStore": materialsStore.toJson(),
//         "products": products.toJson(),
//         "materials": materials.toJson(),
//     };
// }

// class Materials {
//     Materials({
//         required this.meta,
//     });

//     final MaterialsMeta meta;  

//     factory Materials.fromJson(Map<String, dynamic> json) => Materials(
//         meta: MaterialsMeta.fromJson(json["meta"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "meta": meta.toJson(),
//     };
// }

// class MaterialsMeta {
//     MaterialsMeta({
//         required this.href,
//     });

//     final String href;

//     factory MaterialsMeta.fromJson(Map<String, dynamic> json) => MaterialsMeta(
//         href: json["href"],
//     );

//     Map<String, dynamic> toJson() => {
//         "href": href,
//     };
// }

// class MaterialsStore {
//     MaterialsStore({
//         required this.meta,
//     });

//     final MaterialsStoreMeta meta;   

//     factory MaterialsStore.fromJson(Map<String, dynamic> json) => MaterialsStore(
//         meta: MaterialsStoreMeta.fromJson(json["meta"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "meta": meta.toJson(),
//     };
// }

// class MaterialsStoreMeta {
//     MaterialsStoreMeta({
//         required this.href,
//         required this.metadataHref,
//         required this.type,
//         required this.mediaType,
//         required this.uuidHref,
//     });

//     final String href;
//     final String metadataHref;
//     final String type;
//     final String mediaType;
//     final String uuidHref;    

//     factory MaterialsStoreMeta.fromJson(Map<String, dynamic> json) => MaterialsStoreMeta(
//         href: json["href"],
//         metadataHref: json["metadataHref"],
//         type: json["type"],
//         mediaType: json["mediaType"],
//         uuidHref: json["uuidHref"],
//     );

//     Map<String, dynamic> toJson() => {
//         "href": href,
//         "metadataHref": metadataHref,
//         "type": type,
//         "mediaType": mediaType,
//         "uuidHref": uuidHref,
//     };
// }


// To parse this JSON data, do
//
//     final processing = processingFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Processing processingFromJson(String str) => Processing.fromJson(json.decode(str));

String processingToJson(Processing data) => json.encode(data.toJson());

class Processing {
    Processing({
        required this.meta,
        required this.id,
        required this.accountId,
        required this.owner,
        required this.shared,
        required this.group,
        required this.updated,
        required this.name,
        required this.externalCode,
        required this.moment,
        required this.applicable,
        required this.organization,
        required this.state,
        required this.attributes,
        required this.created,
        required this.printed,
        required this.published,
        required this.files,
        required this.processingSum,
        required this.quantity,
        required this.processingPlan,
        required this.productsStore,
        required this.materialsStore,
        required this.products,
        required this.materials,
    });

    final AttributeMeta meta;
    final String id;
    final String accountId;
    final Group owner;
    final bool shared;
    final Group group;
    final DateTime updated;
    final String name;
    final String externalCode;
    final DateTime moment;
    final bool applicable;
    final Group organization;
    final Group state;
    final List<Attribute> attributes;
    final DateTime created;
    final bool printed;
    final bool published;
    final Files files;
    final double processingSum;
    final double quantity;
    final Group processingPlan;
    final Group productsStore;
    final Group materialsStore;
    final Files products;
    final Files materials;

    factory Processing.fromJson(Map<String, dynamic> json) => Processing(
        meta: AttributeMeta.fromJson(json["meta"]),
        id: json["id"],
        accountId: json["accountId"],
        owner: Group.fromJson(json["owner"]),
        shared: json["shared"],
        group: Group.fromJson(json["group"]),
        updated: DateTime.parse(json["updated"]),
        name: json["name"],
        externalCode: json["externalCode"],
        moment: DateTime.parse(json["moment"]),
        applicable: json["applicable"],
        organization: Group.fromJson(json["organization"]),
        state: Group.fromJson(json["state"]),
        attributes: List<Attribute>.from(json["attributes"].map((x) => Attribute.fromJson(x))),
        created: DateTime.parse(json["created"]),
        printed: json["printed"],
        published: json["published"],
        files: Files.fromJson(json["files"]),
        processingSum: json["processingSum"],
        quantity: json["quantity"],
        processingPlan: Group.fromJson(json["processingPlan"]),
        productsStore: Group.fromJson(json["productsStore"]),
        materialsStore: Group.fromJson(json["materialsStore"]),
        products: Files.fromJson(json["products"]),
        materials: Files.fromJson(json["materials"]),
    );

    Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "id": id,
        "accountId": accountId,
        "owner": owner.toJson(),
        "shared": shared,
        "group": group.toJson(),
        "updated": updated.toIso8601String(),
        "name": name,
        "externalCode": externalCode,
        "moment": moment.toIso8601String(),
        "applicable": applicable,
        "organization": organization.toJson(),
        "state": state.toJson(),
        "attributes": List<dynamic>.from(attributes.map((x) => x.toJson())),
        "created": created.toIso8601String(),
        "printed": printed,
        "published": published,
        "files": files.toJson(),
        "processingSum": processingSum,
        "quantity": quantity,
        "processingPlan": processingPlan.toJson(),
        "productsStore": productsStore.toJson(),
        "materialsStore": materialsStore.toJson(),
        "products": products.toJson(),
        "materials": materials.toJson(),
    };
}

class Attribute {
    Attribute({
        required this.meta,
        required this.id,
        required this.name,
        required this.type,
        required this.value,
    });

    final AttributeMeta meta;
    final String id;
    final String name;
    final String type;
    final dynamic value;

    factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
        meta: AttributeMeta.fromJson(json["meta"]),
        id: json["id"],
        name: json["name"],
        type: json["type"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "id": id,
        "name": name,
        "type": type,
        "value": value,
    };
}

class AttributeMeta {
    AttributeMeta({
        required this.href,
        required this.type,
        required this.mediaType,
        required this.metadataHref,
        required this.uuidHref,
    });

    final String href;
    final String type;
    final MediaType? mediaType;
    final String? metadataHref;
    final String? uuidHref;

    factory AttributeMeta.fromJson(Map<String, dynamic> json) => AttributeMeta(
        href: json["href"],
        type: json["type"],
        mediaType: mediaTypeValues.map[json["mediaType"]],
        metadataHref: json["metadataHref"] == null ? null : json["metadataHref"],
        uuidHref: json["uuidHref"] == null ? null : json["uuidHref"],
    );

    Map<String, dynamic> toJson() => {
        "href": href,
        "type": type,
        "mediaType": mediaTypeValues.reverse[mediaType],
        "metadataHref": metadataHref == null ? null : metadataHref,
        "uuidHref": uuidHref == null ? null : uuidHref,
    };
}

enum MediaType { APPLICATION_JSON }

final mediaTypeValues = EnumValues({
    "application/json": MediaType.APPLICATION_JSON
});

class ValueClass {
    ValueClass({
        required this.meta,
        required this.name,
    });

    final AttributeMeta meta;
    final String name;

    factory ValueClass.fromJson(Map<String, dynamic> json) => ValueClass(
        meta: AttributeMeta.fromJson(json["meta"]),
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "name": name,
    };
}

class Files {
    Files({
        required this.meta,
    });

    final FilesMeta meta;

    factory Files.fromJson(Map<String, dynamic> json) => Files(
        meta: FilesMeta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
    };
}

class FilesMeta {
    FilesMeta({
        required this.href,
        required this.type,
        required this.mediaType,
        required this.size,
        required this.limit,
        required this.offset,
    });

    final String href;
    final String type;
    final MediaType? mediaType;
    final int size;
    final int limit;
    final int offset;

    factory FilesMeta.fromJson(Map<String, dynamic> json) => FilesMeta(
        href: json["href"],
        type: json["type"],
        mediaType: mediaTypeValues.map[json["mediaType"]],
        size: json["size"],
        limit: json["limit"],
        offset: json["offset"],
    );

    Map<String, dynamic> toJson() => {
        "href": href,
        "type": type,
        "mediaType": mediaTypeValues.reverse[mediaType],
        "size": size,
        "limit": limit,
        "offset": offset,
    };
}

class Group {
    Group({
        required this.meta,
    });

    final AttributeMeta meta;

    factory Group.fromJson(Map<String, dynamic> json) => Group(
        meta: AttributeMeta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}

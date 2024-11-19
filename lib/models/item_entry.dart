// To parse this JSON data, do
//
//     final objectEntry = objectEntryFromJson(jsonString);

import 'dart:convert';

List<ObjectEntry> objectEntryFromJson(String str) => List<ObjectEntry>.from(json.decode(str).map((x) => ObjectEntry.fromJson(x)));

String objectEntryToJson(List<ObjectEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ObjectEntry {
    String model;
    String pk;
    Fields fields;

    ObjectEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ObjectEntry.fromJson(Map<String, dynamic> json) => ObjectEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int price;
    String category;
    String description;

    Fields({
        required this.user,
        required this.name,
        required this.price,
        required this.category,
        required this.description,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        category: json["category"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "category": category,
        "description": description,
    };
}

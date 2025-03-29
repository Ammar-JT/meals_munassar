import 'dart:convert';

class PackageMeal {
  final int id;
  final String dashboardName;
  final Map<String, String> name;
  final String? description;
  final int sort;
  final int optional;
  final double optionalUnitPrice;
  final int isProtein;
  final int hasCarb;
  final int isActive;
  final String createdAt;
  final String updatedAt;
  final Pivot pivot;
  final List<Tag> tags;

  PackageMeal({
    required this.id,
    required this.dashboardName,
    required this.name,
    this.description,
    required this.sort,
    required this.optional,
    required this.optionalUnitPrice,
    required this.isProtein,
    required this.hasCarb,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    required this.pivot,
    required this.tags,
  });

  factory PackageMeal.fromJson(Map<String, dynamic> json) {
    return PackageMeal(
      id: json['id'],
      dashboardName: json['dashboard_name'],
      name: Map<String, String>.from(json['name']),
      description: json['description'],
      sort: json['sort'],
      optional: json['optional'],
      optionalUnitPrice: double.parse(json['optional_unit_price'].toString()),
      isProtein: json['is_protein'],
      hasCarb: json['has_carb'],
      isActive: json['is_active'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      pivot: Pivot.fromJson(json['pivot']),
      tags: (json['tags'] as List).map((e) => Tag.fromJson(e)).toList(),
    );
  }
}

class Pivot {
  final int subpackageId;
  final int packageMealId;
  final int quantity;
  final String createdAt;
  final String updatedAt;

  Pivot({
    required this.subpackageId,
    required this.packageMealId,
    required this.quantity,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Pivot.fromJson(Map<String, dynamic> json) {
    return Pivot(
      subpackageId: json['subpackage_id'],
      packageMealId: json['package_meal_id'],
      quantity: json['quantity'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}

class Tag {
  final int id;
  final Map<String, String> name;
  final int isActive;
  final String createdAt;
  final String updatedAt;
  final PivotTag pivot;
  final List<Product> products;

  Tag({
    required this.id,
    required this.name,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    required this.pivot,
    required this.products,
  });

  factory Tag.fromJson(Map<String, dynamic> json) {
    return Tag(
      id: json['id'],
      name: Map<String, String>.from(json['name']),
      isActive: json['is_active'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      pivot: PivotTag.fromJson(json['pivot']),
      products: (json['products'] as List).map((e) => Product.fromJson(e)).toList(),
    );
  }
}

class PivotTag {
  final String taggableType;
  final int taggableId;
  final int tagId;

  PivotTag({
    required this.taggableType,
    required this.taggableId,
    required this.tagId,
  });

  factory PivotTag.fromJson(Map<String, dynamic> json) {
    return PivotTag(
      taggableType: json['taggable_type'],
      taggableId: json['taggable_id'],
      tagId: json['tag_id'],
    );
  }
}

class Product {
  final int id;
  final int categoryId;
  final Map<String, String> name;

  Product({
    required this.id,
    required this.categoryId,
    required this.name,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      categoryId: json['category_id'],
      name: Map<String, String>.from(json['name']),
    );
  }
}

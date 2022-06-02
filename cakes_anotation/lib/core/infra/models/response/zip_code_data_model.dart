import 'dart:convert';

class ZipCodeDataModel {
  int? id;
  String? zipCode;
  String? neighborhood;
  int? cityId;
  int? stateId;
  int? countryId;
  String? latitude;
  String? longitude;
  CityModel? city;
  StateModel? state;
  CountryModel? country;

  ZipCodeDataModel({
    this.id,
    this.zipCode,
    this.neighborhood,
    this.cityId,
    this.stateId,
    this.countryId,
    this.latitude,
    this.longitude,
    this.city,
    this.state,
    this.country,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (id != null) {
      result.addAll({'id': id});
    }
    if (zipCode != null) {
      result.addAll({'zipCode': zipCode});
    }
    if (neighborhood != null) {
      result.addAll({'neighborhood': neighborhood});
    }
    if (cityId != null) {
      result.addAll({'cityId': cityId});
    }
    if (stateId != null) {
      result.addAll({'stateId': stateId});
    }
    if (countryId != null) {
      result.addAll({'countryId': countryId});
    }
    if (latitude != null) {
      result.addAll({'latitude': latitude});
    }
    if (longitude != null) {
      result.addAll({'longitude': longitude});
    }
    if (city != null) {
      result.addAll({'city': city!.toMap()});
    }
    if (state != null) {
      result.addAll({'state': state!.toMap()});
    }
    if (country != null) {
      result.addAll({'country': country!.toMap()});
    }

    return result;
  }

  factory ZipCodeDataModel.fromMap(Map<String, dynamic> map) {
    return ZipCodeDataModel(
      id: map['id']?.toInt(),
      zipCode: map['zipCode'],
      neighborhood: map['neighborhood'],
      cityId: map['cityId']?.toInt(),
      stateId: map['stateId']?.toInt(),
      countryId: map['countryId']?.toInt(),
      latitude: map['latitude'],
      longitude: map['longitude'],
      city: map['city'] != null ? CityModel.fromMap(map['city']) : null,
      state: map['state'] != null ? StateModel.fromMap(map['state']) : null,
      country:
          map['country'] != null ? CountryModel.fromMap(map['country']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ZipCodeDataModel.fromJson(String source) =>
      ZipCodeDataModel.fromMap(json.decode(source));
}

class CityModel {
  int? id;
  String? name;
  int? stateId;
  String? createdAt;
  String? updatedAt;

  CityModel({
    this.id,
    this.name,
    this.stateId,
    this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (id != null) {
      result.addAll({'id': id});
    }
    if (name != null) {
      result.addAll({'name': name});
    }
    if (stateId != null) {
      result.addAll({'stateId': stateId});
    }
    if (createdAt != null) {
      result.addAll({'createdAt': createdAt});
    }
    if (updatedAt != null) {
      result.addAll({'updatedAt': updatedAt});
    }

    return result;
  }

  factory CityModel.fromMap(Map<String, dynamic> map) {
    return CityModel(
      id: map['id']?.toInt(),
      name: map['name'],
      stateId: map['stateId']?.toInt(),
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CityModel.fromJson(String source) =>
      CityModel.fromMap(json.decode(source));
}

class StateModel {
  int? id;
  String? name;
  String? uf;
  int? countryId;
  String? createdAt;
  String? updatedAt;

  StateModel({
    this.id,
    this.name,
    this.uf,
    this.countryId,
    this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (id != null) {
      result.addAll({'id': id});
    }
    if (name != null) {
      result.addAll({'name': name});
    }
    if (uf != null) {
      result.addAll({'uf': uf});
    }
    if (countryId != null) {
      result.addAll({'countryId': countryId});
    }
    if (createdAt != null) {
      result.addAll({'createdAt': createdAt});
    }
    if (updatedAt != null) {
      result.addAll({'updatedAt': updatedAt});
    }

    return result;
  }

  factory StateModel.fromMap(Map<String, dynamic> map) {
    return StateModel(
      id: map['id']?.toInt(),
      name: map['name'],
      uf: map['uf'],
      countryId: map['countryId']?.toInt(),
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
    );
  }

  String toJson() => json.encode(toMap());

  factory StateModel.fromJson(String source) =>
      StateModel.fromMap(json.decode(source));
}

class CountryModel {
  int? id;
  String? name;
  String? currency;
  String? abbreviation;
  String? createdAt;
  String? updatedAt;

  CountryModel({
    this.id,
    this.name,
    this.currency,
    this.abbreviation,
    this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (id != null) {
      result.addAll({'id': id});
    }
    if (name != null) {
      result.addAll({'name': name});
    }
    if (currency != null) {
      result.addAll({'currency': currency});
    }
    if (abbreviation != null) {
      result.addAll({'abbreviation': abbreviation});
    }
    if (createdAt != null) {
      result.addAll({'createdAt': createdAt});
    }
    if (updatedAt != null) {
      result.addAll({'updatedAt': updatedAt});
    }

    return result;
  }

  factory CountryModel.fromMap(Map<String, dynamic> map) {
    return CountryModel(
      id: map['id']?.toInt(),
      name: map['name'],
      currency: map['currency'],
      abbreviation: map['abbreviation'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CountryModel.fromJson(String source) =>
      CountryModel.fromMap(json.decode(source));
}

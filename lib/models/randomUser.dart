import 'package:flutter/foundation.dart';

@immutable
class RandomUser {
  const RandomUser({
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.login,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.id,
    required this.picture,
    required this.nat,
  });

  final String gender;
  final Name name;
  final Location location;
  final String email;
  final Login login;
  final Dob dob;
  final Registered registered;
  final String phone;
  final String cell;
  final Id id;
  final Picture picture;
  final String nat;

  factory RandomUser.fromJson(Map<String, dynamic> json) => RandomUser(
      gender: json['gender'] as String,
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      email: json['email'] as String,
      login: Login.fromJson(json['login'] as Map<String, dynamic>),
      dob: Dob.fromJson(json['dob'] as Map<String, dynamic>),
      registered:
          Registered.fromJson(json['registered'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      cell: json['cell'] as String,
      id: Id.fromJson(json['id'] as Map<String, dynamic>),
      picture: Picture.fromJson(json['picture'] as Map<String, dynamic>),
      nat: json['nat'] as String);

  Map<String, dynamic> toJson() => {
        'gender': gender,
        'name': name.toJson(),
        'location': location.toJson(),
        'email': email,
        'login': login.toJson(),
        'dob': dob.toJson(),
        'registered': registered.toJson(),
        'phone': phone,
        'cell': cell,
        'id': id.toJson(),
        'picture': picture.toJson(),
        'nat': nat
      };

  RandomUser clone() => RandomUser(
      gender: gender,
      name: name.clone(),
      location: location.clone(),
      email: email,
      login: login.clone(),
      dob: dob.clone(),
      registered: registered.clone(),
      phone: phone,
      cell: cell,
      id: id.clone(),
      picture: picture.clone(),
      nat: nat);

  RandomUser copyWith(
          {String? gender,
          Name? name,
          Location? location,
          String? email,
          Login? login,
          Dob? dob,
          Registered? registered,
          String? phone,
          String? cell,
          Id? id,
          Picture? picture,
          String? nat}) =>
      RandomUser(
        gender: gender ?? this.gender,
        name: name ?? this.name,
        location: location ?? this.location,
        email: email ?? this.email,
        login: login ?? this.login,
        dob: dob ?? this.dob,
        registered: registered ?? this.registered,
        phone: phone ?? this.phone,
        cell: cell ?? this.cell,
        id: id ?? this.id,
        picture: picture ?? this.picture,
        nat: nat ?? this.nat,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RandomUser &&
          gender == other.gender &&
          name == other.name &&
          location == other.location &&
          email == other.email &&
          login == other.login &&
          dob == other.dob &&
          registered == other.registered &&
          phone == other.phone &&
          cell == other.cell &&
          id == other.id &&
          picture == other.picture &&
          nat == other.nat;

  @override
  int get hashCode =>
      gender.hashCode ^
      name.hashCode ^
      location.hashCode ^
      email.hashCode ^
      login.hashCode ^
      dob.hashCode ^
      registered.hashCode ^
      phone.hashCode ^
      cell.hashCode ^
      id.hashCode ^
      picture.hashCode ^
      nat.hashCode;
}

@immutable
class Name {
  const Name({
    required this.title,
    required this.first,
    required this.last,
  });

  final String title;
  final String first;
  final String last;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
      title: json['title'] as String,
      first: json['first'] as String,
      last: json['last'] as String);

  Map<String, dynamic> toJson() =>
      {'title': title, 'first': first, 'last': last};

  Name clone() => Name(title: title, first: first, last: last);

  Name copyWith({String? title, String? first, String? last}) => Name(
        title: title ?? this.title,
        first: first ?? this.first,
        last: last ?? this.last,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Name &&
          title == other.title &&
          first == other.first &&
          last == other.last;

  @override
  int get hashCode => title.hashCode ^ first.hashCode ^ last.hashCode;
}

@immutable
class Location {
  const Location({
    required this.street,
    required this.city,
    required this.state,
    required this.postcode,
    required this.coordinates,
    required this.timezone,
  });

  final String street;
  final String city;
  final String state;
  final String postcode;
  final Coordinates coordinates;
  final Timezone timezone;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
      street: json['street'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      postcode: json['postcode'] as String,
      coordinates:
          Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      timezone: Timezone.fromJson(json['timezone'] as Map<String, dynamic>));

  Map<String, dynamic> toJson() => {
        'street': street,
        'city': city,
        'state': state,
        'postcode': postcode,
        'coordinates': coordinates.toJson(),
        'timezone': timezone.toJson()
      };

  Location clone() => Location(
      street: street,
      city: city,
      state: state,
      postcode: postcode,
      coordinates: coordinates.clone(),
      timezone: timezone.clone());

  Location copyWith(
          {String? street,
          String? city,
          String? state,
          String? postcode,
          Coordinates? coordinates,
          Timezone? timezone}) =>
      Location(
        street: street ?? this.street,
        city: city ?? this.city,
        state: state ?? this.state,
        postcode: postcode ?? this.postcode,
        coordinates: coordinates ?? this.coordinates,
        timezone: timezone ?? this.timezone,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Location &&
          street == other.street &&
          city == other.city &&
          state == other.state &&
          postcode == other.postcode &&
          coordinates == other.coordinates &&
          timezone == other.timezone;

  @override
  int get hashCode =>
      street.hashCode ^
      city.hashCode ^
      state.hashCode ^
      postcode.hashCode ^
      coordinates.hashCode ^
      timezone.hashCode;
}

@immutable
class Coordinates {
  const Coordinates({
    required this.latitude,
    required this.longitude,
  });

  final String latitude;
  final String longitude;

  factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String);

  Map<String, dynamic> toJson() =>
      {'latitude': latitude, 'longitude': longitude};

  Coordinates clone() => Coordinates(latitude: latitude, longitude: longitude);

  Coordinates copyWith({String? latitude, String? longitude}) => Coordinates(
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Coordinates &&
          latitude == other.latitude &&
          longitude == other.longitude;

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode;
}

@immutable
class Timezone {
  const Timezone({
    required this.offset,
    required this.description,
  });

  final String offset;
  final String description;

  factory Timezone.fromJson(Map<String, dynamic> json) => Timezone(
      offset: json['offset'] as String,
      description: json['description'] as String);

  Map<String, dynamic> toJson() =>
      {'offset': offset, 'description': description};

  Timezone clone() => Timezone(offset: offset, description: description);

  Timezone copyWith({String? offset, String? description}) => Timezone(
        offset: offset ?? this.offset,
        description: description ?? this.description,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Timezone &&
          offset == other.offset &&
          description == other.description;

  @override
  int get hashCode => offset.hashCode ^ description.hashCode;
}

@immutable
class Login {
  const Login({
    required this.uuid,
    required this.username,
    required this.password,
    required this.salt,
    required this.md5,
    required this.sha1,
    required this.sha256,
  });

  final String uuid;
  final String username;
  final String password;
  final String salt;
  final String md5;
  final String sha1;
  final String sha256;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
      uuid: json['uuid'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      salt: json['salt'] as String,
      md5: json['md5'] as String,
      sha1: json['sha1'] as String,
      sha256: json['sha256'] as String);

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'username': username,
        'password': password,
        'salt': salt,
        'md5': md5,
        'sha1': sha1,
        'sha256': sha256
      };

  Login clone() => Login(
      uuid: uuid,
      username: username,
      password: password,
      salt: salt,
      md5: md5,
      sha1: sha1,
      sha256: sha256);

  Login copyWith(
          {String? uuid,
          String? username,
          String? password,
          String? salt,
          String? md5,
          String? sha1,
          String? sha256}) =>
      Login(
        uuid: uuid ?? this.uuid,
        username: username ?? this.username,
        password: password ?? this.password,
        salt: salt ?? this.salt,
        md5: md5 ?? this.md5,
        sha1: sha1 ?? this.sha1,
        sha256: sha256 ?? this.sha256,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Login &&
          uuid == other.uuid &&
          username == other.username &&
          password == other.password &&
          salt == other.salt &&
          md5 == other.md5 &&
          sha1 == other.sha1 &&
          sha256 == other.sha256;

  @override
  int get hashCode =>
      uuid.hashCode ^
      username.hashCode ^
      password.hashCode ^
      salt.hashCode ^
      md5.hashCode ^
      sha1.hashCode ^
      sha256.hashCode;
}

@immutable
class Dob {
  const Dob({
    required this.date,
    required this.age,
  });

  final String date;
  final int age;

  factory Dob.fromJson(Map<String, dynamic> json) =>
      Dob(date: json['date'] as String, age: json['age'] as int);

  Map<String, dynamic> toJson() => {'date': date, 'age': age};

  Dob clone() => Dob(date: date, age: age);

  Dob copyWith({String? date, int? age}) => Dob(
        date: date ?? this.date,
        age: age ?? this.age,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Dob && date == other.date && age == other.age;

  @override
  int get hashCode => date.hashCode ^ age.hashCode;
}

@immutable
class Registered {
  const Registered({
    required this.date,
    required this.age,
  });

  final String date;
  final int age;

  factory Registered.fromJson(Map<String, dynamic> json) =>
      Registered(date: json['date'] as String, age: json['age'] as int);

  Map<String, dynamic> toJson() => {'date': date, 'age': age};

  Registered clone() => Registered(date: date, age: age);

  Registered copyWith({String? date, int? age}) => Registered(
        date: date ?? this.date,
        age: age ?? this.age,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Registered && date == other.date && age == other.age;

  @override
  int get hashCode => date.hashCode ^ age.hashCode;
}

@immutable
class Id {
  const Id({
    required this.name,
    required this.value,
  });

  final String name;
  final String value;

  factory Id.fromJson(Map<String, dynamic> json) =>
      Id(name: json['name'] as String, value: json['value'] as String);

  Map<String, dynamic> toJson() => {'name': name, 'value': value};

  Id clone() => Id(name: name, value: value);

  Id copyWith({String? name, String? value}) => Id(
        name: name ?? this.name,
        value: value ?? this.value,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Id && name == other.name && value == other.value;

  @override
  int get hashCode => name.hashCode ^ value.hashCode;
}

@immutable
class Picture {
  const Picture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });

  final String large;
  final String medium;
  final String thumbnail;

  factory Picture.fromJson(Map<String, dynamic> json) => Picture(
      large: json['large'] as String,
      medium: json['medium'] as String,
      thumbnail: json['thumbnail'] as String);

  Map<String, dynamic> toJson() =>
      {'large': large, 'medium': medium, 'thumbnail': thumbnail};

  Picture clone() =>
      Picture(large: large, medium: medium, thumbnail: thumbnail);

  Picture copyWith({String? large, String? medium, String? thumbnail}) =>
      Picture(
        large: large ?? this.large,
        medium: medium ?? this.medium,
        thumbnail: thumbnail ?? this.thumbnail,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Picture &&
          large == other.large &&
          medium == other.medium &&
          thumbnail == other.thumbnail;

  @override
  int get hashCode => large.hashCode ^ medium.hashCode ^ thumbnail.hashCode;
}

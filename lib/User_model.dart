class User {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String website;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.website
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
      'id': int id,
      'name': String name,
      'email': String email,
      'phone': String phone,
      'website': String website,
      } =>
          User(
            id: id,
            name: name,
            email: email,
            phone: phone,
            website: website
          ),
      _ => throw const FormatException('Failed to load users.'),
    };
  }
}
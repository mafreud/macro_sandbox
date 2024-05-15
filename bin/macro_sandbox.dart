import 'package:json/json.dart';

@JsonCodable()
class User {
  final String userId;
  final String displayName;
  final String email;
  User({required this.userId, required this.displayName, required this.email});
}

void main() {
  final defaultUser = User(
    userId: '123456789',
    displayName: 'mafreud',
    email: 'm.aoki@open-ci.io',
  );

  /// {userId: 123456789, displayName: mafreud, email: m.aoki@open-ci.io}
  print('Vehicle serialized: ${defaultUser.toJson()}');
}

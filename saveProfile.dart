import 'package:cloud_firestore/cloud_firestore.dart';

class UserProfile {
  String name;
  String profilePictureUrl;

  UserProfile({required this.name, required this.profilePictureUrl});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'profilePictureUrl': profilePictureUrl,
    };
  }

  Future<void> saveToFirebase() async {
    final CollectionReference profilesRef = FirebaseFirestore.instance.collection('profiles');
    await profilesRef.doc().set(toMap());
  }
}

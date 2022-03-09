import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class User {
  final String uid;
  final String username;
  final String password;
  final String email;
  final String bio;
  final String photoUrl;
  final List followers;
  final List following;

  const User({
    required this.uid,
    required this.username,
    required this.password,
    required this.email,
    required this.bio,
    required this.photoUrl,
    required this.followers,
    required this.following,
  });

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'username': username,
        'password': password,
        'email': email,
        'bio': bio,
        'followers': [],
        'following': [],
        'photoUrl': photoUrl,
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
        uid: snapshot['uid'],
        username: snapshot['username'],
        password: snapshot['password'],
        email: snapshot['email'],
        bio: snapshot['bio'],
        photoUrl: snapshot['photoUrl'],
        followers: snapshot['followers'],
        following: snapshot['following']);
  }
}

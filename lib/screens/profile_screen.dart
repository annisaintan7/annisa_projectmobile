import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
final String name;

const ProfileScreen({
super.key,
required this.name,
});

@override
State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
bool isFollowing = false;

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Detail Profil'),
centerTitle: true,
),
body: Column(
children: [
Container(
width: double.infinity,
padding: const EdgeInsets.symmetric(vertical: 30),
decoration: BoxDecoration(
color: Colors.blue,
borderRadius: const BorderRadius.only(
bottomLeft: Radius.circular(20),
bottomRight: Radius.circular(20),
),
),
child: const Icon(
Icons.person,
size: 80,
color: Colors.white,
),
),
const SizedBox(height: 20),
Text(
widget.name,
style: const TextStyle(
fontSize: 22,
fontWeight: FontWeight.bold,
),
),
const SizedBox(height: 10),
const Text(
'Mahasiswa',
style: TextStyle(
color: Colors.grey,
fontSize: 16,
),
),
const SizedBox(height: 20),
Padding(
padding: const EdgeInsets.symmetric(horizontal: 20),
child: Container(
width: double.infinity,
padding: const EdgeInsets.all(16),
decoration: BoxDecoration(
color: Colors.blue.shade50,
borderRadius: BorderRadius.circular(12),
),
child: Text(
'Halo, saya ${widget.name}. '
'Saya adalah pengguna aplikasi ini.',
textAlign: TextAlign.center,
),
),
),
const SizedBox(height: 30),
ElevatedButton(
style: ElevatedButton.styleFrom(
backgroundColor:
isFollowing ? Colors.green : Colors.blue,
foregroundColor: Colors.white,
padding: const EdgeInsets.symmetric(
horizontal: 40,
vertical: 12,
),
),
onPressed: () {
setState(() {
isFollowing = !isFollowing;
});
},
child: Text(
isFollowing ? 'Following' : 'Follow',
),
),
],
),
);
}
}
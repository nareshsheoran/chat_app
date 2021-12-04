import 'package:flutter/material.dart';

const users = [
  userNaresh,
  userDalip,
  userNitin,
  userKulbir,
  userDinesh,
  userYogesh,
  userNitish,
];

const userNaresh = DemoUser(
    id: 'naresh',
    name: 'Naresh Sheoran',
    image:
        'https://pbs.twimg.com/profile_images/1262058845192335360/Ys_-zu6W_400x400.jpg');
const userDalip = DemoUser(
    id: 'dalip',
    name: 'Dalip Sheoran',
    image:
        'https://pbs.twimg.com/profile_images/1262058845192335360/Ys_-zu6W_400x400.jpg');
const userNitin = DemoUser(
    id: 'nitin',
    name: 'Nitin Sheoran',
    image:
        'https://pbs.twimg.com/profile_images/1262058845192335360/Ys_-zu6W_400x400.jpg');
const userKulbir = DemoUser(
    id: 'kulbir',
    name: 'Kulbir Sheoran',
    image:
        'https://pbs.twimg.com/profile_images/1262058845192335360/Ys_-zu6W_400x400.jpg');
const userDinesh = DemoUser(
    id: 'dinesh',
    name: 'Dinesh Sheoran',
    image:
        'https://pbs.twimg.com/profile_images/1262058845192335360/Ys_-zu6W_400x400.jpg');
const userYogesh = DemoUser(
    id: 'yogesh',
    name: 'Yogesh Sheoran',
    image:
        'https://pbs.twimg.com/profile_images/1262058845192335360/Ys_-zu6W_400x400.jpg');
const userNitish = DemoUser(
    id: 'nitish',
    name: 'Nitish Sheoran',
    image:
        'https://pbs.twimg.com/profile_images/1262058845192335360/Ys_-zu6W_400x400.jpg');

@immutable
class DemoUser {
  final String id;
  final String name;
  final String image;

  const DemoUser({
    required this.id,
    required this.name,
    required this.image,
  });
}

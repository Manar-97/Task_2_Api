import 'package:flutter/material.dart';
import 'package:task_2/movie_model.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key, required this.userProfile});
  final UserProfile userProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userProfile.username),
      ),
      body: Column(
        children: [
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: userProfile.profilePic.length,
            itemBuilder: (context, index) {
              return Image.network(
                userProfile.profilePic[index],
                height: 300,
                fit: BoxFit.cover,
              );
            },
          ),
          Text(userProfile.bio),
          Text('bio:'),
        ],
      ),
    );
  }
}

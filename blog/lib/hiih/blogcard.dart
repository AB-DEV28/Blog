import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;

class BlogCard extends StatelessWidget {
  BlogCard(
      {super.key,
        required this.title,
        required this.desc,
        required this.author,
        required this.authorImg,
        required this.press});

  final String title, desc, author, authorImg;
  String? imageUrl = '';
  final Function() press;
  Future<void> searchBloggerPostForImage() async {
    var postHtml = parse(desc);

    var images = postHtml.getElementsByTagName("img");
    if (images.length > 0) {
      var firstImage = images[0];
      this.imageUrl = firstImage.attributes["src"];
      print("Image URL: $imageUrl");
    } else {
      print("No images found in post");
    }
  }

  @override
  Widget build(BuildContext context) {
    searchBloggerPostForImage();
    return GestureDetector(
        onTap: press,
        child: Card(
          elevation: 5,
          clipBehavior: Clip.hardEdge,
          margin: const EdgeInsets.only(bottom: 20),
          surfaceTintColor: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Hero(
                tag: 'dash',
                child: Image.network("$imageUrl", fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(height: 15),
                    Text(title,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage("https:$authorImg"),
                        ),
                        const SizedBox(width: 10),
                        Text(author,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}


/*
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;
Future<void> searchBloggerPostForImage(String postId) async {
var apiKey = "YOUR_API_KEY";
var bloggerApiUrl = "https://www.googleapis.com/blogger/v3/blogs/blogId/posts/$postId?key=$apiKey";
var response = await http.get(bloggerApiUrl);
var postJson = json.decode(response.body);
var postContent = postJson["content"];
var postHtml = parse(postContent);
var images = postHtml.getElementsByTagName("img");
if (images.length > 0) {
var firstImage = images[0];
var imageUrl = firstImage.attributes["src"];
print("Image URL: $imageUrl");
} else {
print("No images found in post");
}
}
void main() async {
var postId = "YOUR_POST_ID";
await searchBloggerPostForImage(postId);
}
*/
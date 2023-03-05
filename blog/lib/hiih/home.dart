import 'dart:convert';
import 'package:blog/hiih/blogcard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'blogScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List data = [];
  bool isLoading = true;
  String apiKey = "AIzaSyA38JD1rnvgqSTvynbpCrtHeUaa31QBSXo";
  String baseUrl = "https://www.googleapis.com/blogger";
  String blogId = "3965473496605885";
  // https://www.googleapis.com/blogger/v3/blogs/3965473496605885/posts?key=AIzaSyA38JD1rnvgqSTvynbpCrtHeUaa31QBSXo
  Future retrieveBlogPost() async {
    try {
      final url = Uri.parse("$baseUrl/v3/blogs/$blogId/posts?key=$apiKey");
      final response = await http.get(url);
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        setState(() {
          data = result['items'] as List;
          isLoading = false;
        });
        return result;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    retrieveBlogPost();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : RefreshIndicator(
          onRefresh: retrieveBlogPost,
          child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(children: [
                  const SizedBox(height: 15),
                  ...List.generate(
                      data.length,
                          (index) => BlogCard(
                          title: data[index]['title'],
                          desc: data[index]['content'],
                          author: "${data[index]['author']['displayName']}",
                          authorImg: data[index]['author']['image']['url'],
                          press: () {
                            print(data[index]['content']);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BlogScreen(
                                    data: data[index],
                                  )),
                            );
                          }))
                ]),
              )),
        ),
      ),
    );
  }
}
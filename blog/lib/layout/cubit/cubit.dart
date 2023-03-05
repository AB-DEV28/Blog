
import 'package:bloc/bloc.dart';
import 'package:blog/hiih/home.dart';
import 'package:blog/layout/cubit/states.dart';
import 'package:blog/modules/AboutUS.dart';
import 'package:blog/modules/BlogScreen.dart';
import 'package:blog/modules/History.dart';
import 'package:blog/modules/contact.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeCubit extends Cubit<HomeStates>
{
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  var pages =
  [
    HomeScreen(),
    AboutUSWidget(),
    HistoryWidget(),
    ContactPage()
  ];

  // var selectedItems =
  // [
  //   true,
  //   false,
  // ];

  var myTitles =
  [
    'Blogs',
    'About Us',
    'History',
    'Contact',
  ];

  changeIndex(index)
  {
    currentIndex = index;
    //selectedItems[index] = !selectedItems[index];
    emit(HomeIndexState());
  }
}
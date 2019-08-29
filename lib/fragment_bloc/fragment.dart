import 'package:bloc/src/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/src/bloc_provider.dart';

abstract class Fragment extends Widget{
  String getRouteName();
  String getTitle();
  String getParameter();

  void setData(String value) {}
}
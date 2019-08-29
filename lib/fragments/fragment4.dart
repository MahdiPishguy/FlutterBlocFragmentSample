import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fragment_bloc/fragment_bloc/bloc.dart';
import 'package:fragment_bloc/fragment_bloc/fragment.dart';
import 'package:fragment_bloc/fragment_routes.dart';

class Fragment4 extends StatefulWidget implements Fragment {
  String myname;

  @override
  
  State<Fragment4> createState() => _Fragment4();

    @override
  String getRouteName() {
    return FRAGMENT_4;
  }

  @override
  String getTitle() {
    return 'Fragment 4 Title';
  }

  @override
  String getParameter() {
    // TODO: implement getParameter
    return null;
  }

  @override
  void setData(String value) {
    myname = value;
  }

}
class _Fragment4 extends State<Fragment4> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("${widget.myname}"),
          RaisedButton(
            child: Text('Navigate to fragment 1'),
            onPressed: () => BlocProvider.of<FragmentBloc>(context)
                .dispatch(FragmentNavigateEvent(FRAGMENT_1,'44444')),
          )
        ],
      ),
    );
  }}

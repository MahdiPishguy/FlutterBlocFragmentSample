import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fragment_bloc/fragment_bloc/bloc.dart';
import 'package:fragment_bloc/fragment_bloc/fragment.dart';
import 'package:fragment_bloc/fragment_routes.dart';

class Fragment3 extends StatefulWidget implements Fragment {
  String myname;

  @override
  State<Fragment3> createState() => _Fragment3();

   @override
  String getRouteName() {
    return FRAGMENT_3;
  }

  @override
  String getTitle() {
    return 'Fragment 3 Title';
  }

  @override
  String getParameter() {
    // TODO: implement getParameter
    return 'ccccccccccc';
  }

  @override
  void setData(String value) {
    myname = value;
  }

}

class _Fragment3 extends State<Fragment3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("${widget.myname}"),
          RaisedButton(
            child: Text('Navigate to fragment 4'),
            onPressed: () => BlocProvider.of<FragmentBloc>(context)
                .dispatch(FragmentNavigateEvent(FRAGMENT_4,'3333')),
          ),
          RaisedButton(
            child: Text('Back to fragment 2'),
            onPressed: () => BlocProvider.of<FragmentBloc>(context)
                .dispatch(FragmentBackEvent()),
          )
        ],
      ),
    );
  }
}

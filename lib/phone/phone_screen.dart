import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewtest/bloc/info_bloc.dart';
import 'package:interviewtest/bloc/info_event.dart';
import 'package:interviewtest/repositories/api_service.dart';
import 'package:interviewtest/widget/swipe_card_list.dart';

class PhoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InfoBloc(repository: InfoRepository()),
      child: Stack(
        children: <Widget>[
          _backgroundColor(),
          ListCard(),
        ],
      ),
    );
  }

  Widget _backgroundColor(){
    return Column(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            color: Color.fromRGBO(44, 45, 50, 1),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Color.fromRGBO(249, 249, 249, 1),
          ),
        )
      ],
    );
  }
}

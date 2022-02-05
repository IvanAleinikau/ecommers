import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_bloc.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_event.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_state.dart';
import 'package:ecommers/core/model/consultation_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminPanelRequests extends StatefulWidget {
  const AdminPanelRequests({Key? key}) : super(key: key);

  @override
  _AdminPanelRequestsState createState() => _AdminPanelRequestsState();
}

class _AdminPanelRequestsState extends State<AdminPanelRequests> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height - 56.2;
    final width = MediaQuery.of(context).size.width - MediaQuery.of(context).size.width / 5 - 40;
    final _bloc = BlocProvider.of<ConsultationBloc>(context);
    final width2 = width - 50;
    return BlocBuilder<ConsultationBloc, ConsultationState>(
      builder: (context, state) {
        return Container(
          height: height,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                flex: 1,
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(5)),
                  child: Container(
                    color: Colors.grey.shade300,
                    child: Row(
                      children: [
                        const _Container(width: 50, text: '№'),
                        _Container(width: width2 / 4, text: 'Имя'),
                        _Container(width: width2 / 4, text: 'Мобильный телефон'),
                        _Container(width: width2 / 4, text: 'Почта'),
                        _Container(
                          width: width2 / 4,
                          text: '',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 10,
                child: Container(
                  child: state.when(
                    initState: () {
                      _bloc.add(FetchRequest());
                      return Container(
                        height: height,
                        child: Center(
                          child: CircularProgressIndicator(
                            color: Colors.lightBlue.shade700,
                          ),
                        ),
                      );
                    },
                    content: (List<ConsultationRequest> list) {
                      _bloc.add(FetchRequest());
                      return ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return _Row(
                            index: index,
                            name: list[index].name,
                            phoneNumber: list[index].phoneNumber,
                            email: list[index].email,
                            width: width2,
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _Container extends StatelessWidget {
  final double width;
  final String text;

  const _Container({
    Key? key,
    required this.width,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      child: Center(
        child: Text(
          text,
          style: Style.montserratFs16,
        ),
      ),
    );
  }
}

class _Row extends StatelessWidget {
  final int index;
  final String name;
  final String phoneNumber;
  final String email;
  final double width;

  _Row({
    Key? key,
    required this.index,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.width,
  }) : super(key: key);

  final Border border = Border.all(color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: index % 2 == 0 ? Colors.white : Colors.grey.shade300,
      child: Row(
        children: [
          _Container(
            width: 50,
            text: '${index + 1}.',
          ),
          _Container(
            width: width / 4,
            text: name,
          ),
          _Container(
            width: width / 4,
            text: phoneNumber,
          ),
          _Container(
            width: width / 4,
            text: email,
          ),
          _Container(
            width: width / 4,
            text: '',
          ),
        ],
      ),
    );
  }
}

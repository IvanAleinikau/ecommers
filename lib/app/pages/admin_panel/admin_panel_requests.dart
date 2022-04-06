import 'package:ecommers/app/common/app_constants.dart';
import 'package:ecommers/app/common/empty_widget.dart';
import 'package:ecommers/app/pages/admin_panel/widgets/table_element.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_bloc.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_event.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_state.dart';
import 'package:ecommers/core/model/consultation_request_model.dart';
import 'package:flutter/cupertino.dart';
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
      bloc: _bloc,
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
                        const TableElement(width: 50, text: '№'),
                        TableElement(width: width2 / 4, text: 'Имя'),
                        TableElement(width: width2 / 4, text: 'Мобильный телефон'),
                        TableElement(width: width2 / 4, text: 'Почта'),
                        TableElement(width: width2 / 4, text: emptyString),
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
                          return _RequestRow(
                            index: index,
                            request: list[index],
                            width: width2,
                            delete: (ConsultationRequest req) =>
                                _bloc.add(DeleteRequest(request: req)),
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

class _RequestRow extends StatelessWidget {
  final int index;
  final ConsultationRequest request;
  final double width;
  final Function(ConsultationRequest) delete;

  _RequestRow({
    Key? key,
    required this.index,
    required this.request,
    required this.width,
    required this.delete,
  }) : super(key: key);

  final Border border = Border.all(color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: index % 2 == 0 ? Colors.white : Colors.grey.shade300,
      child: Row(
        children: [
          TableElement(
            width: 50,
            text: '${index + 1}.',
          ),
          TableElement(
            width: width / 4,
            text: request.name,
          ),
          TableElement(
            width: width / 4,
            text: request.phoneNumber,
          ),
          TableElement(
            width: width / 4,
            text: request.email,
          ),
          const Expanded(child: EmptyWidget()),
          SizedBox(
            width: 40,
            child: Row(
              children: [
                IconButton(
                  onPressed: () => delete(request),
                  icon: const Icon(CupertinoIcons.clear),
                  iconSize: 20,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

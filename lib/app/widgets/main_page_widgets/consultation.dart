import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/main_page_widgets/section_name.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_bloc.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_state.dart';
import 'package:ecommers/core/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Consultation extends StatelessWidget {
  const Consultation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('asset/image/proig4.jpg'),
        ),
      ),
      child: Column(
        children: [
          const SectionName(
            name: 'Заказать бесплатную консультацию',
            style: Style.consultation,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow.shade600,
                  fixedSize: const Size(230, 60),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext ctx) {
                      return _consultation(context);
                    },
                  );
                },
                child: const Text(
                  'Оставить заявку',
                  style: Style.consultationButton,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _consultation(context) {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController _name = TextEditingController();
    final TextEditingController _number = TextEditingController();
    return BlocBuilder<ConsultationBloc, ConsultationState>(
      builder: (context, state) {
        // final ConsultationBloc _bloc =
        //     BlocProvider.of<ConsultationBloc>(context);
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Имя',
                        labelText: 'Имя',
                      ),
                      controller: _name,
                      validator: (value) => Validator.validateName(value!),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: '297778855',
                        labelText: 'Мобильный телефон',
                      ),
                      controller: _number,
                      validator: (phoneNumber) => Validator.validatePhoneNumber(phoneNumber!),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 25),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: const Size(500, 60),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                      },
                      child: const Text(
                        'Заказать бесплатную консультацию',
                        style: Style.consultationButton2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:ecommers/app/common/app_constants.dart';
import 'package:ecommers/app/common/button/my_button.dart';
import 'package:ecommers/app/common/empty_widget.dart';
import 'package:ecommers/app/pages/admin_panel/widgets/admin_panel_input.dart';
import 'package:ecommers/app/pages/admin_panel/widgets/table_element.dart';
import 'package:ecommers/app/pages/admin_panel/widgets/table_icons_section.dart';
import 'package:ecommers/app/pages/admin_panel/widgets/table_wrapper.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/core/blocs/news_bloc/news_cubit.dart';
import 'package:ecommers/core/blocs/news_bloc/news_state.dart';
import 'package:ecommers/core/model/news_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class AdminPanelNews extends StatefulWidget {
  const AdminPanelNews({Key? key}) : super(key: key);

  @override
  _AdminPanelNewsState createState() => _AdminPanelNewsState();
}

class _AdminPanelNewsState extends State<AdminPanelNews> {
  final ValueNotifier<bool> _showAddPart = ValueNotifier<bool>(false);
  final TextEditingController _imageUrl = TextEditingController();
  final TextEditingController _title = TextEditingController();
  final TextEditingController _subtitle = TextEditingController();

  late NewsCubit _cubit;

  @override
  void initState() {
    _cubit = NewsCubit();
    super.initState();
  }

  @override
  void dispose() {
    _imageUrl.dispose();
    _title.dispose();
    _subtitle.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      bloc: _cubit,
      listener: (BuildContext context, state) {
        if (state.newsCreated) {
          _imageUrl.clear();
          _title.clear();
          _subtitle.clear();
          _showAddPart.value = false;
        }
      },
      builder: (BuildContext context, state) {
        if (state.isLoading) {
          return Container(
            height: MediaQuery.of(context).size.height - 105,
            child: Center(
              child: CircularProgressIndicator(
                color: Colors.lightBlue.shade700,
              ),
            ),
          );
        } else {
          return ValueListenableBuilder(
            valueListenable: _showAddPart,
            builder: (context, bool showAddPart, child) {
              return showAddPart ? _addNewsSection(context) : _buildTable(context, state);
            },
          );
        }
      },
    );
  }

  Widget _buildTable(BuildContext context, NewsState state) {
    final height = MediaQuery.of(context).size.height - 105;
    final width = MediaQuery.of(context).size.width - MediaQuery.of(context).size.width / 5 - 40;
    final width2 = width - 50;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Text(
            'Новости'.toUpperCase(),
            style: Style.montserrat14w400.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10),
        TableWrapper(
          height: height,
          tableElements: [
            const TableElement(
              width: 50,
              text: '№',
            ),
            TableElement(
              width: width2 / 1.4,
              text: 'Заголовок',
            ),
            const TableElement(
              width: 100,
              text: 'Дата',
            ),
            const Expanded(
              child: EmptyWidget(),
            ),
            TableIconsSection(
              width: 50,
              icons: [
                InkWell(
                  onTap: () => _showAddPart.value = true,
                  child: const Icon(
                    CupertinoIcons.plus,
                  ),
                )
              ],
            ),
          ],
          child: state.newsList.isEmpty
              ? const EmptyWidget()
              : ListView.builder(
                  itemCount: state.newsList.length,
                  itemBuilder: (context, index) {
                    return _NewsRow(
                      index: index,
                      news: state.newsList[index],
                      width: width2,
                    );
                  },
                ),
        ),
      ],
    );
  }

  Widget _addNewsSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Добавить новость'.toUpperCase(),
            style: Style.montserrat14w400.copyWith(fontWeight: FontWeight.bold),
          ),
          const Divider(),
          AdminPanelInput(
            hintText: 'Ссылка на картинку',
            controller: _imageUrl,
          ),
          const SizedBox(
            height: 10,
          ),
          AdminPanelInput(
            hintText: 'Заголовок',
            controller: _title,
          ),
          const SizedBox(
            height: 10,
          ),
          AdminPanelInput(
            hintText: 'Подзаголовок',
            controller: _subtitle,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              MyButton(
                title: 'Отмена',
                onTap: () => _showAddPart.value = false,
              ),
              const SizedBox(
                width: 20,
              ),
              MyButton(
                title: 'Добавить',
                onTap: () => _createNews(context),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _createNews(BuildContext context) {
    _cubit.onCreateNews(
      news: News(
        title: _title.value.text,
        subtitle: _subtitle.value.text,
        imageUrl: _imageUrl.value.text,
        date: DateTime.now(),
      ),
    );
  }
}

class _NewsRow extends StatelessWidget {
  final int index;
  final News news;
  final double width;

  _NewsRow({
    Key? key,
    required this.index,
    required this.news,
    required this.width,
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
            width: width / 1.4,
            text: news.title,
          ),
          TableElement(
            width: 100,
            text: DateFormat('dd.MM.yyyy').format(news.date),
          ),
          const Expanded(child: EmptyWidget()),
          const TableElement(
            width: 50,
            text: emptyString,
          ),
        ],
      ),
    );
  }
}

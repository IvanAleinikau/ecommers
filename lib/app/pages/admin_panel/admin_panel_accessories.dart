import 'package:ecommers/app/common/button/my_button.dart';
import 'package:ecommers/app/common/empty_widget.dart';
import 'package:ecommers/app/pages/admin_panel/widgets/admin_panel_input.dart';
import 'package:ecommers/app/pages/admin_panel/widgets/table_element.dart';
import 'package:ecommers/app/pages/admin_panel/widgets/table_icons_section.dart';
import 'package:ecommers/app/pages/admin_panel/widgets/table_wrapper.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/core/blocs/accessories/accessories_cubit.dart';
import 'package:ecommers/core/blocs/accessories/accessories_state.dart';
import 'package:ecommers/core/model/accessories_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminPanelAccessories extends StatefulWidget {
  const AdminPanelAccessories({Key? key}) : super(key: key);

  @override
  State<AdminPanelAccessories> createState() => _AdminPanelAccessoriesState();
}

class _AdminPanelAccessoriesState extends State<AdminPanelAccessories> {
  final ValueNotifier<bool> _showAddPart = ValueNotifier<bool>(false);
  final TextEditingController _imageUrl = TextEditingController();
  final TextEditingController _title = TextEditingController();
  final TextEditingController _cost = TextEditingController();
  final TextEditingController _subtitle = TextEditingController();
  final TextEditingController _id = TextEditingController();
  final TextEditingController _description = TextEditingController();

  late AccessoriesCubit _cubit;

  @override
  void initState() {
    _cubit = AccessoriesCubit();
    super.initState();
  }

  @override
  void dispose() {
    _id.dispose();
    _imageUrl.dispose();
    _title.dispose();
    _cost.dispose();
    _subtitle.dispose();
    _description.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AccessoriesCubit, AccessoriesState>(
      bloc: _cubit,
      listener: (BuildContext context, state) {
        if (state.accessoriesCreated) {
          _imageUrl.clear();
          _title.clear();
          _cost.clear();
          _subtitle.clear();
          _id.clear();
          _description.clear();
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

  Widget _buildTable(BuildContext context, AccessoriesState state) {
    final height = MediaQuery.of(context).size.height - 105;
    final width = MediaQuery.of(context).size.width - MediaQuery.of(context).size.width / 5 - 40;
    final width2 = width - 50;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Text(
            'Аксессуары'.toUpperCase(),
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
              width: width2 / 1.6,
              text: 'Заголовок',
            ),
            const TableElement(
              width: 100,
              text: 'Цена',
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
          child: state.accessoriesList.isEmpty
              ? const EmptyWidget()
              : ListView.builder(
                  itemCount: state.accessoriesList.length,
                  itemBuilder: (context, index) {
                    return _AccessoriesRow(
                      index: index,
                      acoustics: state.accessoriesList[index],
                      width: width2,
                      update: (Accessories accessories) {
                        _id.text = accessories.id!;
                        _imageUrl.text = accessories.imageUrl;
                        _title.text = accessories.title;
                        _subtitle.text = accessories.subtitle;
                        _cost.text = accessories.cost;
                        _description.text = accessories.description;
                        _showAddPart.value = true;
                      },
                      delete: (Accessories accessories) =>
                          _cubit.onDeleteAccessories(accessories: accessories),
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
            'Добавить аксессуар'.toUpperCase(),
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
            height: 10,
          ),
          AdminPanelInput(
            hintText: 'Описание',
            controller: _description,
          ),
          const SizedBox(
            height: 10,
          ),
          AdminPanelInput(
            hintText: 'Цена',
            controller: _cost,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              MyButton(
                title: 'Отмена',
                onTap: () {
                  _imageUrl.clear();
                  _title.clear();
                  _cost.clear();
                  _subtitle.clear();
                  _id.clear();
                  _description.clear();
                  _showAddPart.value = false;
                },
              ),
              const SizedBox(
                width: 20,
              ),
              if (_id.text.isNotEmpty) ...{
                MyButton(
                  title: 'Обновить',
                  onTap: () => _cubit.onUpdateAccessories(
                    accessories: Accessories(
                      id: _id.text,
                      imageUrl: _imageUrl.text,
                      title: _title.text,
                      subtitle: _subtitle.text,
                      cost: _cost.text,
                      description: _description.text,
                    ),
                  ),
                ),
              } else ...{
                MyButton(
                  title: 'Добавить',
                  onTap: () => _createAccessories(context),
                ),
              },
            ],
          ),
        ],
      ),
    );
  }

  void _createAccessories(BuildContext context) {
    _cubit.onCreateAccessories(
      accessories: Accessories(
        imageUrl: _imageUrl.text,
        title: _title.text,
        subtitle: _subtitle.text,
        cost: _cost.text,
        description: _description.text,
      ),
    );
  }
}

class _AccessoriesRow extends StatelessWidget {
  final int index;
  final Accessories acoustics;
  final double width;
  final Function(Accessories) update;
  final Function(Accessories) delete;

  _AccessoriesRow({
    Key? key,
    required this.index,
    required this.acoustics,
    required this.width,
    required this.update,
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
            width: width / 1.6,
            text: acoustics.title,
          ),
          TableElement(
            width: 100,
            text: '${acoustics.cost} руб.',
          ),
          const Expanded(child: EmptyWidget()),
          SizedBox(
            width: 80,
            child: Row(
              children: [
                IconButton(
                  onPressed: () => update(acoustics),
                  icon: const Icon(CupertinoIcons.pencil),
                  iconSize: 20,
                  color: Colors.grey,
                ),
                IconButton(
                  onPressed: () => delete(acoustics),
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

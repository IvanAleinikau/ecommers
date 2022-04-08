import 'package:ecommers/app/common/button/my_button.dart';
import 'package:ecommers/app/common/empty_widget.dart';
import 'package:ecommers/app/pages/admin_panel/widgets/admin_panel_input.dart';
import 'package:ecommers/app/pages/admin_panel/widgets/table_element.dart';
import 'package:ecommers/app/pages/admin_panel/widgets/table_icons_section.dart';
import 'package:ecommers/app/pages/admin_panel/widgets/table_wrapper.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/core/blocs/vinyl/vinyl_cubit.dart';
import 'package:ecommers/core/blocs/vinyl/vinyl_state.dart';
import 'package:ecommers/core/model/vinyl_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminPanelVinyl extends StatefulWidget {
  const AdminPanelVinyl({Key? key}) : super(key: key);

  @override
  State<AdminPanelVinyl> createState() => _AdminPanelVinylState();
}

class _AdminPanelVinylState extends State<AdminPanelVinyl> {
  final ValueNotifier<bool> _showAddPart = ValueNotifier<bool>(false);
  final TextEditingController _imageUrl = TextEditingController();
  final TextEditingController _title = TextEditingController();
  final TextEditingController _cost = TextEditingController();
  final TextEditingController _year = TextEditingController();
  final TextEditingController _id = TextEditingController();
  final TextEditingController _description = TextEditingController();

  late VinylCubit _cubit;

  @override
  void initState() {
    _cubit = VinylCubit();
    super.initState();
  }

  @override
  void dispose() {
    _description.dispose();
    _id.dispose();
    _imageUrl.dispose();
    _title.dispose();
    _cost.dispose();
    _year.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VinylCubit, VinylState>(
      bloc: _cubit,
      listener: (BuildContext context, state) {
        if (state.vinylCreated) {
          _imageUrl.clear();
          _title.clear();
          _cost.clear();
          _year.clear();
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

  Widget _buildTable(BuildContext context, VinylState state) {
    final height = MediaQuery.of(context).size.height - 105;
    final width = MediaQuery.of(context).size.width - MediaQuery.of(context).size.width / 5 - 40;
    final width2 = width - 50;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Text(
            'Винил'.toUpperCase(),
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
              text: 'Год',
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
          child: state.vinylList.isEmpty
              ? const EmptyWidget()
              : ListView.builder(
                  itemCount: state.vinylList.length,
                  itemBuilder: (context, index) {
                    return _VinylRow(
                      index: index,
                      vinyl: state.vinylList[index],
                      width: width2,
                      update: (Vinyl vinyl) {
                        _id.text = vinyl.id!;
                        _imageUrl.text = vinyl.imageUrl;
                        _title.text = vinyl.title;
                        _cost.text = vinyl.cost;
                        _year.text = vinyl.year;
                        _description.text = vinyl.description;
                        _showAddPart.value = true;
                      },
                      delete: (Vinyl vinyl) => _cubit.onDeleteVinyl(vinyl: vinyl),
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
            'Добавить винил'.toUpperCase(),
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
            hintText: 'Заголовок',
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
            height: 10,
          ),
          AdminPanelInput(
            hintText: 'Год выпуска',
            controller: _year,
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
                  _year.clear();
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
                  onTap: () => _cubit.onUpdateVinyl(
                    vinyl: Vinyl(
                      id: _id.text,
                      imageUrl: _imageUrl.text,
                      title: _title.text,
                      year: _year.text,
                      cost: _cost.text,
                      description: _description.text,
                    ),
                  ),
                ),
              } else ...{
                MyButton(
                  title: 'Добавить',
                  onTap: () => _createVinyl(context),
                ),
              },
            ],
          ),
        ],
      ),
    );
  }

  void _createVinyl(BuildContext context) {
    _cubit.onCreateVinyl(
      vinyl: Vinyl(
        imageUrl: _imageUrl.text,
        title: _title.text,
        year: _year.text,
        cost: _cost.text,
        description: '',
      ),
    );
  }
}

class _VinylRow extends StatelessWidget {
  final int index;
  final Vinyl vinyl;
  final double width;
  final Function(Vinyl) update;
  final Function(Vinyl) delete;

  _VinylRow({
    Key? key,
    required this.index,
    required this.vinyl,
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
            text: vinyl.title,
          ),
          TableElement(
            width: 100,
            text: vinyl.year,
          ),
          TableElement(
            width: 100,
            text: '${vinyl.cost} руб.',
          ),
          const Expanded(child: EmptyWidget()),
          SizedBox(
            width: 80,
            child: Row(
              children: [
                IconButton(
                  onPressed: () => update(vinyl),
                  icon: const Icon(CupertinoIcons.pencil),
                  iconSize: 20,
                  color: Colors.grey,
                ),
                IconButton(
                  onPressed: () => delete(vinyl),
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

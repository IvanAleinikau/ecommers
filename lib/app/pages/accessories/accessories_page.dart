import 'package:ecommers/app/common/enums/pages.dart';
import 'package:ecommers/app/pages/accessories/widgets/accessories_widget.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/app_bar.dart';
import 'package:ecommers/app/widgets/bottom_bar.dart';
import 'package:ecommers/core/blocs/accessories/accessories_cubit.dart';
import 'package:ecommers/core/blocs/accessories/accessories_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccessoriesPage extends StatefulWidget {
  const AccessoriesPage({Key? key}) : super(key: key);

  @override
  _AccessoriesPageState createState() => _AccessoriesPageState();
}

class _AccessoriesPageState extends State<AccessoriesPage> {
  late AccessoriesCubit _cubit;

  @override
  void initState() {
    _cubit = AccessoriesCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MyAppBar(
            page: Pages.accessories,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Padding(
                  padding: EdgeInsets.only(left: 115, top: 50),
                  child: Text(
                    'Аксессуары',
                    style: Style.montserrat24w400,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  child: BlocConsumer<AccessoriesCubit, AccessoriesState>(
                    bloc: _cubit,
                    builder: (context, state) {
                      if (state.isLoading) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.width / 3,
                          child: const Center(child: CircularProgressIndicator()),
                        );
                      } else {
                        return GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: 0.65,
                          ),
                          itemCount: state.accessoriesList.length,
                          itemBuilder: (context, index) {
                            return AccessoriesWidget(accessories: state.accessoriesList[index]);
                          },
                        );
                      }
                    },
                    listener: (context, state) {},
                  ),
                ),
                const AppBottomBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

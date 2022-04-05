import 'package:ecommers/app/common/enums/pages.dart';
import 'package:ecommers/app/pages/acoustics/widgets/acoustics_widget.dart';
import 'package:ecommers/app/widgets/app_bar.dart';
import 'package:ecommers/app/widgets/bottom_bar.dart';
import 'package:ecommers/core/blocs/acoustics_bloc/acoustics_cubit.dart';
import 'package:ecommers/core/blocs/acoustics_bloc/acoustics_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AcousticsPage extends StatefulWidget {
  const AcousticsPage({Key? key}) : super(key: key);

  @override
  _AcousticsPageState createState() => _AcousticsPageState();
}

class _AcousticsPageState extends State<AcousticsPage> {
  late AcousticsCubit _cubit;

  @override
  void initState() {
    _cubit = AcousticsCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MyAppBar(
            page: Pages.acoustics,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
                  child: BlocConsumer<AcousticsCubit, AcousticsState>(
                    bloc: _cubit,
                    builder: (context, state) {
                      return GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 0.65,
                        ),
                        itemCount: state.acousticsList.length,
                        itemBuilder: (context, index) {
                          return AcousticsWidget(acoustics: state.acousticsList[index]);
                        },
                      );
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

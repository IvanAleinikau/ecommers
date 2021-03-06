import 'package:ecommers/app/common/enums/pages.dart';
import 'package:ecommers/app/pages/vinyl/widgets/vinyl_widget.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/app_bar.dart';
import 'package:ecommers/app/widgets/bottom_bar.dart';
import 'package:ecommers/core/blocs/vinyl/vinyl_cubit.dart';
import 'package:ecommers/core/blocs/vinyl/vinyl_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VinylPage extends StatefulWidget {
  const VinylPage({Key? key}) : super(key: key);

  @override
  _VinylPageState createState() => _VinylPageState();
}

class _VinylPageState extends State<VinylPage> {
  late VinylCubit _cubit;

  @override
  void initState() {
    _cubit = VinylCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MyAppBar(
            page: Pages.vinyl,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Padding(
                  padding: EdgeInsets.only(left: 115, top: 50),
                  child: Text(
                    'Виниловые пластинки',
                    style: Style.montserrat24w400,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  child: BlocConsumer<VinylCubit, VinylState>(
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
                          itemCount: state.vinylList.length,
                          itemBuilder: (context, index) {
                            return VinylWidget(vinyl: state.vinylList[index]);
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

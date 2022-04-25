import 'package:ecommers/core/blocs/dashboard/dashboard_cubit.dart';
import 'package:ecommers/core/blocs/dashboard/dashboard_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AdminPanelDashboard extends StatefulWidget {
  const AdminPanelDashboard({Key? key}) : super(key: key);

  @override
  _AdminPanelDashboardState createState() => _AdminPanelDashboardState();
}

class _AdminPanelDashboardState extends State<AdminPanelDashboard> {
  late TooltipBehavior _tooltipBehavior;
  late TooltipBehavior _tooltipBehavior1;
  late TooltipBehavior _tooltipBehavior2;
  late DashboardCubit _cubit;

  @override
  void initState() {
    _cubit = DashboardCubit();
    _tooltipBehavior = TooltipBehavior(enable: true);
    _tooltipBehavior1 = TooltipBehavior(enable: true);
    _tooltipBehavior2 = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height - 56.2;
    return BlocBuilder<DashboardCubit, DashboardState>(
      bloc: _cubit,
      builder: (context, state) {
        return Container(
          height: height,
          padding: EdgeInsets.zero,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Container(
                  height: 500,
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    title: ChartTitle(text: 'Количество продаж за последние пол года'),
                    legend: Legend(isVisible: false),
                    tooltipBehavior: _tooltipBehavior,
                    series: <LineSeries<SalesData, String>>[
                      LineSeries<SalesData, String>(
                        dataSource: <SalesData>[
                          SalesData('Январь', 35),
                          SalesData('Февраль', 28),
                          SalesData('Март', 34),
                          SalesData('Апрель', 32),
                          SalesData('Май', 40),
                          SalesData('Июнь', 24),
                        ],
                        xValueMapper: (SalesData sales, _) => sales.month,
                        yValueMapper: (SalesData sales, _) => sales.salesCount,
                        dataLabelSettings: const DataLabelSettings(isVisible: true),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 500,
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Row(
                    children: [
                      SfCircularChart(
                        title: ChartTitle(text: 'Объем продукции'),
                        legend: Legend(isVisible: true),
                        tooltipBehavior: _tooltipBehavior1,
                        series: <CircularSeries>[
                          PieSeries<ChartData, String>(
                            dataSource: [
                              ChartData('Винил', state.vinylCount),
                              ChartData('Аксессуары', state.accessoriesCount),
                              ChartData('Акустика', state.acousticsCount),
                            ],
                            dataLabelSettings: const DataLabelSettings(isVisible: true),
                            xValueMapper: (ChartData data, _) => data.production,
                            yValueMapper: (ChartData data, _) => data.count,
                          ),
                        ],
                      ),
                      Expanded(
                        child: SfCartesianChart(
                          primaryXAxis: CategoryAxis(),
                          title: ChartTitle(text: 'Расходы/доходы'),
                          legend: Legend(isVisible: true),
                          tooltipBehavior: _tooltipBehavior2,
                          series: <ChartSeries<MoneyData, String>>[
                            ColumnSeries<MoneyData, String>(
                              name: 'Расходы',
                              dataSource: [
                                MoneyData('Январь', 2350, 1400),
                                MoneyData('Февраль', 2420, 1300),
                                MoneyData('Марь', 3200, 1400),
                                MoneyData('Апрель', 3600, 2550),
                                MoneyData('Май', 2700, 1450),
                                MoneyData('Июнь', 2520, 2400),
                              ],
                              dataLabelSettings: const DataLabelSettings(isVisible: true),
                              xValueMapper: (MoneyData data, _) => data.month,
                              yValueMapper: (MoneyData data, _) => data.expenses,
                            ),
                            ColumnSeries<MoneyData, String>(
                              name: 'Доходы',
                              dataSource: [
                                MoneyData('Январь', 2350, 1400),
                                MoneyData('Февраль', 2420, 1300),
                                MoneyData('Марь', 3200, 1400),
                                MoneyData('Апрель', 3600, 2550),
                                MoneyData('Май', 2700, 1450),
                                MoneyData('Июнь', 2520, 2400),
                              ],
                              dataLabelSettings: const DataLabelSettings(isVisible: true),
                              xValueMapper: (MoneyData data, _) => data.month,
                              yValueMapper: (MoneyData data, _) => data.income,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        );
      },
    );
  }
}

class MoneyData {
  final double income;
  final double expenses;
  final String month;

  MoneyData(
    this.month,
    this.income,
    this.expenses,
  );
}

class ChartData {
  final String production;
  final int count;

  ChartData(
    this.production,
    this.count,
  );
}

class SalesData {
  final String month;
  final int salesCount;

  SalesData(this.month, this.salesCount);
}

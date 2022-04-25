import 'package:ecommers/app/widgets/order_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers.dart';

void main() {
  late Widget widget;

  setUp(() {
    widget = buildMaterialWidget(OrderButton(
      onTap: () {},
    ));
  });

  testWidgets('should  render OrderButton', (tester) async {
    await waitWidget(tester, widget);
    expect(find.byType(OrderButton), findsOneWidget);
  });
}

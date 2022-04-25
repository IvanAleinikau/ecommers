import 'package:ecommers/app/widgets/general_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers.dart';

void main() {
  late Widget widget;

  setUp(() {
    widget = buildMaterialWidget(GeneralInput(
      controller: TextEditingController(),
      hintText: '',
    ));
  });

  testWidgets('should  render GeneralInput', (tester) async {
    await waitWidget(tester, widget);
    expect(find.byType(GeneralInput), findsOneWidget);
  });
}

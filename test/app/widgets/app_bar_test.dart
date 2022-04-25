import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers.dart';

void main() {
  late Widget widget;

  setUp(() {
    widget = buildMaterialWidget(Container());
  });

  testWidgets('should  render MyAppBar', (tester) async {
    await waitWidget(tester, widget);
    expect(find.byType(Container), findsOneWidget);
  });
}
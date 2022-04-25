import 'package:ecommers/app/widgets/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers.dart';

void main() {
  late Widget widget;

  setUp(() {
    widget = buildMaterialWidget(const MyBackButton());
  });

  testWidgets('should render MyBackButton', (tester) async {
    await waitWidget(tester, widget);
    expect(find.byType(MyBackButton), findsOneWidget);
  });
}

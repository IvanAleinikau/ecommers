import 'package:ecommers/app/widgets/auth_widgets/auth_navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers.dart';

void main() {
  late Widget widget;

  setUp(() {
    widget = buildMaterialWidget(AuthNavigator(
      text: '',
      buttonText: '',
      onPressed: () {},
    ));
  });

  testWidgets('should  render AuthNavigator', (tester) async {
    await waitWidget(tester, widget);
    expect(find.byType(AuthNavigator), findsOneWidget);
  });
}

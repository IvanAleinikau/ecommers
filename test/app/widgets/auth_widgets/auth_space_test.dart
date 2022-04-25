import 'package:ecommers/app/widgets/auth_widgets/auth_space.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers.dart';

void main() {
  late Widget widget;

  setUp(() {
    widget = buildMaterialWidget(const AuthSpace(
      widgets: [],
    ));
  });

  testWidgets('should  render AuthSpace', (tester) async {
    await waitWidget(tester, widget);
    expect(find.byType(AuthSpace), findsOneWidget);
  });
}

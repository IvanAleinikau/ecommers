import 'package:ecommers/app/widgets/auth_widgets/auth_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers.dart';

void main() {
  late Widget widget;

  setUp(() {
    widget = buildMaterialWidget(const AuthImage());
  });

  testWidgets('should  render AuthImage', (tester) async {
    await waitWidget(tester, widget);
    expect(find.byType(AuthImage), findsOneWidget);
  });
}

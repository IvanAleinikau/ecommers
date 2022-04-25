import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/auth_widgets/auth_subtitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers.dart';

void main() {
  late Widget widget;

  setUp(() {
    widget = buildMaterialWidget(const AuthSubtitle(
      padding: EdgeInsets.zero,
      subtitle: '',
      style: Style.montserrat16w400,
    ));
  });

  testWidgets('should  render AuthSubtitle', (tester) async {
    await waitWidget(tester, widget);
    expect(find.byType(AuthSubtitle), findsOneWidget);
  });
}

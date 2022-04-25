import 'package:ecommers/app/widgets/admin_panel_page_widgets/admin_panel_separator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers.dart';

void main() {
  late Widget widget;

  setUp(() {
    widget = buildMaterialWidget(const AdminPanelSeparator());
  });

  testWidgets('should  render AdminPanelSeparator', (tester) async {
    await waitWidget(tester, widget);
    expect(find.byType(AdminPanelSeparator), findsOneWidget);
  });
}

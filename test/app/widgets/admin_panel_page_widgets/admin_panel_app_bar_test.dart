import 'package:ecommers/app/widgets/admin_panel_page_widgets/admin_panel_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers.dart';

void main() {
  late Widget widget;

  setUp(() {
    widget = buildMaterialWidget(const AdminPanelAppBar());
  });

  testWidgets('should  render AdminPanelAppBar', (tester) async {
    await waitWidget(tester, widget);
    expect(find.byType(AdminPanelAppBar), findsOneWidget);
  });
}

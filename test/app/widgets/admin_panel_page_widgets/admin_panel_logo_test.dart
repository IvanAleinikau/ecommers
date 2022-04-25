import 'package:ecommers/app/widgets/admin_panel_page_widgets/admin_panel_logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers.dart';

void main() {
  late Widget widget;

  setUp(() {
    widget = buildMaterialWidget(const AdminPanelLogo());
  });

  testWidgets('should  render AdminPanelLogo', (tester) async {
    await waitWidget(tester, widget);
    expect(find.byType(AdminPanelLogo), findsOneWidget);
  });
}

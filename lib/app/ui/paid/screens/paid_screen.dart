import 'package:anttec_mobile/app/ui/paid/widgets/buttons_type_voucher.dart';
import 'package:anttec_mobile/app/ui/paid/widgets/cash_payment_widget.dart';
import 'package:anttec_mobile/app/ui/paid/widgets/dropdown_select_document_widget.dart';
import 'package:anttec_mobile/app/ui/paid/widgets/methods_sale_widget.dart';
import 'package:anttec_mobile/app/ui/paid/widgets/search_client_widget.dart';
import 'package:anttec_mobile/app/ui/paid/widgets/text_data_widget.dart';
import 'package:anttec_mobile/app/ui/paid/widgets/type_issue_widget.dart';
import 'package:flutter/material.dart';

class PaidScreen extends StatelessWidget {
  const PaidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ButtonsTypeVoucherWidget(),
              DropdownSelectDocumentWidget(),
              SearchClientWidget(),
              TextDataWidget(),
              TypeIssueWidget(),
              MethodsSaleWidget(),
              CashPaymentWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

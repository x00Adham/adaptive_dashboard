

import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/widget/tittle_text_field_widget.dart';
import 'package:flutter/material.dart';

class TransactionFormWidget extends StatelessWidget {
  const TransactionFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TittleTextFieldWidget(
                tittle: "Customer name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TittleTextFieldWidget(
                tittle: "Customer Email",
                hint: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TittleTextFieldWidget(
                tittle: "Item name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TittleTextFieldWidget(tittle: "Item mount", hint: "USD"),
            ),
          ],
        ),
        SizedBox(height: 24),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  shadowColor: Colors.transparent,
                  disabledBackgroundColor: Colors.transparent,
                ),
                onPressed: null,
                child: Text(
                  "Add more details",
                  style: TextStyle(
                    color: const Color(0xFF4EB7F2),
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 63,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ), // Rounded corners
                    ),

                    backgroundColor: Color(0xff4EB7F2),
                    elevation: 0,
                    shadowColor: Color(0xff4EB7F2),
                    disabledBackgroundColor: Color(0xff4EB7F2),
                  ),

                  onPressed: null,
                  child: Text("Send Money", style: AppStyles.styleSemiBold18()),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

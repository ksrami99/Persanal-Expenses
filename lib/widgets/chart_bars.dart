import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingProductOfTotal;

  const ChartBar(this.label, this.spendingAmount, this.spendingProductOfTotal);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, contraint) {
        return Column(
          children: [
            Container(
              height: contraint.maxHeight * 0.15,
              child: FittedBox(
                child: Text('₹${spendingAmount.toStringAsFixed(0)}'),
              ),
            ),
            SizedBox(
              height: contraint.maxHeight * 0.05,
            ),
            Container(
              height: contraint.maxHeight * 0.6,
              width: 10,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.0),
                      color: Color.fromRGBO(220, 220, 220, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  FractionallySizedBox(
                    heightFactor: spendingProductOfTotal,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: contraint.maxHeight * 0.05,
            ),
            Container(
              height: contraint.maxHeight * 0.15,
              child: FittedBox(
                child: Text(label),
              ),
            ),
          ],
        );
      },
    );
  }
}

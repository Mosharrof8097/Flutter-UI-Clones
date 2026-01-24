import 'package:bkash_ui/screen/inbox/section_weidge/transection/transection_list.dart';
import 'package:flutter/material.dart';

class TransectionWeidge extends StatelessWidget {
  const TransectionWeidge({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(12),
      itemCount: transactionList.length,
      itemBuilder: (context, index) {
        final trx = transactionList[index];
        return Container(
          margin: EdgeInsets.symmetric(vertical: 6),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: trx.iconColor.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Icon(trx.icon, color: trx.iconColor, size: 28),
              ),
              SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      trx.type, 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      trx.name, 
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      trx.number, 
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    Text(
                      trx.trxId, 
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "${trx.amount.toStringAsFixed(2)}৳",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: trx.iconColor,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    trx.time,
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

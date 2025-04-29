import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ala_el_tareek/core/app_colors.dart';
import 'package:ala_el_tareek/core/app_font_style.dart'; // مهم عشان تنسيق التاريخ

class BalanceDetailsScreen extends StatelessWidget {
  final double currentBalance;
  final List<Map<String, dynamic>> transactions;

  const BalanceDetailsScreen({
    super.key,
    required this.currentBalance,
    required this.transactions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // خلفية الشاشة أغمق من الأبيض بشويّة
      appBar: AppBar(
        backgroundColor: Colors.white, // لون الاب بار أبيض
        elevation: 1,
        title: Text(
          'Balance Details',
          style: AppTextStyle.titleTextMedium24.copyWith(color: AppColors.mainColor)
        ),
        iconTheme: IconThemeData(
          color: Colors.blue.shade800,
        ), // زر الرجوع لونه أزرق برضو
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBalanceCard(),
            const SizedBox(height: 20),
             Text(
              'Transaction History',
              style: AppTextStyle.bodyTextMedium18,
            ),
            const SizedBox(height: 10),
            Expanded(
              child:
                  transactions.isEmpty
                      ?  Center(
                        child: Text(
                          'No transactions yet.',
                          style: AppTextStyle.bodyTextRegular16,
                        ),
                      )
                      : ListView.builder(
                        itemCount: transactions.length,
                        itemBuilder: (context, index) {
                          final transaction = transactions[index];
                          return _buildTransactionCard(transaction);
                        },
                      ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBalanceCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue.shade800,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            'Current Balance',
            style: AppTextStyle.bodyTextMedium16.copyWith(color: AppColors.white),
          ),
          const SizedBox(height: 10),
          Text(
            '${currentBalance.toStringAsFixed(0)} EGP',
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionCard(Map<String, dynamic> transaction) {
    bool isAdd = transaction['type'] == 'Add';
    String formattedDate = DateFormat(
      'yyyy-MM-dd – kk:mm',
    ).format(transaction['date']);

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: isAdd ? Colors.green : Colors.red,
          child: Icon(
            isAdd ? Icons.arrow_downward : Icons.arrow_upward,
            color: Colors.white,
          ),
        ),
        title: Text(
          isAdd ? 'Balance Added' : transaction['service'] ?? 'Service Used',
          style: AppTextStyle.bodyTextRegular16,
        ),
        subtitle: Text(formattedDate),
        trailing: Text(
          '${isAdd ? '+' : '-'}${transaction['amount'].toStringAsFixed(0)} EGP',
          style: TextStyle(
            fontSize: 16,
            color: isAdd ? Colors.green : Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

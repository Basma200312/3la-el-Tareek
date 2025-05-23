import 'package:flutter/material.dart';
import 'package:ala_el_tareek/core/app_assets.dart';
import 'package:ala_el_tareek/core/app_colors.dart';
import 'package:ala_el_tareek/core/app_font_style.dart';
import 'package:ala_el_tareek/features/offers/presentation/screens/Offers.dart';
import '../screens/get_help_screen.dart';
import '../screens/stations_screen.dart';
import '../screens/services_screen.dart';
import 'balance_details_screen.dart';

class HomeContentScreen extends StatefulWidget {
  const HomeContentScreen({super.key});

  @override
  State<HomeContentScreen> createState() => _HomeContentScreenState();
}

class _HomeContentScreenState extends State<HomeContentScreen> {
  double _balance = 0.0;
  final List<Map<String, dynamic>> _transactions = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildTopBar(),
          _buildBackgroundContent(context),
          _buildOffersSection(context),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(AppAssets.logo),
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(width: 10),
              Text(
                '3la el Tareek',
                style: AppTextStyle.titleTextMedium24.copyWith(
                  color: AppColors.mainColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Material(
            elevation: 3,
            shape: const CircleBorder(),
            color: Colors.grey.shade300,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              child: Text(
                'AN',
                style: AppTextStyle.bodyTextMedium16.copyWith(
                  color: AppColors.mainColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBackgroundContent(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.background),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          _buildBalanceCard(context),
          const SizedBox(height: 20),
          _buildMainButtons(context),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildBalanceCard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildBalanceHeader(),
          const SizedBox(height: 10),
          _buildBalanceAmount(),
          const SizedBox(height: 15),
          _buildAddBalanceButton(context),
        ],
      ),
    );
  }

  Widget _buildBalanceHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Balance',
          style: AppTextStyle.titleTextMedium24.copyWith(
            color: AppColors.mainColor,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => BalanceDetailsScreen(
                      currentBalance: _balance,
                      transactions: _transactions,
                    ),
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade300,
            ),
            child: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBalanceAmount() {
    return Text(
      '${_balance.toStringAsFixed(0)} EGP',
      style: AppTextStyle.titleTextMedium24.copyWith(
        color: AppColors.mainColor,
        fontSize: 30,
      ),
    );
  }

  Widget _buildAddBalanceButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          _showAddBalanceDialog(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          '+ Add Balance',
          style: AppTextStyle.bodyTextMedium16.copyWith(color: AppColors.white),
        ),
      ),
    );
  }

  void _showAddBalanceDialog(BuildContext context) {
    TextEditingController amountController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Text(
            'Add Balance',
            style: AppTextStyle.bodyTextMedium16.copyWith(color: AppColors.mainColor)
          ),
          content: TextField(
            controller: amountController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Enter amount in EGP',
              hintStyle: AppTextStyle.bodyTextRegular14,
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                'Cancel',
                style: AppTextStyle.bodyTextMedium16.copyWith(
                  color: AppColors.mainColor,
                ),
              ),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {
                String enteredAmount = amountController.text;
                if (enteredAmount.isNotEmpty) {
                  double amount = double.parse(enteredAmount);
                  setState(() {
                    _balance += amount;
                    _transactions.add({
                      'type': 'Add',
                      'amount': amount,
                      'date': DateTime.now(),
                    });
                  });
                }
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                'Confirm',
                style: AppTextStyle.bodyTextMedium16.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildMainButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _iconButton(
            context,
            Icons.car_crash,
            'Get Help',
            Colors.red,
            const GetHelpScreen(),
            0.0,
          ),
          _iconButton(
            context,
            Icons.local_gas_station,
            'Stations',
            Colors.blue,
            const StationsScreen(),
            0.0,
          ),
          _iconButton(
            context,
            Icons.build,
            'Services',
            Colors.amber,
            ServicesScreen(
              balance: _balance,
              transactions: _transactions,
              onDeduct: (amount) {
                setState(() {
                  _balance -= amount;
                });
              },
            ),
            0.0,
          ),
        ],
      ),
    );
  }

  Widget _iconButton(
    BuildContext context,
    IconData icon,
    String label,
    Color color,
    Widget screen,
    double cost,
  ) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (_balance >= cost) {
              setState(() {
                _balance -= cost;
                _transactions.add({
                  'type': 'Deduct',
                  'amount': cost,
                  'date': DateTime.now(),
                  'service': label,
                });
              });
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screen),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Insufficient balance!'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          child: CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: Icon(icon, color: Colors.white, size: 28),
          ),
        ),
        const SizedBox(height: 8),
        Text(label, style: AppTextStyle.bodyTextRegular14),
      ],
    );
  }

  Widget _buildOffersSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          _buildOffersHeader(context),
          const SizedBox(height: 10),
          _buildOffersList(),
        ],
      ),
    );
  }

  Widget _buildOffersHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Offers',
          style: AppTextStyle.titleTextMedium24.copyWith(
            color: AppColors.mainColor,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Offers()),
            );
          },
          icon: Icon(Icons.arrow_forward, color: Colors.blue.shade800),
        ),
      ],
    );
  }

  Widget _buildOffersList() {
    final List<Map<String, String>> offers = [
      {
        'image': AppAssets.oil,
        'title': 'Free Oil Change',
        'description': 'Get your first oil change free with our app.',
      },
      {
        'image': AppAssets.rescue,
        'title': '50% OFF Rescue Services',
        'description': 'Half-price rescue services for all emergencies.',
      },
    ];
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: offers.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder:
            (context, index) => _offerItem(
              offers[index]['image']!,
              offers[index]['title']!,
              offers[index]['description']!,
            ),
      ),
    );
  }

  Widget _offerItem(String imagePath, String title, String description) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: Image.asset(imagePath, fit: BoxFit.contain),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.bodyTextMedium14,
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              description,
              style: AppTextStyle.bodyTextRegular12.copyWith(
                color: AppColors.black54,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

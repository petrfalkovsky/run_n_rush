import 'package:flutter/material.dart';
import 'package:run_n_rush/data/dto/account/account.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';

class TransactionItemWidget extends StatelessWidget {
  final GetTransactionDto transaction;

  const TransactionItemWidget({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      /// уменьшить расстояние между девайдером и айтемом
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF01B8FF),
            ),
            child: Center(
              child: Image.asset(
                AppIcons.outIcon,
                width: 16.3,
                height: 16.3,
                fit: BoxFit.cover,
              ),
            ),
          ),
          6.w,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              4.h,
              Text(
                transaction.createdAt ??
                    '', // Отобразите дату создания транзакции
                style: AppStyles.caption
                    .andWeight(FontWeight.w600)
                    .andColor(AppColors.text.secondary),
              ),
              9.h,
              Row(
                children: [
                  Text(
                    transaction.operationType ?? '', // Отобразите тип операции
                    style: AppStyles.body
                        .andWeight(FontWeight.w600)
                        .andColor(AppColors.text.primary),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                "+",
                style: AppStyles.body
                    .andWeight(FontWeight.w600)
                    .andColor(AppColors.text.primary),
                textAlign: TextAlign.end,
              ),
              Image.asset(AppIcons.coin),
              5.5.w,
              Text(
                transaction.amount ?? '', // Отобразите сумму транзакции
                style: AppStyles.body
                    .andWeight(FontWeight.w600)
                    .andColor(AppColors.text.primary),
                textAlign: TextAlign.end,
              ),
            ],
          )
        ],
      ),
    );
  }
}

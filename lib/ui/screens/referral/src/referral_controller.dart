import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:run_n_rush/core/utils/stream_subscriber.dart';
import 'package:run_n_rush/data/%20dto/settings/change_email_dto.dart';
import 'package:run_n_rush/data/%20dto/settings/profile_dto.dart';
import 'package:run_n_rush/data/repository/local/local_repository.dart';
import 'package:run_n_rush/domain/profile/profile_info.dart';
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/screens/referral/referral.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

enum TypeSetting { name, sername, birthday, phone, password, email, code, none }

class ReferralsController extends StatexController with StreamSubscriberMixin {}



import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repository/login_repository.dart';

final authProvider = StateProvider.autoDispose((ref) => LoginRepository());
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:run_n_rush/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  // generateForDir: ['test', 'lib'],
  initializerName: r'$initGetIt', // default
  preferRelativeImports: false, // default
  asExtension: false, // default
)
void configureDependencies(String environment) =>
    $initGetIt(getIt, environment: environment);

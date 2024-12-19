library;

import 'package:intl_utils_fork/intl_utils.dart';
import 'package:intl_utils_fork/src/generator/generator_exception.dart';
import 'package:intl_utils_fork/src/utils/utils.dart';

Future<void> main(List<String> args) async {
  try {
    var generator = Generator();
    await generator.generateAsync();
  } on GeneratorException catch (e) {
    exitWithError(e.message);
  } catch (e) {
    exitWithError('Failed to generate localization files.\n$e');
  }
}

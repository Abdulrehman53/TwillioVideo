

import '../shared/validators/validators.dart';

mixin RoomValidators {
  final StringValidator nameValidator = NonEmptyStringValidator();
  final String invalidNameErrorText = 'Room name can\'t be empty';
}

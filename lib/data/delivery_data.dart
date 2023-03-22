import 'package:flutter_parcel_app/models/models.dart';
import 'package:flutter_parcel_app/utils/image_utils.dart';

class DeliveryData {
  static List<DeliveryMethod> deliveryMethods = [
    DeliveryMethod(
      deliveryMethod: 'From door to parcel center',
      duration: '2 - 3 days',
      image: ImageUtils.icsDoorToParcel,
    ),
    DeliveryMethod(
      deliveryMethod: 'From door to door',
      duration: '1 - 2 days',
      image: ImageUtils.icDoorToDoor,
    ),
  ];
}

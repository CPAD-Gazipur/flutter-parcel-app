import 'package:flutter_parcel_app/models/models.dart';
import 'package:flutter_parcel_app/utils/image_utils.dart';

class ParcelData {
  static List<Parcel> parcelList = [
    Parcel(
      size: 'Small',
      dimension: 'Max. 25 kg, 8 x 38 x 64 cm',
      description: 'Fits in envelop',
      image: ImageUtils.icParcelSizeSmall,
    ),
    Parcel(
      size: 'Medium',
      dimension: 'Max. 25 kg, 19 x 38 x 64 cm',
      description: 'Fits in a shoe box',
      image: ImageUtils.icParcelSizeMedium,
    ),
    Parcel(
      size: 'Large',
      dimension: 'Max. 25 kg, 41 x 38 x 64 cm',
      description: 'Fits in a cardboard box',
      image: ImageUtils.icParcelSizeLarge,
    ),
    Parcel(
      size: 'Custom',
      dimension: 'Max: 30kg or 300cm',
      description: 'Fits on a skid',
      image: ImageUtils.icParcelSizeCustom,
    ),
  ];
}

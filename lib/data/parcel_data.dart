import 'package:flutter_parcel_app/models/models.dart';
import 'package:flutter_parcel_app/utils/image_utils.dart';

class ParcelData {
  static List<Parcel> parcelList = [
    Parcel(
      size: 'Small',
      dimension: 'Max. 25 kg, 8 x 38 x 63 cm',
      description: 'Fits in envelop',
      image: ImageUtils.icParcelSizeSmall,
    ),
    Parcel(
      size: 'Medium',
      dimension: 'Max. 35 kg, 8 x 38 x 63 cm',
      description: 'Fits in envelop',
      image: ImageUtils.icParcelSizeMedium,
    ),
    Parcel(
      size: 'Large',
      dimension: 'Max. 46 kg, 8 x 38 x 63 cm',
      description: 'Fits in envelop',
      image: ImageUtils.icParcelSizeLarge,
    ),
    Parcel(
      size: 'Custom',
      dimension: 'Max. 100 kg, 8 x 38 x 63 cm',
      description: 'Fits in envelop',
      image: ImageUtils.icParcelSizeCustom,
    ),
  ];
}

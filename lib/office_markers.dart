import 'package:google_maps_flutter/google_maps_flutter.dart';

void onMapCreated(Map<String, Marker> markers) {
  markers.clear();
  markers['Алматы'] = Marker(
    markerId: MarkerId('Алматы'),
    position: LatLng(43.251692, 76.946248),
    infoWindow: InfoWindow(
      title: 'Алматы',
      snippet: 'г. Алматы, ул. Карасай Батыра, 55',
    ),
  );

  markers['Семей'] = Marker(
    markerId: MarkerId('Семей'),
    position: LatLng(50.430910, 80.263379),
    infoWindow: InfoWindow(
      title: 'Семей',
      snippet: 'г. Семей, ул. Привокзальная площадь, 5',
    ),
  );

  markers['Оскемен'] = Marker(
    markerId: MarkerId('Оскемен'),
    position: LatLng(50.005327, 82.568046),
    infoWindow: InfoWindow(
      title: 'Оскемен',
      snippet: 'г. Оскемен, ул. Лениногорская, 108 (4 этаж)',
    ),
  );

  markers['Павлодар'] = Marker(
    markerId: MarkerId('Павлодар'),
    position: LatLng(52.296711, 76.973432),
    infoWindow: InfoWindow(
      title: 'Павлодар',
      snippet: 'г. Павлодар, ул. Сураганова, 7',
    ),
  );

  markers['Караганда'] = Marker(
    markerId: MarkerId('Караганда'),
    position: LatLng(49.801142, 73.127901),
    infoWindow: InfoWindow(
      title: 'Караганда',
      snippet: 'г. Караганда, ул. Ержанова 34/1',
    ),
  );

  markers['Астана'] = Marker(
    markerId: MarkerId('Астана'),
    position: LatLng(51.112036, 71.413988),
    infoWindow: InfoWindow(
      title: 'Астана',
      snippet: 'г. Астана, ул. Сауран 42/1',
    ),
  );

  markers['Центральный Аппарат'] = Marker(
    markerId: MarkerId('Центральный Аппарат'),
    position: LatLng(51.131196, 71.423956),
    infoWindow: InfoWindow(
      title: 'Центральный Аппарат',
      snippet: 'г.Астана, ул. Кунаева, 10',
    ),
  );

  markers['Кокшетау'] = Marker(
    markerId: MarkerId('Кокшетау'),
    position: LatLng(53.286560, 69.423371),
    infoWindow: InfoWindow(
      title: 'Кокшетау',
      snippet: 'г. Кокшетау, ул. Вернадского, 3',
    ),
  );

  markers['Костанай'] = Marker(
    markerId: MarkerId('Костанай'),
    position: LatLng(53.224440, 63.608189),
    infoWindow: InfoWindow(
      title: 'Костанай',
      snippet: 'г. Костанай, ул. Толстого, 135А',
    ),
  );

  markers['Актобе'] = Marker(
    markerId: MarkerId('Актобе'),
    position: LatLng(50.287305, 57.155468),
    infoWindow: InfoWindow(
      title: 'Актобе',
      snippet: 'г. Актобе, пр-т. А. Молдагуловой, 49',
    ),
  );

  markers['Атырау'] = Marker(
    markerId: MarkerId('Атырау'),
    position: LatLng(47.098964, 51.933402),
    infoWindow: InfoWindow(
      title: 'Атырау',
      snippet: 'г. Атырау, ул. Сырым-Датова, 42а',
    ),
  );

  markers['Актау'] = Marker(
    markerId: MarkerId('Актау'),
    position: LatLng(43.642544, 51.229672),
    infoWindow: InfoWindow(
      title: 'Актау',
      snippet: 'г. Актау, 14 мкр., 70 (БЦ Казмортрансфлот, 8эт.)',
    ),
  );

  markers['Кызылорда'] = Marker(
    markerId: MarkerId('Кызылорда'),
    position: LatLng(44.853172, 65.494418),
    infoWindow: InfoWindow(
      title: 'Кызылорда',
      snippet: 'г. Кызылорда, ул. Ауелбекова, 43',
    ),
  );

  markers['Шымкент'] = Marker(
    markerId: MarkerId('Шымкент'),
    position: LatLng(42.299800, 69.607963),
    infoWindow: InfoWindow(
      title: 'Шымкент',
      snippet: 'г. Шымкент, пр-т. Кабанбай Батыра, 3',
    ),
  );

  markers['Жамбыл'] = Marker(
    markerId: MarkerId('Жамбыл'),
    position: LatLng(42.867754, 71.382015),
    infoWindow: InfoWindow(
      title: 'Жамбыл',
      snippet: 'г. Жамбыл, ул. Турксибская, 2',
    ),
  );

  markers['Москва'] = Marker(
    markerId: MarkerId('Москва'),
    position: LatLng(55.750766, 37.609064),
    infoWindow: InfoWindow(
      title: 'Москва',
      snippet: 'г. Москва, Краснопресненская наб., д.12, подъезд №6, офис 950',
    ),
  );
}

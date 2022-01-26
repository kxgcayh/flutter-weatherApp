import 'package:hive/hive.dart';
part 'weather_model.g.dart';

const String baseWeatherBox = 'baseWeatherBox';
const String baseWeatherBoxKey = 'baseWeatherBoxKey';

@HiveType(typeId: 0, adapterName: 'BaseWeatherAdapter')
class BaseWeather {
  @HiveField(0)
  dynamic lat; // double
  @HiveField(1)
  dynamic lon; // double
  @HiveField(2)
  String? timezone;
  @HiveField(3)
  int? timezoneOffset;
  @HiveField(4)
  Current? current;
  @HiveField(5)
  List<Hourly>? hourly;
  @HiveField(6)
  List<Daily>? daily;

  BaseWeather({
    this.lat,
    this.lon,
    this.timezone,
    this.timezoneOffset,
    this.current,
    this.hourly,
    this.daily,
  });

  BaseWeather.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
    timezone = json['timezone'];
    timezoneOffset = json['timezone_offset'];
    current =
        json['current'] != null ? Current?.fromJson(json['current']) : null;
    if (json['hourly'] != null) {
      hourly = <Hourly>[];
      json['hourly'].forEach((v) {
        hourly?.add(Hourly.fromJson(v));
      });
    }
    if (json['daily'] != null) {
      daily = <Daily>[];
      json['daily'].forEach((v) {
        daily?.add(Daily.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['lat'] = lat;
    data['lon'] = lon;
    data['timezone'] = timezone;
    data['timezone_offset'] = timezoneOffset;
    if (current != null) {
      data['current'] = current?.toJson();
    }
    if (hourly != null) {
      data['hourly'] = hourly?.map((v) => v.toJson()).toList();
    }
    if (daily != null) {
      data['daily'] = daily?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

@HiveType(typeId: 1, adapterName: 'CurrentAdapter')
class Current {
  @HiveField(0)
  int? dt;
  @HiveField(1)
  int? sunrise;
  @HiveField(2)
  int? sunset;
  @HiveField(3)
  dynamic temp; // double
  @HiveField(4)
  dynamic feelsLike; // double
  @HiveField(5)
  int? pressure;
  @HiveField(6)
  int? humidity;
  @HiveField(7)
  dynamic dewPoint; // double
  @HiveField(8)
  dynamic uvi;
  @HiveField(9)
  int? clouds;
  @HiveField(10)
  int? visibility;
  @HiveField(11)
  dynamic windSpeed; // double
  @HiveField(12)
  int? windDeg;
  @HiveField(13)
  dynamic windGust; // double
  @HiveField(14)
  List<Weather>? weather;

  Current(
      {this.dt,
      this.sunrise,
      this.sunset,
      this.temp,
      this.feelsLike,
      this.pressure,
      this.humidity,
      this.dewPoint,
      this.uvi,
      this.clouds,
      this.visibility,
      this.windSpeed,
      this.windDeg,
      this.windGust,
      this.weather});

  Current.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    temp = json['temp'];
    feelsLike = json['feels_like'];
    pressure = json['pressure'];
    humidity = json['humidity'];
    dewPoint = json['dew_point'];
    uvi = json['uvi'];
    clouds = json['clouds'];
    visibility = json['visibility'];
    windSpeed = json['wind_speed'];
    windDeg = json['wind_deg'];
    windGust = json['wind_gust'];
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather?.add(Weather.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['dt'] = dt;
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    data['temp'] = temp;
    data['feels_like'] = feelsLike;
    data['pressure'] = pressure;
    data['humidity'] = humidity;
    data['dew_point'] = dewPoint;
    data['uvi'] = uvi;
    data['clouds'] = clouds;
    data['visibility'] = visibility;
    data['wind_speed'] = windSpeed;
    data['wind_deg'] = windDeg;
    data['wind_gust'] = windGust;
    if (weather != null) {
      data['weather'] = weather?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

@HiveType(typeId: 7, adapterName: 'WeatherAdapter')
class Weather {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? main;
  @HiveField(2)
  String? description;
  @HiveField(3)
  String? icon;

  Weather({this.id, this.main, this.description, this.icon});

  Weather.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['main'] = main;
    data['description'] = description;
    data['icon'] = icon;
    return data;
  }
}

@HiveType(typeId: 2, adapterName: 'HourlyAdapter')
class Hourly {
  @HiveField(0)
  int? dt;
  @HiveField(1)
  dynamic temp; // double
  @HiveField(2)
  dynamic feelsLike; // double
  @HiveField(3)
  int? pressure;
  @HiveField(4)
  int? humidity;
  @HiveField(5)
  dynamic dewPoint; // double
  @HiveField(6)
  dynamic uvi;
  @HiveField(7)
  int? clouds;
  @HiveField(8)
  int? visibility;
  @HiveField(9)
  dynamic windSpeed; // double
  @HiveField(10)
  int? windDeg;
  @HiveField(11)
  dynamic windGust; // double
  @HiveField(12)
  List<Weather>? weather;
  @HiveField(13)
  dynamic pop; // double
  @HiveField(14)
  Rain? rain;

  Hourly(
      {this.dt,
      this.temp,
      this.feelsLike,
      this.pressure,
      this.humidity,
      this.dewPoint,
      this.uvi,
      this.clouds,
      this.visibility,
      this.windSpeed,
      this.windDeg,
      this.windGust,
      this.weather,
      this.pop,
      this.rain});

  Hourly.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    temp = json['temp'];
    feelsLike = json['feels_like'];
    pressure = json['pressure'];
    humidity = json['humidity'];
    dewPoint = json['dew_point'];
    uvi = json['uvi'];
    clouds = json['clouds'];
    visibility = json['visibility'];
    windSpeed = json['wind_speed'];
    windDeg = json['wind_deg'];
    windGust = json['wind_gust'];
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather?.add(Weather.fromJson(v));
      });
    }
    pop = json['pop'];
    rain = json['rain'] != null ? Rain?.fromJson(json['rain']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['dt'] = dt;
    data['temp'] = temp;
    data['feels_like'] = feelsLike;
    data['pressure'] = pressure;
    data['humidity'] = humidity;
    data['dew_point'] = dewPoint;
    data['uvi'] = uvi;
    data['clouds'] = clouds;
    data['visibility'] = visibility;
    data['wind_speed'] = windSpeed;
    data['wind_deg'] = windDeg;
    data['wind_gust'] = windGust;
    if (weather != null) {
      data['weather'] = weather?.map((v) => v.toJson()).toList();
    }
    data['pop'] = pop;
    if (rain != null) {
      data['rain'] = rain?.toJson();
    }
    return data;
  }
}

@HiveType(typeId: 4, adapterName: 'RainAdapter')
class Rain {
  @HiveField(0)
  dynamic d1h; // double

  Rain({this.d1h});

  Rain.fromJson(Map<String, dynamic> json) {
    d1h = json['1h'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['1h'] = d1h;
    return data;
  }
}

@HiveType(typeId: 3, adapterName: 'DailyAdapter')
class Daily {
  @HiveField(0)
  int? dt;
  @HiveField(1)
  int? sunrise;
  @HiveField(2)
  int? sunset;
  @HiveField(3)
  int? moonrise;
  @HiveField(4)
  int? moonset;
  @HiveField(5)
  dynamic moonPhase; // double
  @HiveField(6)
  Temp? temp;
  @HiveField(7)
  FeelsLike? feelsLike;
  @HiveField(8)
  int? pressure;
  @HiveField(9)
  int? humidity;
  @HiveField(10)
  dynamic dewPoint; // double
  @HiveField(11)
  dynamic windSpeed; // double
  @HiveField(12)
  int? windDeg;
  @HiveField(13)
  dynamic windGust; // double
  @HiveField(14)
  List<Weather>? weather;
  @HiveField(15)
  int? clouds;
  @HiveField(16)
  dynamic pop;
  @HiveField(17) // double
  dynamic rain; // double
  @HiveField(18)
  dynamic uvi;

  Daily(
      {this.dt,
      this.sunrise,
      this.sunset,
      this.moonrise,
      this.moonset,
      this.moonPhase,
      this.temp,
      this.feelsLike,
      this.pressure,
      this.humidity,
      this.dewPoint,
      this.windSpeed,
      this.windDeg,
      this.windGust,
      this.weather,
      this.clouds,
      this.pop,
      this.rain,
      this.uvi});

  Daily.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    moonrise = json['moonrise'];
    moonset = json['moonset'];
    moonPhase = json['moon_phase'];
    temp = json['temp'] != null ? Temp?.fromJson(json['temp']) : null;
    feelsLike = json['feels_like'] != null
        ? FeelsLike?.fromJson(json['feels_like'])
        : null;
    pressure = json['pressure'];
    humidity = json['humidity'];
    dewPoint = json['dew_point'];
    windSpeed = json['wind_speed'];
    windDeg = json['wind_deg'];
    windGust = json['wind_gust'];
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather?.add(Weather.fromJson(v));
      });
    }
    clouds = json['clouds'];
    pop = json['pop'];
    rain = json['rain'];
    uvi = json['uvi'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['dt'] = dt;
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    data['moonrise'] = moonrise;
    data['moonset'] = moonset;
    data['moon_phase'] = moonPhase;
    if (temp != null) {
      data['temp'] = temp?.toJson();
    }
    if (feelsLike != null) {
      data['feels_like'] = feelsLike?.toJson();
    }
    data['pressure'] = pressure;
    data['humidity'] = humidity;
    data['dew_point'] = dewPoint;
    data['wind_speed'] = windSpeed;
    data['wind_deg'] = windDeg;
    data['wind_gust'] = windGust;
    if (weather != null) {
      data['weather'] = weather?.map((v) => v.toJson()).toList();
    }
    data['clouds'] = clouds;
    data['pop'] = pop;
    data['rain'] = rain;
    data['uvi'] = uvi;
    return data;
  }
}

@HiveType(typeId: 5, adapterName: 'TempAdapter')
class Temp {
  @HiveField(0)
  dynamic day; // double
  @HiveField(1)
  dynamic min; // double
  @HiveField(2)
  dynamic max; // double
  @HiveField(3)
  dynamic night; // double
  @HiveField(4)
  dynamic eve; // double
  @HiveField(5)
  dynamic morn; // double

  Temp({this.day, this.min, this.max, this.night, this.eve, this.morn});

  Temp.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    min = json['min'];
    max = json['max'];
    night = json['night'];
    eve = json['eve'];
    morn = json['morn'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['day'] = day;
    data['min'] = min;
    data['max'] = max;
    data['night'] = night;
    data['eve'] = eve;
    data['morn'] = morn;
    return data;
  }
}

@HiveType(typeId: 6, adapterName: 'FeelsLikeAdapter')
class FeelsLike {
  @HiveField(0)
  dynamic day; // double
  @HiveField(1)
  dynamic night; // double
  @HiveField(2)
  dynamic eve; // double
  @HiveField(3)
  dynamic morn; // double

  FeelsLike({this.day, this.night, this.eve, this.morn});

  FeelsLike.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    night = json['night'];
    eve = json['eve'];
    morn = json['morn'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['day'] = day;
    data['night'] = night;
    data['eve'] = eve;
    data['morn'] = morn;
    return data;
  }
}

/// name : "Vietnam"
/// topLevelDomain : [".vn"]
/// alpha2Code : "VN"
/// alpha3Code : "VNM"
/// callingCodes : ["84"]
/// capital : "Hanoi"
/// altSpellings : ["VN","Socialist Republic of Vietnam","Cộng hòa Xã hội chủ nghĩa Việt Nam"]
/// subregion : "South-Eastern Asia"
/// region : "Asia"
/// population : 97338583
/// latlng : [16.16666666,107.83333333]
/// demonym : "Vietnamese"
/// area : 331212.0
/// gini : 35.7
/// timezones : ["UTC+07:00"]
/// borders : ["KHM","CHN","LAO"]
/// nativeName : "Việt Nam"
/// numericCode : "704"
/// flags : {"svg":"https://flagcdn.com/vn.svg","png":"https://flagcdn.com/w320/vn.png"}
/// currencies : [{"code":"VND","name":"Vietnamese đồng","symbol":"₫"}]
/// languages : [{"iso639_1":"vi","iso639_2":"vie","name":"Vietnamese","nativeName":"Tiếng Việt"}]
/// translations : {"br":"Viêt Nam","pt":"Vietname","nl":"Vietnam","hr":"Vijetnam","fa":"ویتنام","de":"Vietnam","es":"Vietnam","fr":"Viêt Nam","ja":"ベトナム","it":"Vietnam","hu":"Vietnám"}
/// flag : "https://flagcdn.com/vn.svg"
/// regionalBlocs : [{"acronym":"ASEAN","name":"Association of Southeast Asian Nations"}]
/// cioc : "VIE"
/// independent : true

class Vietnam {
  Vietnam({
      this.name, 
      this.topLevelDomain, 
      this.alpha2Code, 
      this.alpha3Code, 
      this.callingCodes, 
      this.capital, 
      this.altSpellings, 
      this.subregion, 
      this.region, 
      this.population, 
      this.latlng, 
      this.demonym, 
      this.area, 
      this.gini, 
      this.timezones, 
      this.borders, 
      this.nativeName, 
      this.numericCode, 
      this.flags, 
      this.currencies, 
      this.languages, 
      this.translations, 
      this.flag, 
      this.regionalBlocs, 
      this.cioc, 
      this.independent,});

  Vietnam.fromJson(dynamic json) {
    name = json['name'];
    topLevelDomain = json['topLevelDomain'] != null ? json['topLevelDomain'].cast<String>() : [];
    alpha2Code = json['alpha2Code'];
    alpha3Code = json['alpha3Code'];
    callingCodes = json['callingCodes'] != null ? json['callingCodes'].cast<String>() : [];
    capital = json['capital'];
    altSpellings = json['altSpellings'] != null ? json['altSpellings'].cast<String>() : [];
    subregion = json['subregion'];
    region = json['region'];
    population = json['population'];
    latlng = json['latlng'] != null ? json['latlng'].cast<double>() : [];
    demonym = json['demonym'];
    area = json['area'];
    gini = json['gini'];
    timezones = json['timezones'] != null ? json['timezones'].cast<String>() : [];
    borders = json['borders'] != null ? json['borders'].cast<String>() : [];
    nativeName = json['nativeName'];
    numericCode = json['numericCode'];
    flags = json['flags'] != null ? Flags.fromJson(json['flags']) : null;
    if (json['currencies'] != null) {
      currencies = [];
      json['currencies'].forEach((v) {
        currencies?.add(Currencies.fromJson(v));
      });
    }
    if (json['languages'] != null) {
      languages = [];
      json['languages'].forEach((v) {
        languages?.add(Languages.fromJson(v));
      });
    }
    translations = json['translations'] != null ? Translations.fromJson(json['translations']) : null;
    flag = json['flag'];
    if (json['regionalBlocs'] != null) {
      regionalBlocs = [];
      json['regionalBlocs'].forEach((v) {
        regionalBlocs?.add(RegionalBlocs.fromJson(v));
      });
    }
    cioc = json['cioc'];
    independent = json['independent'];
  }
  String? name;
  List<String>? topLevelDomain;
  String? alpha2Code;
  String? alpha3Code;
  List<String>? callingCodes;
  String? capital;
  List<String>? altSpellings;
  String? subregion;
  String? region;
  int? population;
  List<double>? latlng;
  String? demonym;
  double? area;
  double? gini;
  List<String>? timezones;
  List<String>? borders;
  String? nativeName;
  String? numericCode;
  Flags? flags;
  List<Currencies>? currencies;
  List<Languages>? languages;
  Translations? translations;
  String? flag;
  List<RegionalBlocs>? regionalBlocs;
  String? cioc;
  bool? independent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['topLevelDomain'] = topLevelDomain;
    map['alpha2Code'] = alpha2Code;
    map['alpha3Code'] = alpha3Code;
    map['callingCodes'] = callingCodes;
    map['capital'] = capital;
    map['altSpellings'] = altSpellings;
    map['subregion'] = subregion;
    map['region'] = region;
    map['population'] = population;
    map['latlng'] = latlng;
    map['demonym'] = demonym;
    map['area'] = area;
    map['gini'] = gini;
    map['timezones'] = timezones;
    map['borders'] = borders;
    map['nativeName'] = nativeName;
    map['numericCode'] = numericCode;
    if (flags != null) {
      map['flags'] = flags?.toJson();
    }
    if (currencies != null) {
      map['currencies'] = currencies?.map((v) => v.toJson()).toList();
    }
    if (languages != null) {
      map['languages'] = languages?.map((v) => v.toJson()).toList();
    }
    if (translations != null) {
      map['translations'] = translations?.toJson();
    }
    map['flag'] = flag;
    if (regionalBlocs != null) {
      map['regionalBlocs'] = regionalBlocs?.map((v) => v.toJson()).toList();
    }
    map['cioc'] = cioc;
    map['independent'] = independent;
    return map;
  }

}

/// acronym : "ASEAN"
/// name : "Association of Southeast Asian Nations"

class RegionalBlocs {
  RegionalBlocs({
      this.acronym, 
      this.name,});

  RegionalBlocs.fromJson(dynamic json) {
    acronym = json['acronym'];
    name = json['name'];
  }
  String? acronym;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['acronym'] = acronym;
    map['name'] = name;
    return map;
  }

}

/// br : "Viêt Nam"
/// pt : "Vietname"
/// nl : "Vietnam"
/// hr : "Vijetnam"
/// fa : "ویتنام"
/// de : "Vietnam"
/// es : "Vietnam"
/// fr : "Viêt Nam"
/// ja : "ベトナム"
/// it : "Vietnam"
/// hu : "Vietnám"

class Translations {
  Translations({
      this.br, 
      this.pt, 
      this.nl, 
      this.hr, 
      this.fa, 
      this.de, 
      this.es, 
      this.fr, 
      this.ja, 
      this.it, 
      this.hu,});

  Translations.fromJson(dynamic json) {
    br = json['br'];
    pt = json['pt'];
    nl = json['nl'];
    hr = json['hr'];
    fa = json['fa'];
    de = json['de'];
    es = json['es'];
    fr = json['fr'];
    ja = json['ja'];
    it = json['it'];
    hu = json['hu'];
  }
  String? br;
  String? pt;
  String? nl;
  String? hr;
  String? fa;
  String? de;
  String? es;
  String? fr;
  String? ja;
  String? it;
  String? hu;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['br'] = br;
    map['pt'] = pt;
    map['nl'] = nl;
    map['hr'] = hr;
    map['fa'] = fa;
    map['de'] = de;
    map['es'] = es;
    map['fr'] = fr;
    map['ja'] = ja;
    map['it'] = it;
    map['hu'] = hu;
    return map;
  }

}

/// iso639_1 : "vi"
/// iso639_2 : "vie"
/// name : "Vietnamese"
/// nativeName : "Tiếng Việt"

class Languages {
  Languages({
      this.iso6391, 
      this.iso6392, 
      this.name, 
      this.nativeName,});

  Languages.fromJson(dynamic json) {
    iso6391 = json['iso639_1'];
    iso6392 = json['iso639_2'];
    name = json['name'];
    nativeName = json['nativeName'];
  }
  String? iso6391;
  String? iso6392;
  String? name;
  String? nativeName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['iso639_1'] = iso6391;
    map['iso639_2'] = iso6392;
    map['name'] = name;
    map['nativeName'] = nativeName;
    return map;
  }

}

/// code : "VND"
/// name : "Vietnamese đồng"
/// symbol : "₫"

class Currencies {
  Currencies({
      this.code, 
      this.name, 
      this.symbol,});

  Currencies.fromJson(dynamic json) {
    code = json['code'];
    name = json['name'];
    symbol = json['symbol'];
  }
  String? code;
  String? name;
  String? symbol;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['name'] = name;
    map['symbol'] = symbol;
    return map;
  }

}

/// svg : "https://flagcdn.com/vn.svg"
/// png : "https://flagcdn.com/w320/vn.png"

class Flags {
  Flags({
      this.svg, 
      this.png,});

  Flags.fromJson(dynamic json) {
    svg = json['svg'];
    png = json['png'];
  }
  String? svg;
  String? png;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['svg'] = svg;
    map['png'] = png;
    return map;
  }

}
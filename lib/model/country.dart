/// name : {"common":"Chad","official":"Republic of Chad","nativeName":{"ara":{"official":"جمهورية تشاد","common":"تشاد‎"},"fra":{"official":"République du Tchad","common":"Tchad"}}}
/// tld : [".td"]
/// cca2 : "TD"
/// ccn3 : "148"
/// cca3 : "TCD"
/// cioc : "CHA"
/// independent : true
/// status : "officially-assigned"
/// unMember : true
/// currencies : {"XAF":{"name":"Central African CFA franc","symbol":"Fr"}}
/// idd : {"root":"+2","suffixes":["35"]}
/// capital : ["N'Djamena"]
/// altSpellings : ["TD","Tchad","Republic of Chad","République du Tchad"]
/// region : "Africa"
/// subregion : "Middle Africa"
/// languages : {"ara":"Arabic","fra":"French"}
/// translations : {"ara":{"official":"جمهورية تشاد","common":"تشاد"},"bre":{"official":"Republik Tchad","common":"Tchad"},"ces":{"official":"Čadská republika","common":"Čad"},"cym":{"official":"Gweriniaeth Tsiad","common":"Tsiad"},"deu":{"official":"Republik Tschad","common":"Tschad"},"est":{"official":"Tšaadi Vabariik","common":"Tšaad"},"fin":{"official":"Tšadin tasavalta","common":"Tšad"},"fra":{"official":"République du Tchad","common":"Tchad"},"hrv":{"official":"Čadu","common":"Čad"},"hun":{"official":"Csád Köztársaság","common":"Csád"},"ita":{"official":"Repubblica del Ciad","common":"Ciad"},"jpn":{"official":"チャド共和国","common":"チャド"},"kor":{"official":"차드 공화국","common":"차드"},"nld":{"official":"Republiek Tsjaad","common":"Tsjaad"},"per":{"official":"جمهوری چاد","common":"چاد"},"pol":{"official":"Republika Czadu","common":"Czad"},"por":{"official":"República do Chade","common":"Chade"},"rus":{"official":"Республика Чад","common":"Чад"},"slk":{"official":"Čadská republika","common":"Čad"},"spa":{"official":"República de Chad","common":"Chad"},"srp":{"official":"Република Чад","common":"Чад"},"swe":{"official":"Republiken Tchad","common":"Tchad"},"tur":{"official":"Çad Cumhuriyeti","common":"Çad"},"urd":{"official":"جمہوریہ چاڈ","common":"چاڈ"},"zho":{"official":"乍得共和国","common":"乍得"}}
/// latlng : [15.0,19.0]
/// landlocked : true
/// borders : ["CMR","CAF","LBY","NER","NGA","SDN"]
/// area : 1284000.0
/// demonyms : {"eng":{"f":"Chadian","m":"Chadian"},"fra":{"f":"Tchadienne","m":"Tchadien"}}
/// flag : "🇹🇩"
/// maps : {"googleMaps":"https://goo.gl/maps/ziUdAZ8skuNfx5Hx7","openStreetMaps":"https://www.openstreetmap.org/relation/2361304"}
/// population : 16425859
/// gini : {"2011":43.3}
/// fifa : "CHA"
/// car : {"signs":["TCH","TD"],"side":"right"}
/// timezones : ["UTC+01:00"]
/// continents : ["Africa"]
/// flags : {"png":"https://flagcdn.com/w320/td.png","svg":"https://flagcdn.com/td.svg","alt":"The flag of Chad is composed of three equal vertical bands of blue, gold and red."}
/// coatOfArms : {"png":"https://mainfacts.com/media/images/coats_of_arms/td.png","svg":"https://mainfacts.com/media/images/coats_of_arms/td.svg"}
/// startOfWeek : "monday"
/// capitalInfo : {"latlng":[12.1,15.03]}

class Country {
  Country({
      this.name, 
      this.tld, 
      this.cca2, 
      this.ccn3, 
      this.cca3, 
      this.cioc, 
      this.independent, 
      this.status, 
      this.unMember, 
      this.currencies, 
      this.idd, 
      this.capital, 
      this.altSpellings, 
      this.region, 
      this.subregion, 
      this.languages, 
      this.translations, 
      this.latlng, 
      this.landlocked, 
      this.borders, 
      this.area, 
      this.demonyms, 
      this.flag, 
      this.maps, 
      this.population, 
      this.gini, 
      this.fifa, 
      this.car, 
      this.timezones, 
      this.continents, 
      this.flags, 
      this.coatOfArms, 
      this.startOfWeek, 
      this.capitalInfo,});

  Country.fromJson(dynamic json) {
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    tld = json['tld'] != null ? json['tld'].cast<String>() : [];
    cca2 = json['cca2'];
    ccn3 = json['ccn3'];
    cca3 = json['cca3'];
    cioc = json['cioc'];
    independent = json['independent'];
    status = json['status'];
    unMember = json['unMember'];
    currencies = json['currencies'] != null ? Currencies.fromJson(json['currencies']) : null;
    idd = json['idd'] != null ? Idd.fromJson(json['idd']) : null;
    capital = json['capital'] != null ? json['capital'].cast<String>() : [];
    altSpellings = json['altSpellings'] != null ? json['altSpellings'].cast<String>() : [];
    region = json['region'];
    subregion = json['subregion'];
    languages = json['languages'] != null ? Languages.fromJson(json['languages']) : null;
    translations = json['translations'] != null ? Translations.fromJson(json['translations']) : null;
    latlng = json['latlng'] != null ? json['latlng'].cast<double>() : [];
    landlocked = json['landlocked'];
    borders = json['borders'] != null ? json['borders'].cast<String>() : [];
    area = json['area'];
    demonyms = json['demonyms'] != null ? Demonyms.fromJson(json['demonyms']) : null;
    flag = json['flag'];
    maps = json['maps'] != null ? Maps.fromJson(json['maps']) : null;
    population = json['population'];
    gini = json['gini'] != null ? Gini.fromJson(json['gini']) : null;
    fifa = json['fifa'];
    car = json['car'] != null ? Car.fromJson(json['car']) : null;
    timezones = json['timezones'] != null ? json['timezones'].cast<String>() : [];
    continents = json['continents'] != null ? json['continents'].cast<String>() : [];
    flags = json['flags'] != null ? Flags.fromJson(json['flags']) : null;
    coatOfArms = json['coatOfArms'] != null ? CoatOfArms.fromJson(json['coatOfArms']) : null;
    startOfWeek = json['startOfWeek'];
    capitalInfo = json['capitalInfo'] != null ? CapitalInfo.fromJson(json['capitalInfo']) : null;
  }
  Name? name;
  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  String? status;
  bool? unMember;
  Currencies? currencies;
  Idd? idd;
  List<String>? capital;
  List<String>? altSpellings;
  String? region;
  String? subregion;
  Languages? languages;
  Translations? translations;
  List<double>? latlng;
  bool? landlocked;
  List<String>? borders;
  double? area;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  int? population;
  Gini? gini;
  String? fifa;
  Car? car;
  List<String>? timezones;
  List<String>? continents;
  Flags? flags;
  CoatOfArms? coatOfArms;
  String? startOfWeek;
  CapitalInfo? capitalInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (name != null) {
      map['name'] = name?.toJson();
    }
    map['tld'] = tld;
    map['cca2'] = cca2;
    map['ccn3'] = ccn3;
    map['cca3'] = cca3;
    map['cioc'] = cioc;
    map['independent'] = independent;
    map['status'] = status;
    map['unMember'] = unMember;
    if (currencies != null) {
      map['currencies'] = currencies?.toJson();
    }
    if (idd != null) {
      map['idd'] = idd?.toJson();
    }
    map['capital'] = capital;
    map['altSpellings'] = altSpellings;
    map['region'] = region;
    map['subregion'] = subregion;
    if (languages != null) {
      map['languages'] = languages?.toJson();
    }
    if (translations != null) {
      map['translations'] = translations?.toJson();
    }
    map['latlng'] = latlng;
    map['landlocked'] = landlocked;
    map['borders'] = borders;
    map['area'] = area;
    if (demonyms != null) {
      map['demonyms'] = demonyms?.toJson();
    }
    map['flag'] = flag;
    if (maps != null) {
      map['maps'] = maps?.toJson();
    }
    map['population'] = population;
    if (gini != null) {
      map['gini'] = gini?.toJson();
    }
    map['fifa'] = fifa;
    if (car != null) {
      map['car'] = car?.toJson();
    }
    map['timezones'] = timezones;
    map['continents'] = continents;
    if (flags != null) {
      map['flags'] = flags?.toJson();
    }
    if (coatOfArms != null) {
      map['coatOfArms'] = coatOfArms?.toJson();
    }
    map['startOfWeek'] = startOfWeek;
    if (capitalInfo != null) {
      map['capitalInfo'] = capitalInfo?.toJson();
    }
    return map;
  }

}

/// latlng : [12.1,15.03]

class CapitalInfo {
  CapitalInfo({
      this.latlng,});

  CapitalInfo.fromJson(dynamic json) {
    latlng = json['latlng'] != null ? json['latlng'].cast<double>() : [];
  }
  List<double>? latlng;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latlng'] = latlng;
    return map;
  }

}

/// png : "https://mainfacts.com/media/images/coats_of_arms/td.png"
/// svg : "https://mainfacts.com/media/images/coats_of_arms/td.svg"

class CoatOfArms {
  CoatOfArms({
      this.png, 
      this.svg,});

  CoatOfArms.fromJson(dynamic json) {
    png = json['png'];
    svg = json['svg'];
  }
  String? png;
  String? svg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['png'] = png;
    map['svg'] = svg;
    return map;
  }

}

/// png : "https://flagcdn.com/w320/td.png"
/// svg : "https://flagcdn.com/td.svg"
/// alt : "The flag of Chad is composed of three equal vertical bands of blue, gold and red."

class Flags {
  Flags({
      this.png, 
      this.svg, 
      this.alt,});

  Flags.fromJson(dynamic json) {
    png = json['png'];
    svg = json['svg'];
    alt = json['alt'];
  }
  String? png;
  String? svg;
  String? alt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['png'] = png;
    map['svg'] = svg;
    map['alt'] = alt;
    return map;
  }

}

/// signs : ["TCH","TD"]
/// side : "right"

class Car {
  Car({
      this.signs, 
      this.side,});

  Car.fromJson(dynamic json) {
    signs = json['signs'] != null ? json['signs'].cast<String>() : [];
    side = json['side'];
  }
  List<String>? signs;
  String? side;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['signs'] = signs;
    map['side'] = side;
    return map;
  }

}

/// 2011 : 43.3

class Gini {
  Gini({
      this.g,});

  Gini.fromJson(dynamic json) {
    g = json['2011'];
  }
  double? g;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['2011'] = g;
    return map;
  }

}

/// googleMaps : "https://goo.gl/maps/ziUdAZ8skuNfx5Hx7"
/// openStreetMaps : "https://www.openstreetmap.org/relation/2361304"

class Maps {
  Maps({
      this.googleMaps, 
      this.openStreetMaps,});

  Maps.fromJson(dynamic json) {
    googleMaps = json['googleMaps'];
    openStreetMaps = json['openStreetMaps'];
  }
  String? googleMaps;
  String? openStreetMaps;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['googleMaps'] = googleMaps;
    map['openStreetMaps'] = openStreetMaps;
    return map;
  }

}

/// eng : {"f":"Chadian","m":"Chadian"}
/// fra : {"f":"Tchadienne","m":"Tchadien"}

class Demonyms {
  Demonyms({
      this.eng, 
      this.fra,});

  Demonyms.fromJson(dynamic json) {
    eng = json['eng'] != null ? Eng.fromJson(json['eng']) : null;
    fra = json['fra'] != null ? Fra.fromJson(json['fra']) : null;
  }
  Eng? eng;
  Fra? fra;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (eng != null) {
      map['eng'] = eng?.toJson();
    }
    if (fra != null) {
      map['fra'] = fra?.toJson();
    }
    return map;
  }

}

/// f : "Tchadienne"
/// m : "Tchadien"

class Fra {
  Fra({
      this.f, 
      this.m,});

  Fra.fromJson(dynamic json) {
    f = json['f'];
    m = json['m'];
  }
  String? f;
  String? m;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['f'] = f;
    map['m'] = m;
    return map;
  }

}

/// f : "Chadian"
/// m : "Chadian"

class Eng {
  Eng({
      this.f, 
      this.m,});

  Eng.fromJson(dynamic json) {
    f = json['f'];
    m = json['m'];
  }
  String? f;
  String? m;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['f'] = f;
    map['m'] = m;
    return map;
  }

}

/// ara : {"official":"جمهورية تشاد","common":"تشاد"}
/// bre : {"official":"Republik Tchad","common":"Tchad"}
/// ces : {"official":"Čadská republika","common":"Čad"}
/// cym : {"official":"Gweriniaeth Tsiad","common":"Tsiad"}
/// deu : {"official":"Republik Tschad","common":"Tschad"}
/// est : {"official":"Tšaadi Vabariik","common":"Tšaad"}
/// fin : {"official":"Tšadin tasavalta","common":"Tšad"}
/// fra : {"official":"République du Tchad","common":"Tchad"}
/// hrv : {"official":"Čadu","common":"Čad"}
/// hun : {"official":"Csád Köztársaság","common":"Csád"}
/// ita : {"official":"Repubblica del Ciad","common":"Ciad"}
/// jpn : {"official":"チャド共和国","common":"チャド"}
/// kor : {"official":"차드 공화국","common":"차드"}
/// nld : {"official":"Republiek Tsjaad","common":"Tsjaad"}
/// per : {"official":"جمهوری چاد","common":"چاد"}
/// pol : {"official":"Republika Czadu","common":"Czad"}
/// por : {"official":"República do Chade","common":"Chade"}
/// rus : {"official":"Республика Чад","common":"Чад"}
/// slk : {"official":"Čadská republika","common":"Čad"}
/// spa : {"official":"República de Chad","common":"Chad"}
/// srp : {"official":"Република Чад","common":"Чад"}
/// swe : {"official":"Republiken Tchad","common":"Tchad"}
/// tur : {"official":"Çad Cumhuriyeti","common":"Çad"}
/// urd : {"official":"جمہوریہ چاڈ","common":"چاڈ"}
/// zho : {"official":"乍得共和国","common":"乍得"}

class Translations {
  Translations({
      this.ara, 
      this.bre, 
      this.ces, 
      this.cym, 
      this.deu, 
      this.est, 
      this.fin, 
      this.fra, 
      this.hrv, 
      this.hun, 
      this.ita, 
      this.jpn, 
      this.kor, 
      this.nld, 
      this.per, 
      this.pol, 
      this.por, 
      this.rus, 
      this.slk, 
      this.spa, 
      this.srp, 
      this.swe, 
      this.tur, 
      this.urd, 
      this.zho,});

  Translations.fromJson(dynamic json) {
    ara = json['ara'] != null ? Ara.fromJson(json['ara']) : null;
    bre = json['bre'] != null ? Bre.fromJson(json['bre']) : null;
    ces = json['ces'] != null ? Ces.fromJson(json['ces']) : null;
    cym = json['cym'] != null ? Cym.fromJson(json['cym']) : null;
    deu = json['deu'] != null ? Deu.fromJson(json['deu']) : null;
    est = json['est'] != null ? Est.fromJson(json['est']) : null;
    fin = json['fin'] != null ? Fin.fromJson(json['fin']) : null;
    fra = json['fra'] != null ? Fra.fromJson(json['fra']) : null;
    hrv = json['hrv'] != null ? Hrv.fromJson(json['hrv']) : null;
    hun = json['hun'] != null ? Hun.fromJson(json['hun']) : null;
    ita = json['ita'] != null ? Ita.fromJson(json['ita']) : null;
    jpn = json['jpn'] != null ? Jpn.fromJson(json['jpn']) : null;
    kor = json['kor'] != null ? Kor.fromJson(json['kor']) : null;
    nld = json['nld'] != null ? Nld.fromJson(json['nld']) : null;
    per = json['per'] != null ? Per.fromJson(json['per']) : null;
    pol = json['pol'] != null ? Pol.fromJson(json['pol']) : null;
    por = json['por'] != null ? Por.fromJson(json['por']) : null;
    rus = json['rus'] != null ? Rus.fromJson(json['rus']) : null;
    slk = json['slk'] != null ? Slk.fromJson(json['slk']) : null;
    spa = json['spa'] != null ? Spa.fromJson(json['spa']) : null;
    srp = json['srp'] != null ? Srp.fromJson(json['srp']) : null;
    swe = json['swe'] != null ? Swe.fromJson(json['swe']) : null;
    tur = json['tur'] != null ? Tur.fromJson(json['tur']) : null;
    urd = json['urd'] != null ? Urd.fromJson(json['urd']) : null;
    zho = json['zho'] != null ? Zho.fromJson(json['zho']) : null;
  }
  Ara? ara;
  Bre? bre;
  Ces? ces;
  Cym? cym;
  Deu? deu;
  Est? est;
  Fin? fin;
  Fra? fra;
  Hrv? hrv;
  Hun? hun;
  Ita? ita;
  Jpn? jpn;
  Kor? kor;
  Nld? nld;
  Per? per;
  Pol? pol;
  Por? por;
  Rus? rus;
  Slk? slk;
  Spa? spa;
  Srp? srp;
  Swe? swe;
  Tur? tur;
  Urd? urd;
  Zho? zho;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (ara != null) {
      map['ara'] = ara?.toJson();
    }
    if (bre != null) {
      map['bre'] = bre?.toJson();
    }
    if (ces != null) {
      map['ces'] = ces?.toJson();
    }
    if (cym != null) {
      map['cym'] = cym?.toJson();
    }
    if (deu != null) {
      map['deu'] = deu?.toJson();
    }
    if (est != null) {
      map['est'] = est?.toJson();
    }
    if (fin != null) {
      map['fin'] = fin?.toJson();
    }
    if (fra != null) {
      map['fra'] = fra?.toJson();
    }
    if (hrv != null) {
      map['hrv'] = hrv?.toJson();
    }
    if (hun != null) {
      map['hun'] = hun?.toJson();
    }
    if (ita != null) {
      map['ita'] = ita?.toJson();
    }
    if (jpn != null) {
      map['jpn'] = jpn?.toJson();
    }
    if (kor != null) {
      map['kor'] = kor?.toJson();
    }
    if (nld != null) {
      map['nld'] = nld?.toJson();
    }
    if (per != null) {
      map['per'] = per?.toJson();
    }
    if (pol != null) {
      map['pol'] = pol?.toJson();
    }
    if (por != null) {
      map['por'] = por?.toJson();
    }
    if (rus != null) {
      map['rus'] = rus?.toJson();
    }
    if (slk != null) {
      map['slk'] = slk?.toJson();
    }
    if (spa != null) {
      map['spa'] = spa?.toJson();
    }
    if (srp != null) {
      map['srp'] = srp?.toJson();
    }
    if (swe != null) {
      map['swe'] = swe?.toJson();
    }
    if (tur != null) {
      map['tur'] = tur?.toJson();
    }
    if (urd != null) {
      map['urd'] = urd?.toJson();
    }
    if (zho != null) {
      map['zho'] = zho?.toJson();
    }
    return map;
  }

}

/// official : "乍得共和国"
/// common : "乍得"

class Zho {
  Zho({
      this.official, 
      this.common,});

  Zho.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "جمہوریہ چاڈ"
/// common : "چاڈ"

class Urd {
  Urd({
      this.official, 
      this.common,});

  Urd.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "Çad Cumhuriyeti"
/// common : "Çad"

class Tur {
  Tur({
      this.official, 
      this.common,});

  Tur.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "Republiken Tchad"
/// common : "Tchad"

class Swe {
  Swe({
      this.official, 
      this.common,});

  Swe.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "Република Чад"
/// common : "Чад"

class Srp {
  Srp({
      this.official, 
      this.common,});

  Srp.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "República de Chad"
/// common : "Chad"

class Spa {
  Spa({
      this.official, 
      this.common,});

  Spa.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "Čadská republika"
/// common : "Čad"

class Slk {
  Slk({
      this.official, 
      this.common,});

  Slk.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "Республика Чад"
/// common : "Чад"

class Rus {
  Rus({
      this.official, 
      this.common,});

  Rus.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "República do Chade"
/// common : "Chade"

class Por {
  Por({
      this.official, 
      this.common,});

  Por.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "Republika Czadu"
/// common : "Czad"

class Pol {
  Pol({
      this.official, 
      this.common,});

  Pol.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "جمهوری چاد"
/// common : "چاد"

class Per {
  Per({
      this.official, 
      this.common,});

  Per.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "Republiek Tsjaad"
/// common : "Tsjaad"

class Nld {
  Nld({
      this.official, 
      this.common,});

  Nld.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "차드 공화국"
/// common : "차드"

class Kor {
  Kor({
      this.official, 
      this.common,});

  Kor.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "チャド共和国"
/// common : "チャド"

class Jpn {
  Jpn({
      this.official, 
      this.common,});

  Jpn.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "Repubblica del Ciad"
/// common : "Ciad"

class Ita {
  Ita({
      this.official, 
      this.common,});

  Ita.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "Csád Köztársaság"
/// common : "Csád"

class Hun {
  Hun({
      this.official, 
      this.common,});

  Hun.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "Čadu"
/// common : "Čad"

class Hrv {
  Hrv({
      this.official, 
      this.common,});

  Hrv.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "République du Tchad"
/// common : "Tchad"
//
// class Fra {
//   Fra({
//       this.official,
//       this.common,});
//
//   Fra.fromJson(dynamic json) {
//     official = json['official'];
//     common = json['common'];
//   }
//   String? official;
//   String? common;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['official'] = official;
//     map['common'] = common;
//     return map;
//   }
//
// }

/// official : "Tšadin tasavalta"
/// common : "Tšad"

class Fin {
  Fin({
      this.official, 
      this.common,});

  Fin.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "Tšaadi Vabariik"
/// common : "Tšaad"

class Est {
  Est({
      this.official, 
      this.common,});

  Est.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "Republik Tschad"
/// common : "Tschad"

class Deu {
  Deu({
      this.official, 
      this.common,});

  Deu.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "Gweriniaeth Tsiad"
/// common : "Tsiad"

class Cym {
  Cym({
      this.official, 
      this.common,});

  Cym.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "Čadská republika"
/// common : "Čad"

class Ces {
  Ces({
      this.official, 
      this.common,});

  Ces.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "Republik Tchad"
/// common : "Tchad"

class Bre {
  Bre({
      this.official, 
      this.common,});

  Bre.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// official : "جمهورية تشاد"
/// common : "تشاد"




class Ara {
  Ara({
      this.official, 
      this.common,});

  Ara.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
  String? official;
  String? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = official;
    map['common'] = common;
    return map;
  }

}

/// ara : "Arabic"
/// fra : "French"

class Languages {
  Languages({
      this.ara, 
      this.fra,});

  Languages.fromJson(dynamic json) {
    ara = json['ara'];
    fra = json['fra'];
  }
  String? ara;
  String? fra;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ara'] = ara;
    map['fra'] = fra;
    return map;
  }

}

/// root : "+2"
/// suffixes : ["35"]

class Idd {
  Idd({
      this.root, 
      this.suffixes,});

  Idd.fromJson(dynamic json) {
    root = json['root'];
    suffixes = json['suffixes'] != null ? json['suffixes'].cast<String>() : [];
  }
  String? root;
  List<String>? suffixes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['root'] = root;
    map['suffixes'] = suffixes;
    return map;
  }

}

/// XAF : {"name":"Central African CFA franc","symbol":"Fr"}

class Currencies {
  Currencies({
      this.xaf,});

  Currencies.fromJson(dynamic json) {
    xaf = json['XAF'] != null ? Xaf.fromJson(json['XAF']) : null;
  }
  Xaf? xaf;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (xaf != null) {
      map['XAF'] = xaf?.toJson();
    }
    return map;
  }

}

/// name : "Central African CFA franc"
/// symbol : "Fr"

class Xaf {
  Xaf({
      this.name, 
      this.symbol,});

  Xaf.fromJson(dynamic json) {
    name = json['name'];
    symbol = json['symbol'];
  }
  String? name;
  String? symbol;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['symbol'] = symbol;
    return map;
  }

}

/// common : "Chad"
/// official : "Republic of Chad"
/// nativeName : {"ara":{"official":"جمهورية تشاد","common":"تشاد‎"},"fra":{"official":"République du Tchad","common":"Tchad"}}

class Name {
  Name({
      this.common, 
      this.official, 
      this.nativeName,});

  Name.fromJson(dynamic json) {
    common = json['common'];
    official = json['official'];
    nativeName = json['nativeName'] != null ? NativeName.fromJson(json['nativeName']) : null;
  }
  String? common;
  String? official;
  NativeName? nativeName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['common'] = common;
    map['official'] = official;
    if (nativeName != null) {
      map['nativeName'] = nativeName?.toJson();
    }
    return map;
  }

}

/// ara : {"official":"جمهورية تشاد","common":"تشاد‎"}
/// fra : {"official":"République du Tchad","common":"Tchad"}

class NativeName {
  NativeName({
      this.ara, 
      this.fra,});

  NativeName.fromJson(dynamic json) {
    ara = json['ara'] != null ? Ara.fromJson(json['ara']) : null;
    fra = json['fra'] != null ? Fra.fromJson(json['fra']) : null;
  }
  Ara? ara;
  Fra? fra;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (ara != null) {
      map['ara'] = ara?.toJson();
    }
    if (fra != null) {
      map['fra'] = fra?.toJson();
    }
    return map;
  }

}

/// official : "République du Tchad"
/// common : "Tchad"
//
// class Fra {
//   Fra({
//       this.official,
//       this.common,});
//
//   Fra.fromJson(dynamic json) {
//     official = json['official'];
//     common = json['common'];
//   }
//   String? official;
//   String? common;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['official'] = official;
//     map['common'] = common;
//     return map;
//   }
//
// }

/// official : "جمهورية تشاد"
/// common : "تشاد‎"

// class Ara {
//   Ara({
//       this.official,
//       this.common,});
//
//   Ara.fromJson(dynamic json) {
//     official = json['official'];
//     common = json['common'];
//   }
//   String? official;
//   String? common;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['official'] = official;
//     map['common'] = common;
//     return map;
//   }
//
// }
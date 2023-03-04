// To parse this JSON data, do
//
//     final countryv3 = countryv3FromJson(jsonString);

import 'dart:convert';

List<Countryv3> countryv3FromJson(String str) => List<Countryv3>.from(json.decode(str).map((x) => Countryv3.fromJson(x)));

String countryv3ToJson(List<Countryv3> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Countryv3 {
  Countryv3({
    required this.name,
    this.tld,
    required this.cca2,
    this.ccn3,
    required this.cca3,
    this.cioc,
    this.independent,
    required this.status,
    required this.unMember,
    this.currencies,
    required this.idd,
    this.capital,
    required this.altSpellings,
    required this.region,
    this.subregion,
    this.languages,
    required this.translations,
    required this.latlng,
    required this.landlocked,
    this.borders,
    required this.area,
    this.demonyms,
    required this.flag,
    required this.maps,
    required this.population,
    this.gini,
    this.fifa,
    required this.car,
    required this.timezones,
    required this.continents,
    required this.flags,
    required this.coatOfArms,
    required this.startOfWeek,
    required this.capitalInfo,
    this.postalCode,
  });

  final Name name;
  final List<String>? tld;
  final String cca2;
  final String? ccn3;
  final String cca3;
  final String? cioc;
  final bool? independent;
  final String status;
  final bool unMember;
  final Currencies? currencies;
  final Idd idd;
  final List<String>? capital;
  final List<String> altSpellings;
  final String region;
  final String? subregion;
  final Languages? languages;
  final Translations translations;
  final List<double> latlng;
  final bool landlocked;
  final List<String>? borders;
  final double area;
  final Demonyms? demonyms;
  final String flag;
  final Maps maps;
  final int population;
  final Gini? gini;
  final String? fifa;
  final Car car;
  final List<String> timezones;
  final List<String> continents;
  final Flags flags;
  final CoatOfArms coatOfArms;
  final String startOfWeek;
  final CapitalInfo capitalInfo;
  final PostalCode? postalCode;

  factory Countryv3.fromJson(Map<String, dynamic> json) => Countryv3(
    name: Name.fromJson(json["name"]),
    tld: json["tld"] == null ? [] : List<String>.from(json["tld"]!.map((x) => x)),
    cca2: json["cca2"],
    ccn3: json["ccn3"],
    cca3: json["cca3"],
    cioc: json["cioc"],
    independent: json["independent"],
    status: json["status"],
    unMember: json["unMember"],
    currencies: json["currencies"] == null ? null : Currencies.fromJson(json["currencies"]),
    idd: Idd.fromJson(json["idd"]),
    capital: json["capital"] == null ? [] : List<String>.from(json["capital"]!.map((x) => x)),
    altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
    region: json["region"],
    subregion: json["subregion"],
    languages: json["languages"] == null ? null : Languages.fromJson(json["languages"]),
    translations: Translations.fromJson(json["translations"]),
    latlng: List<double>.from(json["latlng"].map((x) => x?.toDouble())),
    landlocked: json["landlocked"],
    borders: json["borders"] == null ? [] : List<String>.from(json["borders"]!.map((x) => x)),
    area: json["area"]?.toDouble(),
    demonyms: json["demonyms"] == null ? null : Demonyms.fromJson(json["demonyms"]),
    flag: json["flag"],
    maps: Maps.fromJson(json["maps"]),
    population: json["population"],
    gini: json["gini"] == null ? null : Gini.fromJson(json["gini"]),
    fifa: json["fifa"],
    car: Car.fromJson(json["car"]),
    timezones: List<String>.from(json["timezones"].map((x) => x)),
    continents: List<String>.from(json["continents"].map((x) => x)),
    flags: Flags.fromJson(json["flags"]),
    coatOfArms: CoatOfArms.fromJson(json["coatOfArms"]),
    startOfWeek: json["startOfWeek"],
    capitalInfo: CapitalInfo.fromJson(json["capitalInfo"]),
    postalCode: json["postalCode"] == null ? null : PostalCode.fromJson(json["postalCode"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name.toJson(),
    "tld": tld == null ? [] : List<dynamic>.from(tld!.map((x) => x)),
    "cca2": cca2,
    "ccn3": ccn3,
    "cca3": cca3,
    "cioc": cioc,
    "independent": independent,
    "status": status,
    "unMember": unMember,
    "currencies": currencies?.toJson(),
    "idd": idd.toJson(),
    "capital": capital == null ? [] : List<dynamic>.from(capital!.map((x) => x)),
    "altSpellings": List<dynamic>.from(altSpellings.map((x) => x)),
    "region": region,
    "subregion": subregion,
    "languages": languages?.toJson(),
    "translations": translations.toJson(),
    "latlng": List<dynamic>.from(latlng.map((x) => x)),
    "landlocked": landlocked,
    "borders": borders == null ? [] : List<dynamic>.from(borders!.map((x) => x)),
    "area": area,
    "demonyms": demonyms?.toJson(),
    "flag": flag,
    "maps": maps.toJson(),
    "population": population,
    "gini": gini?.toJson(),
    "fifa": fifa,
    "car": car.toJson(),
    "timezones": List<dynamic>.from(timezones.map((x) => x)),
    "continents": List<dynamic>.from(continents.map((x) => x)),
    "flags": flags.toJson(),
    "coatOfArms": coatOfArms.toJson(),
    "startOfWeek": startOfWeek,
    "capitalInfo": capitalInfo.toJson(),
    "postalCode": postalCode?.toJson(),
  };
}

class CapitalInfo {
  CapitalInfo({
    this.latlng,
  });

  final List<double>? latlng;

  factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
    latlng: json["latlng"] == null ? [] : List<double>.from(json["latlng"]!.map((x) => x?.toDouble())),
  );

  Map<String, dynamic> toJson() => {
    "latlng": latlng == null ? [] : List<dynamic>.from(latlng!.map((x) => x)),
  };
}

class Car {
  Car({
    this.signs,
    required this.side,
  });

  final List<String>? signs;
  final String side;

  factory Car.fromJson(Map<String, dynamic> json) => Car(
    signs: json["signs"] == null ? [] : List<String>.from(json["signs"]!.map((x) => x)),
    side: json["side"],
  );

  Map<String, dynamic> toJson() => {
    "signs": signs == null ? [] : List<dynamic>.from(signs!.map((x) => x)),
    "side": side,
  };
}

class CoatOfArms {
  CoatOfArms({
    this.png,
    this.svg,
  });

  final String? png;
  final String? svg;

  factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
    png: json["png"],
    svg: json["svg"],
  );

  Map<String, dynamic> toJson() => {
    "png": png,
    "svg": svg,
  };
}

class Currencies {
  Currencies({
    this.xaf,
    this.gbp,
    this.imp,
    this.cve,
    this.eur,
    this.bob,
    this.jep,
    this.tmt,
    this.ron,
    this.inr,
    this.btn,
    this.syp,
    this.azn,
    this.usd,
    this.iqd,
    this.zwl,
    this.jod,
    this.ttd,
    this.dzd,
    this.mad,
    this.mru,
    this.xpf,
    this.egp,
    this.ils,
    this.sdg,
    this.ern,
    this.php,
    this.pgk,
    this.mop,
    this.mxn,
    this.ghs,
    this.xcd,
    this.ggp,
    this.xof,
    this.mdl,
    this.fkp,
    this.bzd,
    this.aud,
    this.czk,
    this.bhd,
    this.aed,
    this.yer,
    this.zar,
    this.nzd,
    this.bwp,
    this.bdt,
    this.pyg,
    this.vnd,
    this.sgd,
    this.cdf,
    this.lbp,
    this.rwf,
    this.uyu,
    this.gtq,
    this.brl,
    this.jmd,
    this.huf,
    this.aoa,
    this.cny,
    this.myr,
    this.shp,
    this.crc,
    this.gyd,
    this.dkk,
    this.fjd,
    this.mmk,
    this.krw,
    this.lsl,
    this.ugx,
    this.ngn,
    this.currenciesTry,
    this.scr,
    this.lyd,
    this.bam,
    this.ckd,
    this.bif,
    this.cop,
    this.bsd,
    this.kgs,
    this.kwd,
    this.afn,
    this.htg,
    this.mwk,
    this.amd,
    this.sek,
    this.cad,
    this.kyd,
    this.uzs,
    this.jpy,
    this.tjs,
    this.lkr,
    this.sos,
    this.bbd,
    this.mur,
    this.sbd,
    this.bgn,
    this.kpw,
    this.clp,
    this.tnd,
    this.kes,
    this.mnt,
    this.hnl,
    this.djf,
    this.khr,
    this.rub,
    this.hkd,
    this.rsd,
    this.kmf,
    this.thb,
    this.ang,
    this.top,
    this.nok,
    this.stn,
    this.dop,
    this.fok,
    this.zmw,
    this.cuc,
    this.cup,
    this.idr,
    this.kid,
    this.mkd,
    this.lak,
    this.pkr,
    this.gip,
    this.gmd,
    this.tvd,
    this.twd,
    this.gel,
    this.ssp,
    this.byn,
    this.wst,
    this.bmd,
    this.szl,
    this.ves,
    this.kzt,
    this.isk,
    this.uah,
    this.ars,
    this.chf,
    this.tzs,
    this.npr,
    this.pab,
    this.sll,
    this.pln,
    this.awg,
    this.all,
    this.mga,
    this.pen,
    this.omr,
    this.nio,
    this.lrd,
    this.etb,
    this.irr,
    this.sar,
    this.mzn,
    this.srd,
    this.nad,
    this.gnf,
    this.vuv,
    this.qar,
    this.mvr,
    this.bnd,
  });

  final Aed? xaf;
  final Aed? gbp;
  final Aed? imp;
  final Aed? cve;
  final Aed? eur;
  final Aed? bob;
  final Aed? jep;
  final Aed? tmt;
  final Aed? ron;
  final Aed? inr;
  final Aed? btn;
  final Aed? syp;
  final Aed? azn;
  final Aed? usd;
  final Aed? iqd;
  final Aed? zwl;
  final Aed? jod;
  final Aed? ttd;
  final Aed? dzd;
  final Aed? mad;
  final Aed? mru;
  final Aed? xpf;
  final Aed? egp;
  final Aed? ils;
  final Bam? sdg;
  final Aed? ern;
  final Aed? php;
  final Aed? pgk;
  final Aed? mop;
  final Aed? mxn;
  final Aed? ghs;
  final Aed? xcd;
  final Aed? ggp;
  final Aed? xof;
  final Aed? mdl;
  final Aed? fkp;
  final Aed? bzd;
  final Aed? aud;
  final Aed? czk;
  final Aed? bhd;
  final Aed? aed;
  final Aed? yer;
  final Aed? zar;
  final Aed? nzd;
  final Aed? bwp;
  final Aed? bdt;
  final Aed? pyg;
  final Aed? vnd;
  final Aed? sgd;
  final Aed? cdf;
  final Aed? lbp;
  final Aed? rwf;
  final Aed? uyu;
  final Aed? gtq;
  final Aed? brl;
  final Aed? jmd;
  final Aed? huf;
  final Aed? aoa;
  final Aed? cny;
  final Aed? myr;
  final Aed? shp;
  final Aed? crc;
  final Aed? gyd;
  final Aed? dkk;
  final Aed? fjd;
  final Aed? mmk;
  final Aed? krw;
  final Aed? lsl;
  final Aed? ugx;
  final Aed? ngn;
  final Aed? currenciesTry;
  final Aed? scr;
  final Aed? lyd;
  final Bam? bam;
  final Aed? ckd;
  final Aed? bif;
  final Aed? cop;
  final Aed? bsd;
  final Aed? kgs;
  final Aed? kwd;
  final Aed? afn;
  final Aed? htg;
  final Aed? mwk;
  final Aed? amd;
  final Aed? sek;
  final Aed? cad;
  final Aed? kyd;
  final Aed? uzs;
  final Aed? jpy;
  final Aed? tjs;
  final Aed? lkr;
  final Aed? sos;
  final Aed? bbd;
  final Aed? mur;
  final Aed? sbd;
  final Aed? bgn;
  final Aed? kpw;
  final Aed? clp;
  final Aed? tnd;
  final Aed? kes;
  final Aed? mnt;
  final Aed? hnl;
  final Aed? djf;
  final Aed? khr;
  final Aed? rub;
  final Aed? hkd;
  final Aed? rsd;
  final Aed? kmf;
  final Aed? thb;
  final Aed? ang;
  final Aed? top;
  final Aed? nok;
  final Aed? stn;
  final Aed? dop;
  final Aed? fok;
  final Aed? zmw;
  final Aed? cuc;
  final Aed? cup;
  final Aed? idr;
  final Aed? kid;
  final Aed? mkd;
  final Aed? lak;
  final Aed? pkr;
  final Aed? gip;
  final Aed? gmd;
  final Aed? tvd;
  final Aed? twd;
  final Aed? gel;
  final Aed? ssp;
  final Aed? byn;
  final Aed? wst;
  final Aed? bmd;
  final Aed? szl;
  final Aed? ves;
  final Aed? kzt;
  final Aed? isk;
  final Aed? uah;
  final Aed? ars;
  final Aed? chf;
  final Aed? tzs;
  final Aed? npr;
  final Aed? pab;
  final Aed? sll;
  final Aed? pln;
  final Aed? awg;
  final Aed? all;
  final Aed? mga;
  final Aed? pen;
  final Aed? omr;
  final Aed? nio;
  final Aed? lrd;
  final Aed? etb;
  final Aed? irr;
  final Aed? sar;
  final Aed? mzn;
  final Aed? srd;
  final Aed? nad;
  final Aed? gnf;
  final Aed? vuv;
  final Aed? qar;
  final Aed? mvr;
  final Aed? bnd;

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
    xaf: json["XAF"] == null ? null : Aed.fromJson(json["XAF"]),
    gbp: json["GBP"] == null ? null : Aed.fromJson(json["GBP"]),
    imp: json["IMP"] == null ? null : Aed.fromJson(json["IMP"]),
    cve: json["CVE"] == null ? null : Aed.fromJson(json["CVE"]),
    eur: json["EUR"] == null ? null : Aed.fromJson(json["EUR"]),
    bob: json["BOB"] == null ? null : Aed.fromJson(json["BOB"]),
    jep: json["JEP"] == null ? null : Aed.fromJson(json["JEP"]),
    tmt: json["TMT"] == null ? null : Aed.fromJson(json["TMT"]),
    ron: json["RON"] == null ? null : Aed.fromJson(json["RON"]),
    inr: json["INR"] == null ? null : Aed.fromJson(json["INR"]),
    btn: json["BTN"] == null ? null : Aed.fromJson(json["BTN"]),
    syp: json["SYP"] == null ? null : Aed.fromJson(json["SYP"]),
    azn: json["AZN"] == null ? null : Aed.fromJson(json["AZN"]),
    usd: json["USD"] == null ? null : Aed.fromJson(json["USD"]),
    iqd: json["IQD"] == null ? null : Aed.fromJson(json["IQD"]),
    zwl: json["ZWL"] == null ? null : Aed.fromJson(json["ZWL"]),
    jod: json["JOD"] == null ? null : Aed.fromJson(json["JOD"]),
    ttd: json["TTD"] == null ? null : Aed.fromJson(json["TTD"]),
    dzd: json["DZD"] == null ? null : Aed.fromJson(json["DZD"]),
    mad: json["MAD"] == null ? null : Aed.fromJson(json["MAD"]),
    mru: json["MRU"] == null ? null : Aed.fromJson(json["MRU"]),
    xpf: json["XPF"] == null ? null : Aed.fromJson(json["XPF"]),
    egp: json["EGP"] == null ? null : Aed.fromJson(json["EGP"]),
    ils: json["ILS"] == null ? null : Aed.fromJson(json["ILS"]),
    sdg: json["SDG"] == null ? null : Bam.fromJson(json["SDG"]),
    ern: json["ERN"] == null ? null : Aed.fromJson(json["ERN"]),
    php: json["PHP"] == null ? null : Aed.fromJson(json["PHP"]),
    pgk: json["PGK"] == null ? null : Aed.fromJson(json["PGK"]),
    mop: json["MOP"] == null ? null : Aed.fromJson(json["MOP"]),
    mxn: json["MXN"] == null ? null : Aed.fromJson(json["MXN"]),
    ghs: json["GHS"] == null ? null : Aed.fromJson(json["GHS"]),
    xcd: json["XCD"] == null ? null : Aed.fromJson(json["XCD"]),
    ggp: json["GGP"] == null ? null : Aed.fromJson(json["GGP"]),
    xof: json["XOF"] == null ? null : Aed.fromJson(json["XOF"]),
    mdl: json["MDL"] == null ? null : Aed.fromJson(json["MDL"]),
    fkp: json["FKP"] == null ? null : Aed.fromJson(json["FKP"]),
    bzd: json["BZD"] == null ? null : Aed.fromJson(json["BZD"]),
    aud: json["AUD"] == null ? null : Aed.fromJson(json["AUD"]),
    czk: json["CZK"] == null ? null : Aed.fromJson(json["CZK"]),
    bhd: json["BHD"] == null ? null : Aed.fromJson(json["BHD"]),
    aed: json["AED"] == null ? null : Aed.fromJson(json["AED"]),
    yer: json["YER"] == null ? null : Aed.fromJson(json["YER"]),
    zar: json["ZAR"] == null ? null : Aed.fromJson(json["ZAR"]),
    nzd: json["NZD"] == null ? null : Aed.fromJson(json["NZD"]),
    bwp: json["BWP"] == null ? null : Aed.fromJson(json["BWP"]),
    bdt: json["BDT"] == null ? null : Aed.fromJson(json["BDT"]),
    pyg: json["PYG"] == null ? null : Aed.fromJson(json["PYG"]),
    vnd: json["VND"] == null ? null : Aed.fromJson(json["VND"]),
    sgd: json["SGD"] == null ? null : Aed.fromJson(json["SGD"]),
    cdf: json["CDF"] == null ? null : Aed.fromJson(json["CDF"]),
    lbp: json["LBP"] == null ? null : Aed.fromJson(json["LBP"]),
    rwf: json["RWF"] == null ? null : Aed.fromJson(json["RWF"]),
    uyu: json["UYU"] == null ? null : Aed.fromJson(json["UYU"]),
    gtq: json["GTQ"] == null ? null : Aed.fromJson(json["GTQ"]),
    brl: json["BRL"] == null ? null : Aed.fromJson(json["BRL"]),
    jmd: json["JMD"] == null ? null : Aed.fromJson(json["JMD"]),
    huf: json["HUF"] == null ? null : Aed.fromJson(json["HUF"]),
    aoa: json["AOA"] == null ? null : Aed.fromJson(json["AOA"]),
    cny: json["CNY"] == null ? null : Aed.fromJson(json["CNY"]),
    myr: json["MYR"] == null ? null : Aed.fromJson(json["MYR"]),
    shp: json["SHP"] == null ? null : Aed.fromJson(json["SHP"]),
    crc: json["CRC"] == null ? null : Aed.fromJson(json["CRC"]),
    gyd: json["GYD"] == null ? null : Aed.fromJson(json["GYD"]),
    dkk: json["DKK"] == null ? null : Aed.fromJson(json["DKK"]),
    fjd: json["FJD"] == null ? null : Aed.fromJson(json["FJD"]),
    mmk: json["MMK"] == null ? null : Aed.fromJson(json["MMK"]),
    krw: json["KRW"] == null ? null : Aed.fromJson(json["KRW"]),
    lsl: json["LSL"] == null ? null : Aed.fromJson(json["LSL"]),
    ugx: json["UGX"] == null ? null : Aed.fromJson(json["UGX"]),
    ngn: json["NGN"] == null ? null : Aed.fromJson(json["NGN"]),
    currenciesTry: json["TRY"] == null ? null : Aed.fromJson(json["TRY"]),
    scr: json["SCR"] == null ? null : Aed.fromJson(json["SCR"]),
    lyd: json["LYD"] == null ? null : Aed.fromJson(json["LYD"]),
    bam: json["BAM"] == null ? null : Bam.fromJson(json["BAM"]),
    ckd: json["CKD"] == null ? null : Aed.fromJson(json["CKD"]),
    bif: json["BIF"] == null ? null : Aed.fromJson(json["BIF"]),
    cop: json["COP"] == null ? null : Aed.fromJson(json["COP"]),
    bsd: json["BSD"] == null ? null : Aed.fromJson(json["BSD"]),
    kgs: json["KGS"] == null ? null : Aed.fromJson(json["KGS"]),
    kwd: json["KWD"] == null ? null : Aed.fromJson(json["KWD"]),
    afn: json["AFN"] == null ? null : Aed.fromJson(json["AFN"]),
    htg: json["HTG"] == null ? null : Aed.fromJson(json["HTG"]),
    mwk: json["MWK"] == null ? null : Aed.fromJson(json["MWK"]),
    amd: json["AMD"] == null ? null : Aed.fromJson(json["AMD"]),
    sek: json["SEK"] == null ? null : Aed.fromJson(json["SEK"]),
    cad: json["CAD"] == null ? null : Aed.fromJson(json["CAD"]),
    kyd: json["KYD"] == null ? null : Aed.fromJson(json["KYD"]),
    uzs: json["UZS"] == null ? null : Aed.fromJson(json["UZS"]),
    jpy: json["JPY"] == null ? null : Aed.fromJson(json["JPY"]),
    tjs: json["TJS"] == null ? null : Aed.fromJson(json["TJS"]),
    lkr: json["LKR"] == null ? null : Aed.fromJson(json["LKR"]),
    sos: json["SOS"] == null ? null : Aed.fromJson(json["SOS"]),
    bbd: json["BBD"] == null ? null : Aed.fromJson(json["BBD"]),
    mur: json["MUR"] == null ? null : Aed.fromJson(json["MUR"]),
    sbd: json["SBD"] == null ? null : Aed.fromJson(json["SBD"]),
    bgn: json["BGN"] == null ? null : Aed.fromJson(json["BGN"]),
    kpw: json["KPW"] == null ? null : Aed.fromJson(json["KPW"]),
    clp: json["CLP"] == null ? null : Aed.fromJson(json["CLP"]),
    tnd: json["TND"] == null ? null : Aed.fromJson(json["TND"]),
    kes: json["KES"] == null ? null : Aed.fromJson(json["KES"]),
    mnt: json["MNT"] == null ? null : Aed.fromJson(json["MNT"]),
    hnl: json["HNL"] == null ? null : Aed.fromJson(json["HNL"]),
    djf: json["DJF"] == null ? null : Aed.fromJson(json["DJF"]),
    khr: json["KHR"] == null ? null : Aed.fromJson(json["KHR"]),
    rub: json["RUB"] == null ? null : Aed.fromJson(json["RUB"]),
    hkd: json["HKD"] == null ? null : Aed.fromJson(json["HKD"]),
    rsd: json["RSD"] == null ? null : Aed.fromJson(json["RSD"]),
    kmf: json["KMF"] == null ? null : Aed.fromJson(json["KMF"]),
    thb: json["THB"] == null ? null : Aed.fromJson(json["THB"]),
    ang: json["ANG"] == null ? null : Aed.fromJson(json["ANG"]),
    top: json["TOP"] == null ? null : Aed.fromJson(json["TOP"]),
    nok: json["NOK"] == null ? null : Aed.fromJson(json["NOK"]),
    stn: json["STN"] == null ? null : Aed.fromJson(json["STN"]),
    dop: json["DOP"] == null ? null : Aed.fromJson(json["DOP"]),
    fok: json["FOK"] == null ? null : Aed.fromJson(json["FOK"]),
    zmw: json["ZMW"] == null ? null : Aed.fromJson(json["ZMW"]),
    cuc: json["CUC"] == null ? null : Aed.fromJson(json["CUC"]),
    cup: json["CUP"] == null ? null : Aed.fromJson(json["CUP"]),
    idr: json["IDR"] == null ? null : Aed.fromJson(json["IDR"]),
    kid: json["KID"] == null ? null : Aed.fromJson(json["KID"]),
    mkd: json["MKD"] == null ? null : Aed.fromJson(json["MKD"]),
    lak: json["LAK"] == null ? null : Aed.fromJson(json["LAK"]),
    pkr: json["PKR"] == null ? null : Aed.fromJson(json["PKR"]),
    gip: json["GIP"] == null ? null : Aed.fromJson(json["GIP"]),
    gmd: json["GMD"] == null ? null : Aed.fromJson(json["GMD"]),
    tvd: json["TVD"] == null ? null : Aed.fromJson(json["TVD"]),
    twd: json["TWD"] == null ? null : Aed.fromJson(json["TWD"]),
    gel: json["GEL"] == null ? null : Aed.fromJson(json["GEL"]),
    ssp: json["SSP"] == null ? null : Aed.fromJson(json["SSP"]),
    byn: json["BYN"] == null ? null : Aed.fromJson(json["BYN"]),
    wst: json["WST"] == null ? null : Aed.fromJson(json["WST"]),
    bmd: json["BMD"] == null ? null : Aed.fromJson(json["BMD"]),
    szl: json["SZL"] == null ? null : Aed.fromJson(json["SZL"]),
    ves: json["VES"] == null ? null : Aed.fromJson(json["VES"]),
    kzt: json["KZT"] == null ? null : Aed.fromJson(json["KZT"]),
    isk: json["ISK"] == null ? null : Aed.fromJson(json["ISK"]),
    uah: json["UAH"] == null ? null : Aed.fromJson(json["UAH"]),
    ars: json["ARS"] == null ? null : Aed.fromJson(json["ARS"]),
    chf: json["CHF"] == null ? null : Aed.fromJson(json["CHF"]),
    tzs: json["TZS"] == null ? null : Aed.fromJson(json["TZS"]),
    npr: json["NPR"] == null ? null : Aed.fromJson(json["NPR"]),
    pab: json["PAB"] == null ? null : Aed.fromJson(json["PAB"]),
    sll: json["SLL"] == null ? null : Aed.fromJson(json["SLL"]),
    pln: json["PLN"] == null ? null : Aed.fromJson(json["PLN"]),
    awg: json["AWG"] == null ? null : Aed.fromJson(json["AWG"]),
    all: json["ALL"] == null ? null : Aed.fromJson(json["ALL"]),
    mga: json["MGA"] == null ? null : Aed.fromJson(json["MGA"]),
    pen: json["PEN"] == null ? null : Aed.fromJson(json["PEN"]),
    omr: json["OMR"] == null ? null : Aed.fromJson(json["OMR"]),
    nio: json["NIO"] == null ? null : Aed.fromJson(json["NIO"]),
    lrd: json["LRD"] == null ? null : Aed.fromJson(json["LRD"]),
    etb: json["ETB"] == null ? null : Aed.fromJson(json["ETB"]),
    irr: json["IRR"] == null ? null : Aed.fromJson(json["IRR"]),
    sar: json["SAR"] == null ? null : Aed.fromJson(json["SAR"]),
    mzn: json["MZN"] == null ? null : Aed.fromJson(json["MZN"]),
    srd: json["SRD"] == null ? null : Aed.fromJson(json["SRD"]),
    nad: json["NAD"] == null ? null : Aed.fromJson(json["NAD"]),
    gnf: json["GNF"] == null ? null : Aed.fromJson(json["GNF"]),
    vuv: json["VUV"] == null ? null : Aed.fromJson(json["VUV"]),
    qar: json["QAR"] == null ? null : Aed.fromJson(json["QAR"]),
    mvr: json["MVR"] == null ? null : Aed.fromJson(json["MVR"]),
    bnd: json["BND"] == null ? null : Aed.fromJson(json["BND"]),
  );

  Map<String, dynamic> toJson() => {
    "XAF": xaf?.toJson(),
    "GBP": gbp?.toJson(),
    "IMP": imp?.toJson(),
    "CVE": cve?.toJson(),
    "EUR": eur?.toJson(),
    "BOB": bob?.toJson(),
    "JEP": jep?.toJson(),
    "TMT": tmt?.toJson(),
    "RON": ron?.toJson(),
    "INR": inr?.toJson(),
    "BTN": btn?.toJson(),
    "SYP": syp?.toJson(),
    "AZN": azn?.toJson(),
    "USD": usd?.toJson(),
    "IQD": iqd?.toJson(),
    "ZWL": zwl?.toJson(),
    "JOD": jod?.toJson(),
    "TTD": ttd?.toJson(),
    "DZD": dzd?.toJson(),
    "MAD": mad?.toJson(),
    "MRU": mru?.toJson(),
    "XPF": xpf?.toJson(),
    "EGP": egp?.toJson(),
    "ILS": ils?.toJson(),
    "SDG": sdg?.toJson(),
    "ERN": ern?.toJson(),
    "PHP": php?.toJson(),
    "PGK": pgk?.toJson(),
    "MOP": mop?.toJson(),
    "MXN": mxn?.toJson(),
    "GHS": ghs?.toJson(),
    "XCD": xcd?.toJson(),
    "GGP": ggp?.toJson(),
    "XOF": xof?.toJson(),
    "MDL": mdl?.toJson(),
    "FKP": fkp?.toJson(),
    "BZD": bzd?.toJson(),
    "AUD": aud?.toJson(),
    "CZK": czk?.toJson(),
    "BHD": bhd?.toJson(),
    "AED": aed?.toJson(),
    "YER": yer?.toJson(),
    "ZAR": zar?.toJson(),
    "NZD": nzd?.toJson(),
    "BWP": bwp?.toJson(),
    "BDT": bdt?.toJson(),
    "PYG": pyg?.toJson(),
    "VND": vnd?.toJson(),
    "SGD": sgd?.toJson(),
    "CDF": cdf?.toJson(),
    "LBP": lbp?.toJson(),
    "RWF": rwf?.toJson(),
    "UYU": uyu?.toJson(),
    "GTQ": gtq?.toJson(),
    "BRL": brl?.toJson(),
    "JMD": jmd?.toJson(),
    "HUF": huf?.toJson(),
    "AOA": aoa?.toJson(),
    "CNY": cny?.toJson(),
    "MYR": myr?.toJson(),
    "SHP": shp?.toJson(),
    "CRC": crc?.toJson(),
    "GYD": gyd?.toJson(),
    "DKK": dkk?.toJson(),
    "FJD": fjd?.toJson(),
    "MMK": mmk?.toJson(),
    "KRW": krw?.toJson(),
    "LSL": lsl?.toJson(),
    "UGX": ugx?.toJson(),
    "NGN": ngn?.toJson(),
    "TRY": currenciesTry?.toJson(),
    "SCR": scr?.toJson(),
    "LYD": lyd?.toJson(),
    "BAM": bam?.toJson(),
    "CKD": ckd?.toJson(),
    "BIF": bif?.toJson(),
    "COP": cop?.toJson(),
    "BSD": bsd?.toJson(),
    "KGS": kgs?.toJson(),
    "KWD": kwd?.toJson(),
    "AFN": afn?.toJson(),
    "HTG": htg?.toJson(),
    "MWK": mwk?.toJson(),
    "AMD": amd?.toJson(),
    "SEK": sek?.toJson(),
    "CAD": cad?.toJson(),
    "KYD": kyd?.toJson(),
    "UZS": uzs?.toJson(),
    "JPY": jpy?.toJson(),
    "TJS": tjs?.toJson(),
    "LKR": lkr?.toJson(),
    "SOS": sos?.toJson(),
    "BBD": bbd?.toJson(),
    "MUR": mur?.toJson(),
    "SBD": sbd?.toJson(),
    "BGN": bgn?.toJson(),
    "KPW": kpw?.toJson(),
    "CLP": clp?.toJson(),
    "TND": tnd?.toJson(),
    "KES": kes?.toJson(),
    "MNT": mnt?.toJson(),
    "HNL": hnl?.toJson(),
    "DJF": djf?.toJson(),
    "KHR": khr?.toJson(),
    "RUB": rub?.toJson(),
    "HKD": hkd?.toJson(),
    "RSD": rsd?.toJson(),
    "KMF": kmf?.toJson(),
    "THB": thb?.toJson(),
    "ANG": ang?.toJson(),
    "TOP": top?.toJson(),
    "NOK": nok?.toJson(),
    "STN": stn?.toJson(),
    "DOP": dop?.toJson(),
    "FOK": fok?.toJson(),
    "ZMW": zmw?.toJson(),
    "CUC": cuc?.toJson(),
    "CUP": cup?.toJson(),
    "IDR": idr?.toJson(),
    "KID": kid?.toJson(),
    "MKD": mkd?.toJson(),
    "LAK": lak?.toJson(),
    "PKR": pkr?.toJson(),
    "GIP": gip?.toJson(),
    "GMD": gmd?.toJson(),
    "TVD": tvd?.toJson(),
    "TWD": twd?.toJson(),
    "GEL": gel?.toJson(),
    "SSP": ssp?.toJson(),
    "BYN": byn?.toJson(),
    "WST": wst?.toJson(),
    "BMD": bmd?.toJson(),
    "SZL": szl?.toJson(),
    "VES": ves?.toJson(),
    "KZT": kzt?.toJson(),
    "ISK": isk?.toJson(),
    "UAH": uah?.toJson(),
    "ARS": ars?.toJson(),
    "CHF": chf?.toJson(),
    "TZS": tzs?.toJson(),
    "NPR": npr?.toJson(),
    "PAB": pab?.toJson(),
    "SLL": sll?.toJson(),
    "PLN": pln?.toJson(),
    "AWG": awg?.toJson(),
    "ALL": all?.toJson(),
    "MGA": mga?.toJson(),
    "PEN": pen?.toJson(),
    "OMR": omr?.toJson(),
    "NIO": nio?.toJson(),
    "LRD": lrd?.toJson(),
    "ETB": etb?.toJson(),
    "IRR": irr?.toJson(),
    "SAR": sar?.toJson(),
    "MZN": mzn?.toJson(),
    "SRD": srd?.toJson(),
    "NAD": nad?.toJson(),
    "GNF": gnf?.toJson(),
    "VUV": vuv?.toJson(),
    "QAR": qar?.toJson(),
    "MVR": mvr?.toJson(),
    "BND": bnd?.toJson(),
  };
}

class Aed {
  Aed({
    required this.name,
    required this.symbol,
  });

  final String name;
  final String symbol;

  factory Aed.fromJson(Map<String, dynamic> json) => Aed(
    name: json["name"],
    symbol: json["symbol"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "symbol": symbol,
  };
}

class Bam {
  Bam({
    required this.name,
  });

  final String name;

  factory Bam.fromJson(Map<String, dynamic> json) => Bam(
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
  };
}

class Demonyms {
  Demonyms({
    required this.eng,
    this.fra,
  });

  final Eng eng;
  final Eng? fra;

  factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
    eng: Eng.fromJson(json["eng"]),
    fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
  );

  Map<String, dynamic> toJson() => {
    "eng": eng.toJson(),
    "fra": fra?.toJson(),
  };
}

class Eng {
  Eng({
    required this.f,
    required this.m,
  });

  final String f;
  final String m;

  factory Eng.fromJson(Map<String, dynamic> json) => Eng(
    f: json["f"],
    m: json["m"],
  );

  Map<String, dynamic> toJson() => {
    "f": f,
    "m": m,
  };
}

class Flags {
  Flags({
    required this.png,
    required this.svg,
    this.alt,
  });

  final String png;
  final String svg;
  final String? alt;

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
    png: json["png"],
    svg: json["svg"],
    alt: json["alt"],
  );

  Map<String, dynamic> toJson() => {
    "png": png,
    "svg": svg,
    "alt": alt,
  };
}

class Gini {
  Gini({
    this.the2011,
    this.the2015,
    this.the2018,
    this.the2019,
    this.the1998,
    this.the2017,
    this.the2003,
    this.the2005,
    this.the2014,
    this.the2012,
    this.the2010,
    this.the1992,
    this.the2016,
    this.the2009,
    this.the1999,
    this.the2013,
    this.the2004,
    this.the2006,
    this.the2008,
  });

  final double? the2011;
  final double? the2015;
  final double? the2018;
  final double? the2019;
  final double? the1998;
  final double? the2017;
  final double? the2003;
  final double? the2005;
  final double? the2014;
  final double? the2012;
  final double? the2010;
  final double? the1992;
  final double? the2016;
  final double? the2009;
  final double? the1999;
  final double? the2013;
  final double? the2004;
  final double? the2006;
  final double? the2008;

  factory Gini.fromJson(Map<String, dynamic> json) => Gini(
    the2011: json["2011"]?.toDouble(),
    the2015: json["2015"]?.toDouble(),
    the2018: json["2018"]?.toDouble(),
    the2019: json["2019"]?.toDouble(),
    the1998: json["1998"]?.toDouble(),
    the2017: json["2017"]?.toDouble(),
    the2003: json["2003"]?.toDouble(),
    the2005: json["2005"]?.toDouble(),
    the2014: json["2014"]?.toDouble(),
    the2012: json["2012"]?.toDouble(),
    the2010: json["2010"]?.toDouble(),
    the1992: json["1992"]?.toDouble(),
    the2016: json["2016"]?.toDouble(),
    the2009: json["2009"]?.toDouble(),
    the1999: json["1999"]?.toDouble(),
    the2013: json["2013"]?.toDouble(),
    the2004: json["2004"]?.toDouble(),
    the2006: json["2006"]?.toDouble(),
    the2008: json["2008"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "2011": the2011,
    "2015": the2015,
    "2018": the2018,
    "2019": the2019,
    "1998": the1998,
    "2017": the2017,
    "2003": the2003,
    "2005": the2005,
    "2014": the2014,
    "2012": the2012,
    "2010": the2010,
    "1992": the1992,
    "2016": the2016,
    "2009": the2009,
    "1999": the1999,
    "2013": the2013,
    "2004": the2004,
    "2006": the2006,
    "2008": the2008,
  };
}

class Idd {
  Idd({
    this.root,
    this.suffixes,
  });

  final String? root;
  final List<String>? suffixes;

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
    root: json["root"],
    suffixes: json["suffixes"] == null ? [] : List<String>.from(json["suffixes"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "root": root,
    "suffixes": suffixes == null ? [] : List<dynamic>.from(suffixes!.map((x) => x)),
  };
}

class Languages {
  Languages({
    this.ara,
    this.fra,
    this.eng,
    this.glv,
    this.por,
    this.deu,
    this.nld,
    this.aym,
    this.grn,
    this.que,
    this.spa,
    this.nrf,
    this.rus,
    this.tuk,
    this.ron,
    this.hin,
    this.tam,
    this.dzo,
    this.mlt,
    this.cat,
    this.aze,
    this.arc,
    this.ckb,
    this.lit,
    this.bwg,
    this.kck,
    this.khi,
    this.ndc,
    this.nde,
    this.nya,
    this.sna,
    this.sot,
    this.toi,
    this.tsn,
    this.tso,
    this.ven,
    this.xho,
    this.zib,
    this.ell,
    this.lav,
    this.ber,
    this.mey,
    this.tir,
    this.fil,
    this.hmo,
    this.tpi,
    this.zho,
    this.tur,
    this.est,
    this.ita,
    this.nfr,
    this.slv,
    this.bjz,
    this.kon,
    this.lin,
    this.ces,
    this.slk,
    this.afr,
    this.nbl,
    this.nso,
    this.ssw,
    this.zul,
    this.niu,
    this.ben,
    this.vie,
    this.msa,
    this.lua,
    this.swa,
    this.kin,
    this.jam,
    this.sqi,
    this.srp,
    this.hun,
    this.kal,
    this.mri,
    this.nzs,
    this.fij,
    this.hif,
    this.cnr,
    this.mya,
    this.kor,
    this.nor,
    this.crs,
    this.pih,
    this.bos,
    this.hrv,
    this.rar,
    this.run,
    this.heb,
    this.pov,
    this.kir,
    this.prs,
    this.pus,
    this.hat,
    this.smo,
    this.hye,
    this.swe,
    this.uzb,
    this.jpn,
    this.tgk,
    this.sin,
    this.som,
    this.fin,
    this.mfe,
    this.mah,
    this.bul,
    this.tkl,
    this.mon,
    this.pau,
    this.khm,
    this.zdj,
    this.tha,
    this.dan,
    this.ton,
    this.fao,
    this.ind,
    this.gil,
    this.cha,
    this.mkd,
    this.lao,
    this.urd,
    this.nno,
    this.nob,
    this.smi,
    this.sag,
    this.tvl,
    this.nau,
    this.kat,
    this.bel,
    this.tet,
    this.kaz,
    this.isl,
    this.ukr,
    this.cal,
    this.nep,
    this.pol,
    this.pap,
    this.ltz,
    this.mlg,
    this.amh,
    this.fas,
    this.bar,
    this.lat,
    this.her,
    this.hgm,
    this.kwn,
    this.loz,
    this.ndo,
    this.gle,
    this.bis,
    this.div,
    this.gsw,
    this.roh,
  });

  final String? ara;
  final String? fra;
  final String? eng;
  final String? glv;
  final String? por;
  final String? deu;
  final String? nld;
  final String? aym;
  final String? grn;
  final String? que;
  final String? spa;
  final String? nrf;
  final String? rus;
  final String? tuk;
  final String? ron;
  final String? hin;
  final String? tam;
  final String? dzo;
  final String? mlt;
  final String? cat;
  final String? aze;
  final String? arc;
  final String? ckb;
  final String? lit;
  final String? bwg;
  final String? kck;
  final String? khi;
  final String? ndc;
  final String? nde;
  final String? nya;
  final String? sna;
  final String? sot;
  final String? toi;
  final String? tsn;
  final String? tso;
  final String? ven;
  final String? xho;
  final String? zib;
  final String? ell;
  final String? lav;
  final String? ber;
  final String? mey;
  final String? tir;
  final String? fil;
  final String? hmo;
  final String? tpi;
  final String? zho;
  final String? tur;
  final String? est;
  final String? ita;
  final String? nfr;
  final String? slv;
  final String? bjz;
  final String? kon;
  final String? lin;
  final String? ces;
  final String? slk;
  final String? afr;
  final String? nbl;
  final String? nso;
  final String? ssw;
  final String? zul;
  final String? niu;
  final String? ben;
  final String? vie;
  final String? msa;
  final String? lua;
  final String? swa;
  final String? kin;
  final String? jam;
  final String? sqi;
  final String? srp;
  final String? hun;
  final String? kal;
  final String? mri;
  final String? nzs;
  final String? fij;
  final String? hif;
  final String? cnr;
  final String? mya;
  final String? kor;
  final String? nor;
  final String? crs;
  final String? pih;
  final String? bos;
  final String? hrv;
  final String? rar;
  final String? run;
  final String? heb;
  final String? pov;
  final String? kir;
  final String? prs;
  final String? pus;
  final String? hat;
  final String? smo;
  final String? hye;
  final String? swe;
  final String? uzb;
  final String? jpn;
  final String? tgk;
  final String? sin;
  final String? som;
  final String? fin;
  final String? mfe;
  final String? mah;
  final String? bul;
  final String? tkl;
  final String? mon;
  final String? pau;
  final String? khm;
  final String? zdj;
  final String? tha;
  final String? dan;
  final String? ton;
  final String? fao;
  final String? ind;
  final String? gil;
  final String? cha;
  final String? mkd;
  final String? lao;
  final String? urd;
  final String? nno;
  final String? nob;
  final String? smi;
  final String? sag;
  final String? tvl;
  final String? nau;
  final String? kat;
  final String? bel;
  final String? tet;
  final String? kaz;
  final String? isl;
  final String? ukr;
  final String? cal;
  final String? nep;
  final String? pol;
  final String? pap;
  final String? ltz;
  final String? mlg;
  final String? amh;
  final String? fas;
  final String? bar;
  final String? lat;
  final String? her;
  final String? hgm;
  final String? kwn;
  final String? loz;
  final String? ndo;
  final String? gle;
  final String? bis;
  final String? div;
  final String? gsw;
  final String? roh;

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
    ara: json["ara"],
    fra: json["fra"],
    eng: json["eng"],
    glv: json["glv"],
    por: json["por"],
    deu: json["deu"],
    nld: json["nld"],
    aym: json["aym"],
    grn: json["grn"],
    que: json["que"],
    spa: json["spa"],
    nrf: json["nrf"],
    rus: json["rus"],
    tuk: json["tuk"],
    ron: json["ron"],
    hin: json["hin"],
    tam: json["tam"],
    dzo: json["dzo"],
    mlt: json["mlt"],
    cat: json["cat"],
    aze: json["aze"],
    arc: json["arc"],
    ckb: json["ckb"],
    lit: json["lit"],
    bwg: json["bwg"],
    kck: json["kck"],
    khi: json["khi"],
    ndc: json["ndc"],
    nde: json["nde"],
    nya: json["nya"],
    sna: json["sna"],
    sot: json["sot"],
    toi: json["toi"],
    tsn: json["tsn"],
    tso: json["tso"],
    ven: json["ven"],
    xho: json["xho"],
    zib: json["zib"],
    ell: json["ell"],
    lav: json["lav"],
    ber: json["ber"],
    mey: json["mey"],
    tir: json["tir"],
    fil: json["fil"],
    hmo: json["hmo"],
    tpi: json["tpi"],
    zho: json["zho"],
    tur: json["tur"],
    est: json["est"],
    ita: json["ita"],
    nfr: json["nfr"],
    slv: json["slv"],
    bjz: json["bjz"],
    kon: json["kon"],
    lin: json["lin"],
    ces: json["ces"],
    slk: json["slk"],
    afr: json["afr"],
    nbl: json["nbl"],
    nso: json["nso"],
    ssw: json["ssw"],
    zul: json["zul"],
    niu: json["niu"],
    ben: json["ben"],
    vie: json["vie"],
    msa: json["msa"],
    lua: json["lua"],
    swa: json["swa"],
    kin: json["kin"],
    jam: json["jam"],
    sqi: json["sqi"],
    srp: json["srp"],
    hun: json["hun"],
    kal: json["kal"],
    mri: json["mri"],
    nzs: json["nzs"],
    fij: json["fij"],
    hif: json["hif"],
    cnr: json["cnr"],
    mya: json["mya"],
    kor: json["kor"],
    nor: json["nor"],
    crs: json["crs"],
    pih: json["pih"],
    bos: json["bos"],
    hrv: json["hrv"],
    rar: json["rar"],
    run: json["run"],
    heb: json["heb"],
    pov: json["pov"],
    kir: json["kir"],
    prs: json["prs"],
    pus: json["pus"],
    hat: json["hat"],
    smo: json["smo"],
    hye: json["hye"],
    swe: json["swe"],
    uzb: json["uzb"],
    jpn: json["jpn"],
    tgk: json["tgk"],
    sin: json["sin"],
    som: json["som"],
    fin: json["fin"],
    mfe: json["mfe"],
    mah: json["mah"],
    bul: json["bul"],
    tkl: json["tkl"],
    mon: json["mon"],
    pau: json["pau"],
    khm: json["khm"],
    zdj: json["zdj"],
    tha: json["tha"],
    dan: json["dan"],
    ton: json["ton"],
    fao: json["fao"],
    ind: json["ind"],
    gil: json["gil"],
    cha: json["cha"],
    mkd: json["mkd"],
    lao: json["lao"],
    urd: json["urd"],
    nno: json["nno"],
    nob: json["nob"],
    smi: json["smi"],
    sag: json["sag"],
    tvl: json["tvl"],
    nau: json["nau"],
    kat: json["kat"],
    bel: json["bel"],
    tet: json["tet"],
    kaz: json["kaz"],
    isl: json["isl"],
    ukr: json["ukr"],
    cal: json["cal"],
    nep: json["nep"],
    pol: json["pol"],
    pap: json["pap"],
    ltz: json["ltz"],
    mlg: json["mlg"],
    amh: json["amh"],
    fas: json["fas"],
    bar: json["bar"],
    lat: json["lat"],
    her: json["her"],
    hgm: json["hgm"],
    kwn: json["kwn"],
    loz: json["loz"],
    ndo: json["ndo"],
    gle: json["gle"],
    bis: json["bis"],
    div: json["div"],
    gsw: json["gsw"],
    roh: json["roh"],
  );

  Map<String, dynamic> toJson() => {
    "ara": ara,
    "fra": fra,
    "eng": eng,
    "glv": glv,
    "por": por,
    "deu": deu,
    "nld": nld,
    "aym": aym,
    "grn": grn,
    "que": que,
    "spa": spa,
    "nrf": nrf,
    "rus": rus,
    "tuk": tuk,
    "ron": ron,
    "hin": hin,
    "tam": tam,
    "dzo": dzo,
    "mlt": mlt,
    "cat": cat,
    "aze": aze,
    "arc": arc,
    "ckb": ckb,
    "lit": lit,
    "bwg": bwg,
    "kck": kck,
    "khi": khi,
    "ndc": ndc,
    "nde": nde,
    "nya": nya,
    "sna": sna,
    "sot": sot,
    "toi": toi,
    "tsn": tsn,
    "tso": tso,
    "ven": ven,
    "xho": xho,
    "zib": zib,
    "ell": ell,
    "lav": lav,
    "ber": ber,
    "mey": mey,
    "tir": tir,
    "fil": fil,
    "hmo": hmo,
    "tpi": tpi,
    "zho": zho,
    "tur": tur,
    "est": est,
    "ita": ita,
    "nfr": nfr,
    "slv": slv,
    "bjz": bjz,
    "kon": kon,
    "lin": lin,
    "ces": ces,
    "slk": slk,
    "afr": afr,
    "nbl": nbl,
    "nso": nso,
    "ssw": ssw,
    "zul": zul,
    "niu": niu,
    "ben": ben,
    "vie": vie,
    "msa": msa,
    "lua": lua,
    "swa": swa,
    "kin": kin,
    "jam": jam,
    "sqi": sqi,
    "srp": srp,
    "hun": hun,
    "kal": kal,
    "mri": mri,
    "nzs": nzs,
    "fij": fij,
    "hif": hif,
    "cnr": cnr,
    "mya": mya,
    "kor": kor,
    "nor": nor,
    "crs": crs,
    "pih": pih,
    "bos": bos,
    "hrv": hrv,
    "rar": rar,
    "run": run,
    "heb": heb,
    "pov": pov,
    "kir": kir,
    "prs": prs,
    "pus": pus,
    "hat": hat,
    "smo": smo,
    "hye": hye,
    "swe": swe,
    "uzb": uzb,
    "jpn": jpn,
    "tgk": tgk,
    "sin": sin,
    "som": som,
    "fin": fin,
    "mfe": mfe,
    "mah": mah,
    "bul": bul,
    "tkl": tkl,
    "mon": mon,
    "pau": pau,
    "khm": khm,
    "zdj": zdj,
    "tha": tha,
    "dan": dan,
    "ton": ton,
    "fao": fao,
    "ind": ind,
    "gil": gil,
    "cha": cha,
    "mkd": mkd,
    "lao": lao,
    "urd": urd,
    "nno": nno,
    "nob": nob,
    "smi": smi,
    "sag": sag,
    "tvl": tvl,
    "nau": nau,
    "kat": kat,
    "bel": bel,
    "tet": tet,
    "kaz": kaz,
    "isl": isl,
    "ukr": ukr,
    "cal": cal,
    "nep": nep,
    "pol": pol,
    "pap": pap,
    "ltz": ltz,
    "mlg": mlg,
    "amh": amh,
    "fas": fas,
    "bar": bar,
    "lat": lat,
    "her": her,
    "hgm": hgm,
    "kwn": kwn,
    "loz": loz,
    "ndo": ndo,
    "gle": gle,
    "bis": bis,
    "div": div,
    "gsw": gsw,
    "roh": roh,
  };
}

class Maps {
  Maps({
    required this.googleMaps,
    required this.openStreetMaps,
  });

  final String googleMaps;
  final String openStreetMaps;

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
    googleMaps: json["googleMaps"],
    openStreetMaps: json["openStreetMaps"],
  );

  Map<String, dynamic> toJson() => {
    "googleMaps": googleMaps,
    "openStreetMaps": openStreetMaps,
  };
}

class Name {
  Name({
    required this.common,
    required this.official,
    this.nativeName,
  });

  final String common;
  final String official;
  final NativeName? nativeName;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
    common: json["common"],
    official: json["official"],
    nativeName: json["nativeName"] == null ? null : NativeName.fromJson(json["nativeName"]),
  );

  Map<String, dynamic> toJson() => {
    "common": common,
    "official": official,
    "nativeName": nativeName?.toJson(),
  };
}

class NativeName {
  NativeName({
    this.ara,
    this.fra,
    this.eng,
    this.glv,
    this.por,
    this.deu,
    this.nld,
    this.aym,
    this.grn,
    this.que,
    this.spa,
    this.nrf,
    this.rus,
    this.tuk,
    this.ron,
    this.hin,
    this.tam,
    this.dzo,
    this.mlt,
    this.cat,
    this.aze,
    this.arc,
    this.ckb,
    this.lit,
    this.bwg,
    this.kck,
    this.khi,
    this.ndc,
    this.nde,
    this.nya,
    this.sna,
    this.sot,
    this.toi,
    this.tsn,
    this.tso,
    this.ven,
    this.xho,
    this.zib,
    this.ell,
    this.lav,
    this.ber,
    this.mey,
    this.tir,
    this.fil,
    this.hmo,
    this.tpi,
    this.zho,
    this.tur,
    this.est,
    this.ita,
    this.nfr,
    this.slv,
    this.bjz,
    this.kon,
    this.lin,
    this.ces,
    this.slk,
    this.afr,
    this.nbl,
    this.nso,
    this.ssw,
    this.zul,
    this.niu,
    this.ben,
    this.vie,
    this.msa,
    this.lua,
    this.swa,
    this.kin,
    this.jam,
    this.sqi,
    this.srp,
    this.hun,
    this.kal,
    this.mri,
    this.nzs,
    this.fij,
    this.hif,
    this.cnr,
    this.mya,
    this.kor,
    this.nor,
    this.crs,
    this.pih,
    this.bos,
    this.hrv,
    this.rar,
    this.run,
    this.heb,
    this.pov,
    this.kir,
    this.prs,
    this.pus,
    this.hat,
    this.smo,
    this.hye,
    this.swe,
    this.uzb,
    this.jpn,
    this.tgk,
    this.sin,
    this.som,
    this.fin,
    this.mfe,
    this.mah,
    this.bul,
    this.tkl,
    this.mon,
    this.pau,
    this.khm,
    this.zdj,
    this.tha,
    this.dan,
    this.ton,
    this.fao,
    this.ind,
    this.gil,
    this.cha,
    this.mkd,
    this.lao,
    this.urd,
    this.nno,
    this.nob,
    this.smi,
    this.sag,
    this.tvl,
    this.nau,
    this.kat,
    this.bel,
    this.tet,
    this.kaz,
    this.isl,
    this.ukr,
    this.cal,
    this.nep,
    this.pol,
    this.pap,
    this.ltz,
    this.mlg,
    this.amh,
    this.fas,
    this.bar,
    this.lat,
    this.her,
    this.hgm,
    this.kwn,
    this.loz,
    this.ndo,
    this.gle,
    this.bis,
    this.div,
    this.gsw,
    this.roh,
  });

  final Ara? ara;
  final Ara? fra;
  final Ara? eng;
  final Ara? glv;
  final Ara? por;
  final Ara? deu;
  final Ara? nld;
  final Ara? aym;
  final Ara? grn;
  final Ara? que;
  final Ara? spa;
  final Ara? nrf;
  final Ara? rus;
  final Ara? tuk;
  final Ara? ron;
  final Ara? hin;
  final Ara? tam;
  final Ara? dzo;
  final Ara? mlt;
  final Ara? cat;
  final Ara? aze;
  final Ara? arc;
  final Ara? ckb;
  final Ara? lit;
  final Ara? bwg;
  final Ara? kck;
  final Ara? khi;
  final Ara? ndc;
  final Ara? nde;
  final Ara? nya;
  final Ara? sna;
  final Ara? sot;
  final Ara? toi;
  final Ara? tsn;
  final Ara? tso;
  final Ara? ven;
  final Ara? xho;
  final Ara? zib;
  final Ara? ell;
  final Ara? lav;
  final Ara? ber;
  final Ara? mey;
  final Ara? tir;
  final Ara? fil;
  final Ara? hmo;
  final Ara? tpi;
  final Ara? zho;
  final Ara? tur;
  final Ara? est;
  final Ara? ita;
  final Ara? nfr;
  final Ara? slv;
  final Ara? bjz;
  final Ara? kon;
  final Ara? lin;
  final Ara? ces;
  final Ara? slk;
  final Ara? afr;
  final Ara? nbl;
  final Ara? nso;
  final Ara? ssw;
  final Ara? zul;
  final Ara? niu;
  final Ara? ben;
  final Ara? vie;
  final Ara? msa;
  final Ara? lua;
  final Ara? swa;
  final Ara? kin;
  final Ara? jam;
  final Ara? sqi;
  final Ara? srp;
  final Ara? hun;
  final Ara? kal;
  final Ara? mri;
  final Ara? nzs;
  final Ara? fij;
  final Ara? hif;
  final Ara? cnr;
  final Ara? mya;
  final Ara? kor;
  final Ara? nor;
  final Ara? crs;
  final Ara? pih;
  final Ara? bos;
  final Ara? hrv;
  final Ara? rar;
  final Ara? run;
  final Ara? heb;
  final Ara? pov;
  final Ara? kir;
  final Ara? prs;
  final Ara? pus;
  final Ara? hat;
  final Ara? smo;
  final Ara? hye;
  final Ara? swe;
  final Ara? uzb;
  final Ara? jpn;
  final Ara? tgk;
  final Ara? sin;
  final Ara? som;
  final Ara? fin;
  final Ara? mfe;
  final Ara? mah;
  final Ara? bul;
  final Ara? tkl;
  final Ara? mon;
  final Ara? pau;
  final Ara? khm;
  final Ara? zdj;
  final Ara? tha;
  final Ara? dan;
  final Ara? ton;
  final Ara? fao;
  final Ara? ind;
  final Ara? gil;
  final Ara? cha;
  final Ara? mkd;
  final Ara? lao;
  final Ara? urd;
  final Ara? nno;
  final Ara? nob;
  final Ara? smi;
  final Ara? sag;
  final Ara? tvl;
  final Ara? nau;
  final Ara? kat;
  final Ara? bel;
  final Ara? tet;
  final Ara? kaz;
  final Ara? isl;
  final Ara? ukr;
  final Ara? cal;
  final Ara? nep;
  final Ara? pol;
  final Ara? pap;
  final Ara? ltz;
  final Ara? mlg;
  final Ara? amh;
  final Ara? fas;
  final Ara? bar;
  final Ara? lat;
  final Ara? her;
  final Ara? hgm;
  final Ara? kwn;
  final Ara? loz;
  final Ara? ndo;
  final Ara? gle;
  final Ara? bis;
  final Ara? div;
  final Ara? gsw;
  final Ara? roh;

  factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
    ara: json["ara"] == null ? null : Ara.fromJson(json["ara"]),
    fra: json["fra"] == null ? null : Ara.fromJson(json["fra"]),
    eng: json["eng"] == null ? null : Ara.fromJson(json["eng"]),
    glv: json["glv"] == null ? null : Ara.fromJson(json["glv"]),
    por: json["por"] == null ? null : Ara.fromJson(json["por"]),
    deu: json["deu"] == null ? null : Ara.fromJson(json["deu"]),
    nld: json["nld"] == null ? null : Ara.fromJson(json["nld"]),
    aym: json["aym"] == null ? null : Ara.fromJson(json["aym"]),
    grn: json["grn"] == null ? null : Ara.fromJson(json["grn"]),
    que: json["que"] == null ? null : Ara.fromJson(json["que"]),
    spa: json["spa"] == null ? null : Ara.fromJson(json["spa"]),
    nrf: json["nrf"] == null ? null : Ara.fromJson(json["nrf"]),
    rus: json["rus"] == null ? null : Ara.fromJson(json["rus"]),
    tuk: json["tuk"] == null ? null : Ara.fromJson(json["tuk"]),
    ron: json["ron"] == null ? null : Ara.fromJson(json["ron"]),
    hin: json["hin"] == null ? null : Ara.fromJson(json["hin"]),
    tam: json["tam"] == null ? null : Ara.fromJson(json["tam"]),
    dzo: json["dzo"] == null ? null : Ara.fromJson(json["dzo"]),
    mlt: json["mlt"] == null ? null : Ara.fromJson(json["mlt"]),
    cat: json["cat"] == null ? null : Ara.fromJson(json["cat"]),
    aze: json["aze"] == null ? null : Ara.fromJson(json["aze"]),
    arc: json["arc"] == null ? null : Ara.fromJson(json["arc"]),
    ckb: json["ckb"] == null ? null : Ara.fromJson(json["ckb"]),
    lit: json["lit"] == null ? null : Ara.fromJson(json["lit"]),
    bwg: json["bwg"] == null ? null : Ara.fromJson(json["bwg"]),
    kck: json["kck"] == null ? null : Ara.fromJson(json["kck"]),
    khi: json["khi"] == null ? null : Ara.fromJson(json["khi"]),
    ndc: json["ndc"] == null ? null : Ara.fromJson(json["ndc"]),
    nde: json["nde"] == null ? null : Ara.fromJson(json["nde"]),
    nya: json["nya"] == null ? null : Ara.fromJson(json["nya"]),
    sna: json["sna"] == null ? null : Ara.fromJson(json["sna"]),
    sot: json["sot"] == null ? null : Ara.fromJson(json["sot"]),
    toi: json["toi"] == null ? null : Ara.fromJson(json["toi"]),
    tsn: json["tsn"] == null ? null : Ara.fromJson(json["tsn"]),
    tso: json["tso"] == null ? null : Ara.fromJson(json["tso"]),
    ven: json["ven"] == null ? null : Ara.fromJson(json["ven"]),
    xho: json["xho"] == null ? null : Ara.fromJson(json["xho"]),
    zib: json["zib"] == null ? null : Ara.fromJson(json["zib"]),
    ell: json["ell"] == null ? null : Ara.fromJson(json["ell"]),
    lav: json["lav"] == null ? null : Ara.fromJson(json["lav"]),
    ber: json["ber"] == null ? null : Ara.fromJson(json["ber"]),
    mey: json["mey"] == null ? null : Ara.fromJson(json["mey"]),
    tir: json["tir"] == null ? null : Ara.fromJson(json["tir"]),
    fil: json["fil"] == null ? null : Ara.fromJson(json["fil"]),
    hmo: json["hmo"] == null ? null : Ara.fromJson(json["hmo"]),
    tpi: json["tpi"] == null ? null : Ara.fromJson(json["tpi"]),
    zho: json["zho"] == null ? null : Ara.fromJson(json["zho"]),
    tur: json["tur"] == null ? null : Ara.fromJson(json["tur"]),
    est: json["est"] == null ? null : Ara.fromJson(json["est"]),
    ita: json["ita"] == null ? null : Ara.fromJson(json["ita"]),
    nfr: json["nfr"] == null ? null : Ara.fromJson(json["nfr"]),
    slv: json["slv"] == null ? null : Ara.fromJson(json["slv"]),
    bjz: json["bjz"] == null ? null : Ara.fromJson(json["bjz"]),
    kon: json["kon"] == null ? null : Ara.fromJson(json["kon"]),
    lin: json["lin"] == null ? null : Ara.fromJson(json["lin"]),
    ces: json["ces"] == null ? null : Ara.fromJson(json["ces"]),
    slk: json["slk"] == null ? null : Ara.fromJson(json["slk"]),
    afr: json["afr"] == null ? null : Ara.fromJson(json["afr"]),
    nbl: json["nbl"] == null ? null : Ara.fromJson(json["nbl"]),
    nso: json["nso"] == null ? null : Ara.fromJson(json["nso"]),
    ssw: json["ssw"] == null ? null : Ara.fromJson(json["ssw"]),
    zul: json["zul"] == null ? null : Ara.fromJson(json["zul"]),
    niu: json["niu"] == null ? null : Ara.fromJson(json["niu"]),
    ben: json["ben"] == null ? null : Ara.fromJson(json["ben"]),
    vie: json["vie"] == null ? null : Ara.fromJson(json["vie"]),
    msa: json["msa"] == null ? null : Ara.fromJson(json["msa"]),
    lua: json["lua"] == null ? null : Ara.fromJson(json["lua"]),
    swa: json["swa"] == null ? null : Ara.fromJson(json["swa"]),
    kin: json["kin"] == null ? null : Ara.fromJson(json["kin"]),
    jam: json["jam"] == null ? null : Ara.fromJson(json["jam"]),
    sqi: json["sqi"] == null ? null : Ara.fromJson(json["sqi"]),
    srp: json["srp"] == null ? null : Ara.fromJson(json["srp"]),
    hun: json["hun"] == null ? null : Ara.fromJson(json["hun"]),
    kal: json["kal"] == null ? null : Ara.fromJson(json["kal"]),
    mri: json["mri"] == null ? null : Ara.fromJson(json["mri"]),
    nzs: json["nzs"] == null ? null : Ara.fromJson(json["nzs"]),
    fij: json["fij"] == null ? null : Ara.fromJson(json["fij"]),
    hif: json["hif"] == null ? null : Ara.fromJson(json["hif"]),
    cnr: json["cnr"] == null ? null : Ara.fromJson(json["cnr"]),
    mya: json["mya"] == null ? null : Ara.fromJson(json["mya"]),
    kor: json["kor"] == null ? null : Ara.fromJson(json["kor"]),
    nor: json["nor"] == null ? null : Ara.fromJson(json["nor"]),
    crs: json["crs"] == null ? null : Ara.fromJson(json["crs"]),
    pih: json["pih"] == null ? null : Ara.fromJson(json["pih"]),
    bos: json["bos"] == null ? null : Ara.fromJson(json["bos"]),
    hrv: json["hrv"] == null ? null : Ara.fromJson(json["hrv"]),
    rar: json["rar"] == null ? null : Ara.fromJson(json["rar"]),
    run: json["run"] == null ? null : Ara.fromJson(json["run"]),
    heb: json["heb"] == null ? null : Ara.fromJson(json["heb"]),
    pov: json["pov"] == null ? null : Ara.fromJson(json["pov"]),
    kir: json["kir"] == null ? null : Ara.fromJson(json["kir"]),
    prs: json["prs"] == null ? null : Ara.fromJson(json["prs"]),
    pus: json["pus"] == null ? null : Ara.fromJson(json["pus"]),
    hat: json["hat"] == null ? null : Ara.fromJson(json["hat"]),
    smo: json["smo"] == null ? null : Ara.fromJson(json["smo"]),
    hye: json["hye"] == null ? null : Ara.fromJson(json["hye"]),
    swe: json["swe"] == null ? null : Ara.fromJson(json["swe"]),
    uzb: json["uzb"] == null ? null : Ara.fromJson(json["uzb"]),
    jpn: json["jpn"] == null ? null : Ara.fromJson(json["jpn"]),
    tgk: json["tgk"] == null ? null : Ara.fromJson(json["tgk"]),
    sin: json["sin"] == null ? null : Ara.fromJson(json["sin"]),
    som: json["som"] == null ? null : Ara.fromJson(json["som"]),
    fin: json["fin"] == null ? null : Ara.fromJson(json["fin"]),
    mfe: json["mfe"] == null ? null : Ara.fromJson(json["mfe"]),
    mah: json["mah"] == null ? null : Ara.fromJson(json["mah"]),
    bul: json["bul"] == null ? null : Ara.fromJson(json["bul"]),
    tkl: json["tkl"] == null ? null : Ara.fromJson(json["tkl"]),
    mon: json["mon"] == null ? null : Ara.fromJson(json["mon"]),
    pau: json["pau"] == null ? null : Ara.fromJson(json["pau"]),
    khm: json["khm"] == null ? null : Ara.fromJson(json["khm"]),
    zdj: json["zdj"] == null ? null : Ara.fromJson(json["zdj"]),
    tha: json["tha"] == null ? null : Ara.fromJson(json["tha"]),
    dan: json["dan"] == null ? null : Ara.fromJson(json["dan"]),
    ton: json["ton"] == null ? null : Ara.fromJson(json["ton"]),
    fao: json["fao"] == null ? null : Ara.fromJson(json["fao"]),
    ind: json["ind"] == null ? null : Ara.fromJson(json["ind"]),
    gil: json["gil"] == null ? null : Ara.fromJson(json["gil"]),
    cha: json["cha"] == null ? null : Ara.fromJson(json["cha"]),
    mkd: json["mkd"] == null ? null : Ara.fromJson(json["mkd"]),
    lao: json["lao"] == null ? null : Ara.fromJson(json["lao"]),
    urd: json["urd"] == null ? null : Ara.fromJson(json["urd"]),
    nno: json["nno"] == null ? null : Ara.fromJson(json["nno"]),
    nob: json["nob"] == null ? null : Ara.fromJson(json["nob"]),
    smi: json["smi"] == null ? null : Ara.fromJson(json["smi"]),
    sag: json["sag"] == null ? null : Ara.fromJson(json["sag"]),
    tvl: json["tvl"] == null ? null : Ara.fromJson(json["tvl"]),
    nau: json["nau"] == null ? null : Ara.fromJson(json["nau"]),
    kat: json["kat"] == null ? null : Ara.fromJson(json["kat"]),
    bel: json["bel"] == null ? null : Ara.fromJson(json["bel"]),
    tet: json["tet"] == null ? null : Ara.fromJson(json["tet"]),
    kaz: json["kaz"] == null ? null : Ara.fromJson(json["kaz"]),
    isl: json["isl"] == null ? null : Ara.fromJson(json["isl"]),
    ukr: json["ukr"] == null ? null : Ara.fromJson(json["ukr"]),
    cal: json["cal"] == null ? null : Ara.fromJson(json["cal"]),
    nep: json["nep"] == null ? null : Ara.fromJson(json["nep"]),
    pol: json["pol"] == null ? null : Ara.fromJson(json["pol"]),
    pap: json["pap"] == null ? null : Ara.fromJson(json["pap"]),
    ltz: json["ltz"] == null ? null : Ara.fromJson(json["ltz"]),
    mlg: json["mlg"] == null ? null : Ara.fromJson(json["mlg"]),
    amh: json["amh"] == null ? null : Ara.fromJson(json["amh"]),
    fas: json["fas"] == null ? null : Ara.fromJson(json["fas"]),
    bar: json["bar"] == null ? null : Ara.fromJson(json["bar"]),
    lat: json["lat"] == null ? null : Ara.fromJson(json["lat"]),
    her: json["her"] == null ? null : Ara.fromJson(json["her"]),
    hgm: json["hgm"] == null ? null : Ara.fromJson(json["hgm"]),
    kwn: json["kwn"] == null ? null : Ara.fromJson(json["kwn"]),
    loz: json["loz"] == null ? null : Ara.fromJson(json["loz"]),
    ndo: json["ndo"] == null ? null : Ara.fromJson(json["ndo"]),
    gle: json["gle"] == null ? null : Ara.fromJson(json["gle"]),
    bis: json["bis"] == null ? null : Ara.fromJson(json["bis"]),
    div: json["div"] == null ? null : Ara.fromJson(json["div"]),
    gsw: json["gsw"] == null ? null : Ara.fromJson(json["gsw"]),
    roh: json["roh"] == null ? null : Ara.fromJson(json["roh"]),
  );

  Map<String, dynamic> toJson() => {
    "ara": ara?.toJson(),
    "fra": fra?.toJson(),
    "eng": eng?.toJson(),
    "glv": glv?.toJson(),
    "por": por?.toJson(),
    "deu": deu?.toJson(),
    "nld": nld?.toJson(),
    "aym": aym?.toJson(),
    "grn": grn?.toJson(),
    "que": que?.toJson(),
    "spa": spa?.toJson(),
    "nrf": nrf?.toJson(),
    "rus": rus?.toJson(),
    "tuk": tuk?.toJson(),
    "ron": ron?.toJson(),
    "hin": hin?.toJson(),
    "tam": tam?.toJson(),
    "dzo": dzo?.toJson(),
    "mlt": mlt?.toJson(),
    "cat": cat?.toJson(),
    "aze": aze?.toJson(),
    "arc": arc?.toJson(),
    "ckb": ckb?.toJson(),
    "lit": lit?.toJson(),
    "bwg": bwg?.toJson(),
    "kck": kck?.toJson(),
    "khi": khi?.toJson(),
    "ndc": ndc?.toJson(),
    "nde": nde?.toJson(),
    "nya": nya?.toJson(),
    "sna": sna?.toJson(),
    "sot": sot?.toJson(),
    "toi": toi?.toJson(),
    "tsn": tsn?.toJson(),
    "tso": tso?.toJson(),
    "ven": ven?.toJson(),
    "xho": xho?.toJson(),
    "zib": zib?.toJson(),
    "ell": ell?.toJson(),
    "lav": lav?.toJson(),
    "ber": ber?.toJson(),
    "mey": mey?.toJson(),
    "tir": tir?.toJson(),
    "fil": fil?.toJson(),
    "hmo": hmo?.toJson(),
    "tpi": tpi?.toJson(),
    "zho": zho?.toJson(),
    "tur": tur?.toJson(),
    "est": est?.toJson(),
    "ita": ita?.toJson(),
    "nfr": nfr?.toJson(),
    "slv": slv?.toJson(),
    "bjz": bjz?.toJson(),
    "kon": kon?.toJson(),
    "lin": lin?.toJson(),
    "ces": ces?.toJson(),
    "slk": slk?.toJson(),
    "afr": afr?.toJson(),
    "nbl": nbl?.toJson(),
    "nso": nso?.toJson(),
    "ssw": ssw?.toJson(),
    "zul": zul?.toJson(),
    "niu": niu?.toJson(),
    "ben": ben?.toJson(),
    "vie": vie?.toJson(),
    "msa": msa?.toJson(),
    "lua": lua?.toJson(),
    "swa": swa?.toJson(),
    "kin": kin?.toJson(),
    "jam": jam?.toJson(),
    "sqi": sqi?.toJson(),
    "srp": srp?.toJson(),
    "hun": hun?.toJson(),
    "kal": kal?.toJson(),
    "mri": mri?.toJson(),
    "nzs": nzs?.toJson(),
    "fij": fij?.toJson(),
    "hif": hif?.toJson(),
    "cnr": cnr?.toJson(),
    "mya": mya?.toJson(),
    "kor": kor?.toJson(),
    "nor": nor?.toJson(),
    "crs": crs?.toJson(),
    "pih": pih?.toJson(),
    "bos": bos?.toJson(),
    "hrv": hrv?.toJson(),
    "rar": rar?.toJson(),
    "run": run?.toJson(),
    "heb": heb?.toJson(),
    "pov": pov?.toJson(),
    "kir": kir?.toJson(),
    "prs": prs?.toJson(),
    "pus": pus?.toJson(),
    "hat": hat?.toJson(),
    "smo": smo?.toJson(),
    "hye": hye?.toJson(),
    "swe": swe?.toJson(),
    "uzb": uzb?.toJson(),
    "jpn": jpn?.toJson(),
    "tgk": tgk?.toJson(),
    "sin": sin?.toJson(),
    "som": som?.toJson(),
    "fin": fin?.toJson(),
    "mfe": mfe?.toJson(),
    "mah": mah?.toJson(),
    "bul": bul?.toJson(),
    "tkl": tkl?.toJson(),
    "mon": mon?.toJson(),
    "pau": pau?.toJson(),
    "khm": khm?.toJson(),
    "zdj": zdj?.toJson(),
    "tha": tha?.toJson(),
    "dan": dan?.toJson(),
    "ton": ton?.toJson(),
    "fao": fao?.toJson(),
    "ind": ind?.toJson(),
    "gil": gil?.toJson(),
    "cha": cha?.toJson(),
    "mkd": mkd?.toJson(),
    "lao": lao?.toJson(),
    "urd": urd?.toJson(),
    "nno": nno?.toJson(),
    "nob": nob?.toJson(),
    "smi": smi?.toJson(),
    "sag": sag?.toJson(),
    "tvl": tvl?.toJson(),
    "nau": nau?.toJson(),
    "kat": kat?.toJson(),
    "bel": bel?.toJson(),
    "tet": tet?.toJson(),
    "kaz": kaz?.toJson(),
    "isl": isl?.toJson(),
    "ukr": ukr?.toJson(),
    "cal": cal?.toJson(),
    "nep": nep?.toJson(),
    "pol": pol?.toJson(),
    "pap": pap?.toJson(),
    "ltz": ltz?.toJson(),
    "mlg": mlg?.toJson(),
    "amh": amh?.toJson(),
    "fas": fas?.toJson(),
    "bar": bar?.toJson(),
    "lat": lat?.toJson(),
    "her": her?.toJson(),
    "hgm": hgm?.toJson(),
    "kwn": kwn?.toJson(),
    "loz": loz?.toJson(),
    "ndo": ndo?.toJson(),
    "gle": gle?.toJson(),
    "bis": bis?.toJson(),
    "div": div?.toJson(),
    "gsw": gsw?.toJson(),
    "roh": roh?.toJson(),
  };
}

class Ara {
  Ara({
    required this.official,
    required this.common,
  });

  final String official;
  final String common;

  factory Ara.fromJson(Map<String, dynamic> json) => Ara(
    official: json["official"],
    common: json["common"],
  );

  Map<String, dynamic> toJson() => {
    "official": official,
    "common": common,
  };
}

class PostalCode {
  PostalCode({
    required this.format,
    this.regex,
  });

  final String format;
  final String? regex;

  factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
    format: json["format"],
    regex: json["regex"],
  );

  Map<String, dynamic> toJson() => {
    "format": format,
    "regex": regex,
  };
}

class Translations {
  Translations({
    required this.ara,
    required this.bre,
    required this.ces,
    required this.cym,
    required this.deu,
    required this.est,
    required this.fin,
    required this.fra,
    this.hrv,
    required this.hun,
    required this.ita,
    this.jpn,
    required this.kor,
    required this.nld,
    this.per,
    required this.pol,
    required this.por,
    required this.rus,
    required this.slk,
    required this.spa,
    required this.srp,
    required this.swe,
    required this.tur,
    required this.urd,
    this.zho,
  });

  final Ara ara;
  final Ara bre;
  final Ara ces;
  final Ara cym;
  final Ara deu;
  final Ara est;
  final Ara fin;
  final Ara fra;
  final Ara? hrv;
  final Ara hun;
  final Ara ita;
  final Ara? jpn;
  final Ara kor;
  final Ara nld;
  final Ara? per;
  final Ara pol;
  final Ara por;
  final Ara rus;
  final Ara slk;
  final Ara spa;
  final Ara srp;
  final Ara swe;
  final Ara tur;
  final Ara urd;
  final Ara? zho;

  factory Translations.fromJson(Map<String, dynamic> json) => Translations(
    ara: Ara.fromJson(json["ara"]),
    bre: Ara.fromJson(json["bre"]),
    ces: Ara.fromJson(json["ces"]),
    cym: Ara.fromJson(json["cym"]),
    deu: Ara.fromJson(json["deu"]),
    est: Ara.fromJson(json["est"]),
    fin: Ara.fromJson(json["fin"]),
    fra: Ara.fromJson(json["fra"]),
    hrv: json["hrv"] == null ? null : Ara.fromJson(json["hrv"]),
    hun: Ara.fromJson(json["hun"]),
    ita: Ara.fromJson(json["ita"]),
    jpn: json["jpn"] == null ? null : Ara.fromJson(json["jpn"]),
    kor: Ara.fromJson(json["kor"]),
    nld: Ara.fromJson(json["nld"]),
    per: json["per"] == null ? null : Ara.fromJson(json["per"]),
    pol: Ara.fromJson(json["pol"]),
    por: Ara.fromJson(json["por"]),
    rus: Ara.fromJson(json["rus"]),
    slk: Ara.fromJson(json["slk"]),
    spa: Ara.fromJson(json["spa"]),
    srp: Ara.fromJson(json["srp"]),
    swe: Ara.fromJson(json["swe"]),
    tur: Ara.fromJson(json["tur"]),
    urd: Ara.fromJson(json["urd"]),
    zho: json["zho"] == null ? null : Ara.fromJson(json["zho"]),
  );

  Map<String, dynamic> toJson() => {
    "ara": ara.toJson(),
    "bre": bre.toJson(),
    "ces": ces.toJson(),
    "cym": cym.toJson(),
    "deu": deu.toJson(),
    "est": est.toJson(),
    "fin": fin.toJson(),
    "fra": fra.toJson(),
    "hrv": hrv?.toJson(),
    "hun": hun.toJson(),
    "ita": ita.toJson(),
    "jpn": jpn?.toJson(),
    "kor": kor.toJson(),
    "nld": nld.toJson(),
    "per": per?.toJson(),
    "pol": pol.toJson(),
    "por": por.toJson(),
    "rus": rus.toJson(),
    "slk": slk.toJson(),
    "spa": spa.toJson(),
    "srp": srp.toJson(),
    "swe": swe.toJson(),
    "tur": tur.toJson(),
    "urd": urd.toJson(),
    "zho": zho?.toJson(),
  };
}

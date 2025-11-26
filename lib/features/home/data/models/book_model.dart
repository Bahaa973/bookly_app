import 'package:equatable/equatable.dart';

class BookModel extends Equatable {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  const BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      kind: json["kind"],
      id: json["id"],
      etag: json["etag"],
      selfLink: json["selfLink"],
      volumeInfo: json["volumeInfo"] != null
          ? VolumeInfo.fromJson(json["volumeInfo"])
          : null,
      saleInfo:
          json["saleInfo"] != null ? SaleInfo.fromJson(json["saleInfo"]) : null,
      accessInfo: json["accessInfo"] != null
          ? AccessInfo.fromJson(json["accessInfo"])
          : null,
      searchInfo: json["searchInfo"] != null
          ? SearchInfo.fromJson(json["searchInfo"])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "kind": kind,
      "id": id,
      "etag": etag,
      "selfLink": selfLink,
      "volumeInfo": volumeInfo?.toJson(),
      "saleInfo": saleInfo?.toJson(),
      "accessInfo": accessInfo?.toJson(),
      "searchInfo": searchInfo?.toJson(),
    };
  }

  @override
  List<Object?> get props => [
        kind,
        id,
        etag,
        selfLink,
        volumeInfo,
        saleInfo,
        accessInfo,
        searchInfo,
      ];
}

class VolumeInfo extends Equatable {
  final String? title;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  const VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json["title"],
      authors:
          json["authors"] != null ? List<String>.from(json["authors"]) : null,
      publisher: json["publisher"],
      publishedDate: json["publishedDate"],
      description: json["description"],
      industryIdentifiers: json["industryIdentifiers"] != null
          ? (json["industryIdentifiers"] as List)
              .map((e) => IndustryIdentifier.fromJson(e))
              .toList()
          : null,
      readingModes: json["readingModes"] != null
          ? ReadingModes.fromJson(json["readingModes"])
          : null,
      pageCount: json["pageCount"],
      printType: json["printType"],
      categories: json["categories"] != null
          ? List<String>.from(json["categories"])
          : null,
      maturityRating: json["maturityRating"],
      allowAnonLogging: json["allowAnonLogging"],
      contentVersion: json["contentVersion"],
      panelizationSummary: json["panelizationSummary"] != null
          ? PanelizationSummary.fromJson(json["panelizationSummary"])
          : null,
      imageLinks: json["imageLinks"] != null
          ? ImageLinks.fromJson(json["imageLinks"])
          : null,
      language: json["language"],
      previewLink: json["previewLink"],
      infoLink: json["infoLink"],
      canonicalVolumeLink: json["canonicalVolumeLink"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "authors": authors,
      "publisher": publisher,
      "publishedDate": publishedDate,
      "description": description,
      "industryIdentifiers":
          industryIdentifiers?.map((e) => e.toJson()).toList(),
      "readingModes": readingModes?.toJson(),
      "pageCount": pageCount,
      "printType": printType,
      "categories": categories,
      "maturityRating": maturityRating,
      "allowAnonLogging": allowAnonLogging,
      "contentVersion": contentVersion,
      "panelizationSummary": panelizationSummary?.toJson(),
      "imageLinks": imageLinks?.toJson(),
      "language": language,
      "previewLink": previewLink,
      "infoLink": infoLink,
      "canonicalVolumeLink": canonicalVolumeLink,
    };
  }

  @override
  List<Object?> get props => [
        title,
        authors,
        publisher,
        publishedDate,
        description,
        industryIdentifiers,
        readingModes,
        pageCount,
        printType,
        categories,
        maturityRating,
        allowAnonLogging,
        contentVersion,
        panelizationSummary,
        imageLinks,
        language,
        previewLink,
        infoLink,
        canonicalVolumeLink,
      ];
}

class IndustryIdentifier extends Equatable {
  final String? type;
  final String? identifier;

  const IndustryIdentifier({
    this.type,
    this.identifier,
  });

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json["type"],
      identifier: json["identifier"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "type": type,
      "identifier": identifier,
    };
  }

  @override
  List<Object?> get props => [type, identifier];
}

class ReadingModes extends Equatable {
  final bool? text;
  final bool? image;

  const ReadingModes({
    this.text,
    this.image,
  });

  factory ReadingModes.fromJson(Map<String, dynamic> json) {
    return ReadingModes(
      text: json["text"],
      image: json["image"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "text": text,
      "image": image,
    };
  }

  @override
  List<Object?> get props => [text, image];
}

class PanelizationSummary extends Equatable {
  final bool? containsEpubBubbles;
  final bool? containsImageBubbles;

  const PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) {
    return PanelizationSummary(
      containsEpubBubbles: json["containsEpubBubbles"],
      containsImageBubbles: json["containsImageBubbles"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "containsEpubBubbles": containsEpubBubbles,
      "containsImageBubbles": containsImageBubbles,
    };
  }

  @override
  List<Object?> get props => [containsEpubBubbles, containsImageBubbles];
}

class ImageLinks extends Equatable {
  final String? smallThumbnail;
  final String? thumbnail;

  const ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return ImageLinks(
      smallThumbnail: json["smallThumbnail"],
      thumbnail: json["thumbnail"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "smallThumbnail": smallThumbnail,
      "thumbnail": thumbnail,
    };
  }

  @override
  List<Object?> get props => [smallThumbnail, thumbnail];
}

class SaleInfo extends Equatable {
  final String? country;
  final String? saleability;
  final bool? isEbook;

  const SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      country: json["country"],
      saleability: json["saleability"],
      isEbook: json["isEbook"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "country": country,
      "saleability": saleability,
      "isEbook": isEbook,
    };
  }

  @override
  List<Object?> get props => [country, saleability, isEbook];
}

class AccessInfo extends Equatable {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final PdfInfo? pdf;
  final EpubInfo? epub;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  const AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.pdf,
    this.epub,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) {
    return AccessInfo(
      country: json["country"],
      viewability: json["viewability"],
      embeddable: json["embeddable"],
      publicDomain: json["publicDomain"],
      textToSpeechPermission: json["textToSpeechPermission"],
      pdf: json["pdf"] != null ? PdfInfo.fromJson(json["pdf"]) : null,
      epub: json["epub"] != null ? EpubInfo.fromJson(json["epub"]) : null,
      webReaderLink: json["webReaderLink"],
      accessViewStatus: json["accessViewStatus"],
      quoteSharingAllowed: json["quoteSharingAllowed"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "country": country,
      "viewability": viewability,
      "embeddable": embeddable,
      "publicDomain": publicDomain,
      "textToSpeechPermission": textToSpeechPermission,
      "pdf": pdf?.toJson(),
      "epub": epub?.toJson(),
      "webReaderLink": webReaderLink,
      "accessViewStatus": accessViewStatus,
      "quoteSharingAllowed": quoteSharingAllowed,
    };
  }

  @override
  List<Object?> get props => [
        country,
        viewability,
        embeddable,
        publicDomain,
        textToSpeechPermission,
        pdf,
        epub,
        webReaderLink,
        accessViewStatus,
        quoteSharingAllowed,
      ];
}

class PdfInfo extends Equatable {
  final bool? isAvailable;
  final String? acsTokenLink;

  const PdfInfo({
    this.isAvailable,
    this.acsTokenLink,
  });

  factory PdfInfo.fromJson(Map<String, dynamic> json) {
    return PdfInfo(
      isAvailable: json["isAvailable"],
      acsTokenLink: json["acsTokenLink"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "isAvailable": isAvailable,
      "acsTokenLink": acsTokenLink,
    };
  }

  @override
  List<Object?> get props => [isAvailable, acsTokenLink];
}

class EpubInfo extends Equatable {
  final bool? isAvailable;

  const EpubInfo({this.isAvailable});

  factory EpubInfo.fromJson(Map<String, dynamic> json) {
    return EpubInfo(isAvailable: json["isAvailable"]);
  }

  Map<String, dynamic> toJson() {
    return {"isAvailable": isAvailable};
  }

  @override
  List<Object?> get props => [isAvailable];
}

class SearchInfo extends Equatable {
  final String? textSnippet;

  const SearchInfo({this.textSnippet});

  factory SearchInfo.fromJson(Map<String, dynamic> json) {
    return SearchInfo(textSnippet: json["textSnippet"]);
  }

  Map<String, dynamic> toJson() {
    return {"textSnippet": textSnippet};
  }

  @override
  List<Object?> get props => [textSnippet];
}

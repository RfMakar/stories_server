class Stories {
  const Stories({
    this.id,
    this.title,
    this.text,
  });

  factory Stories.fromJson(Map json) => Stories(
        id: json['id'],
        title: json['title'],
        text: json['text'],
      );

  final int? id;

  final String? title;

  final String? text;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
      };
}

class CreateManyStoriesAndReturnOutputType {
  const CreateManyStoriesAndReturnOutputType({
    this.id,
    this.title,
    this.text,
  });

  factory CreateManyStoriesAndReturnOutputType.fromJson(Map json) =>
      CreateManyStoriesAndReturnOutputType(
        id: json['id'],
        title: json['title'],
        text: json['text'],
      );

  final int? id;

  final String? title;

  final String? text;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
      };
}

class UpdateManyStoriesAndReturnOutputType {
  const UpdateManyStoriesAndReturnOutputType({
    this.id,
    this.title,
    this.text,
  });

  factory UpdateManyStoriesAndReturnOutputType.fromJson(Map json) =>
      UpdateManyStoriesAndReturnOutputType(
        id: json['id'],
        title: json['title'],
        text: json['text'],
      );

  final int? id;

  final String? title;

  final String? text;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
      };
}

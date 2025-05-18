import 'package:dart_frog/dart_frog.dart';

import '../../prisma/generated_dart_client/client.dart';
import '../../repositories/story_repository.dart';

final _prismaClient = PrismaClient()..$connect();
final _storyRepository = StoryRepository(_prismaClient);

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(provider<StoryRepository>((_) => _storyRepository));
}

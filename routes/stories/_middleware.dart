import 'package:dart_frog/dart_frog.dart';

import '../../prisma/generated_dart_client/client.dart';
import '../../repositories/stories_repository.dart';

final _prismaClient = PrismaClient()..$connect();
final _storiesRepository = StoriesRepository(_prismaClient);

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(provider<StoriesRepository>((_) => _storiesRepository));
}

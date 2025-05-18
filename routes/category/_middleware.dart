import 'package:dart_frog/dart_frog.dart';

import '../../prisma/generated_dart_client/client.dart';
import '../../repositories/category_repository.dart';

final _prismaClient = PrismaClient()..$connect();
final _categoryRepository = CategoryRepository(_prismaClient);

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(provider<CategoryRepository>((_) => _categoryRepository));
}

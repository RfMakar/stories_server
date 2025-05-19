import 'package:dart_frog/dart_frog.dart';

import '../../repositories/category_repository.dart';
import '../../prisma/prisma_client/client.dart';
import '../../services/category_service.dart';

final _prismaClient = PrismaClient()..$connect();
final _categoryRepository = CategoryRepository(_prismaClient);
final _categoryService = CategoryService(_categoryRepository);

Handler middleware(Handler handler) {
  
  return handler
      .use(requestLogger())
      .use(provider<CategoryService>((_) => _categoryService));
}

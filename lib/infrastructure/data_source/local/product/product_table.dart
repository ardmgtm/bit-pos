import '../../../../domain/entity/product/product.dart';

const String productTableCreateQuery = '''
create table if not exists $tableProduct ( 
  $columnId integer primary key autoincrement, 
  $columnName text not null,
  $columnBarcode text,
  $columnPrice real not null,
  $columnImage text not null,
  $columnCategory text not null
)
''';

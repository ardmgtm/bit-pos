import 'package:dartz/dartz.dart';

import 'transaction.dart';
import 'transaction_failure.dart';

abstract class TransactionRepository {
  Future<Either<Transaction, TransactionFailure>> createTransaction(
    Transaction transaction,
  );
  Future<Either<List<Transaction>, TransactionFailure>> getTransactions();
}

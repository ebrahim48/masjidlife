class Borrower {
  final String Date;
  final int Disburse;
  final int Collection;
  final String Details;

  const Borrower({
    required this.Date,
    required this.Disburse,
    required this.Collection,
    required this.Details,
  });
}

final List<Borrower> borrowerinfo = [
  Borrower(
    Date: '22 Jul 23',
    Disburse: 5000,
    Collection: 5000,
    Details: 'Monthly Installment',
  ),
  Borrower(
    Date: '22 Sep 23',
    Disburse: 5000,
    Collection: 5000,
    Details: 'Monthly Installment',
  ),
];
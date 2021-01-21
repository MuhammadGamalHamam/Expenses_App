class ExpenseCategory {
  int id;
  final String name;
  static final columns = ["id", "name"];

  ExpenseCategory(this.name, {this.id});

  factory ExpenseCategory.fromMap(Map<String, dynamic> data) {
    var expenseCategory = ExpenseCategory(data['name']);
    expenseCategory.id = data['id'];
    return expenseCategory;
  }

  Map<String, dynamic> toMap() => {"name": name};
}

List<ExpenseCategory> get defaultExpenseCategories {
  var expenseCategoriesList = List<ExpenseCategory>();
  expenseCategoriesList.add(ExpenseCategory("personal items"));
  expenseCategoriesList.add(ExpenseCategory("Supermarket items"));
  expenseCategoriesList.add(ExpenseCategory("Car Fuel"));
  return expenseCategoriesList;
}

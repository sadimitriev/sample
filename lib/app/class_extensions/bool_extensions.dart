extension DBConversion on bool? {
  int? toDBFormat() {
    if (this == null) {
      return null;
    }
    return this! ? 1 : 0;
  }

  static bool? fromDBFormat(int? dbBool) => dbBool == null ? null : dbBool == 1;
}

class EnvironmentConst {
  static const String environmentName = String.fromEnvironment("ENVIRONMENT");
  static const String projectName = String.fromEnvironment("PROJECT");
  static const bool useJWTAuthentication = bool.fromEnvironment(
    "USE_JWT_AUTHENTICATION",
  );
  static const String jwtApiPathPrefix = String.fromEnvironment(
    "JWT_API_PATH_PREFIX",
  );
  static const String logonApiPathPrefix = String.fromEnvironment(
    "LOGON_API_PATH_PREFIX",
  );
  static const String limsApiPathPrefix = String.fromEnvironment(
    "LIMS_API_PATH_PREFIX",
  );
  static const int tasksSyncIntervalInMinutes = int.fromEnvironment(
    "TASKS_SYNC_INTERVAL_IN_MINUTES",
    defaultValue: 15,
  );
  static const int registriesSyncIntervalInMinutes = int.fromEnvironment(
    "REGISTRIES_SYNC_INTERVAL_IN_MINUTES",
    defaultValue: 30,
  );

  static const int allowedUserInactivityTimeInMinutes = int.fromEnvironment(
    "ALLOWED_USER_INACTIVITY_TIME_IN_MINUTES",
    defaultValue: 10,
  );
}

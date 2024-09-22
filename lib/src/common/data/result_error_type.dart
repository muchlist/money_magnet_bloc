enum ErrorType {
  apiError, // 5XX from server. etc
  requestError,
  authError,
  authRefreshError,
  networkError,
  localDatabaseError,
  formatError,
  unknownError,
}

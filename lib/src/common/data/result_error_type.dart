enum ErrorType {
  apiError, // 5XX from server. etc
  requestError,
  authError,
  networkError,
  localDatabaseError,
  formatError,
  unknownError,
}

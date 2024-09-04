export class HTTPError extends Error {
    constructor(statusCode, message){
      super(message);
      this.statusCode = statusCode;
    }
  }
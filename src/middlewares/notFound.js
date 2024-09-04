import { HTTPError } from "../errors/httpError.js";

export const notFound = () => {
  throw new HTTPError(404, "Not found");
};
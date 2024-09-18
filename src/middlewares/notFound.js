import { HTTPError } from "../errors/httpError.js";

export const notFound = () => {
  throw new HTTPError(404, "Oups! Cette scène semble manquer au scénario");
};
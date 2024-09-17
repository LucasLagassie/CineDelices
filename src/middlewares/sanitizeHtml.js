import sanitizeHtml from "sanitize-html";

export const bodySanitizer = (req, res, next) => {
  for (const key of Object.keys(req.body)) {
    if (typeof req.body[key] === "string") {
      req.body[key] = sanitizeHtml(req.body[key]);
    }
  }
  next();
};

const homeRouter = require("./home");
const newRouter = require("./news");
const meRouter = require("./me");
const coursesRouter = require("./courses");

function route(app) {
  app.use("/me", meRouter);
  app.use("/courses", coursesRouter);
  app.use("/news", newRouter);
  app.use("/", homeRouter);
}

module.exports = route;

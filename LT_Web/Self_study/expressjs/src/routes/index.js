const homeRouter = require("./home");
const newRouter = require("./news");
const coursesRouter = require("./courses");

function route(app) {
  app.use("/courses", coursesRouter);
  app.use("/news", newRouter);
  app.use("/", homeRouter);
}

module.exports = route;

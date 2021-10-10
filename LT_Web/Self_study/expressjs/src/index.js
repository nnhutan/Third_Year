const path = require("path");
const morgan = require("morgan");
const express = require("express");
const handlebars = require("express-handlebars");
const route = require("./routes");

const methodOverride = require("method-override");
const app = express();
const port = 3000;

app.use(methodOverride("_method"));

//use middleware
app.use(express.urlencoded());

// connect to db
const db = require("./config/db");
db.connect();

// set static file
app.use(express.static(path.join(__dirname, "public")));

// HTTP logger
app.use(morgan("combined"));

// Template engines
app.engine(
  "hbs",
  handlebars({
    extname: ".hbs",
    helpers: {
      sum: (a, b) => a + b,
    },
  })
);
app.set("view engine", "hbs");
app.set("views", path.join(__dirname, "resources", "views"));

// Route init
route(app);

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});

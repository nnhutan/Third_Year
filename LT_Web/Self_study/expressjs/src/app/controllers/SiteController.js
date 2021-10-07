const Course = require("../models/Course");
const { multipleMongooseToObject } = require("../../until/mongoose");
class SiteController {
  // [GET] /home
  index(req, res, next) {
    Course.find({})
      .then((courses) => {
        courses = multipleMongooseToObject(courses);
        res.render("home", { courses });
      })
      .catch(next);
  }
}

module.exports = new SiteController();

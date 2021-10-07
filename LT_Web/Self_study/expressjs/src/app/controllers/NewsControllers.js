class NewsController {
  // [GET] /news
  index(req, res) {
    res.send("news page");
  }
}

module.exports = new NewsController();

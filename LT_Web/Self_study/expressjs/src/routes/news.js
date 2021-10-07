const express = require("express");
const router = express.Router();

const newsController = require("../app/controllers/NewsControllers");
router.get("/news", newsController.index);

module.exports = router;

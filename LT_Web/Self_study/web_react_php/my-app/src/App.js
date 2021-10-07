import React from "react";
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap-icons/font/bootstrap-icons.css";
import TopHeader from "./components/TopHeader";
import MiddleHeader from "./components/MiddleHeader";
import BottomHeader from "./components/BottomHeader";
import Slider from "./components/Slider";
import PopularCategory from "./components/PopularCategory";

function App() {
  return (
    <>
      <TopHeader />
      <MiddleHeader />
      <BottomHeader />
      <Slider />
      <PopularCategory />
    </>
  );
}

export default App;

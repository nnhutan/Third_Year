import React, { useEffect } from "react";
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap-icons/font/bootstrap-icons.css";
import TopHeader from "./components/TopHeader";
import MiddleHeader from "./components/MiddleHeader";
import BottomHeader from "./components/BottomHeader";
import Slider from "./components/Slider";
import PopularCategory from "./components/PopularCategory";
import Products from "./components/Products";
import axios from "axios";
function App() {
  useEffect(() => {
    axios
      .post(
        `http://localhost/myself/assignment/server/API/authentication.php`,
        {
          action: "login",
          role_id: "1",
          fullname: "Đinh Như Tân",
          phone_number: "036217847",
          address: "Viet Nam",
          email: "nhutan2001@gmail.com",
          password: "11111111",
        },
        { withCredentials: true }
      )
      .then((res) => {
        console.log("hello", res.data);
      });
  }, []);
  return (
    <>
      <TopHeader />
      <MiddleHeader />
      <BottomHeader />
      <Slider />
      <PopularCategory />
      <Products />
    </>
  );
}

export default App;

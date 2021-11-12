import React, { useEffect, useState } from "react";
import axios from "axios";
import Product from "./Product";

function Products() {
  const [products, setProducts] = useState([]);
  useEffect(() => {
    axios
      .get(`http://localhost/myself/server/API/product.php?action=list`)
      .then((res) => {
        console.log(res.data);
        setProducts(res.data["productList"]);
      });
  }, []);
  return (
    <div className="container">
      <div className="row">
        {products.map((product) => (
          <div className="col-xl-3">
            <Product product={product} key={product.id} />
          </div>
        ))}
      </div>
    </div>
  );
}

export default Products;

import React from "react";

function Product({ product }) {
  return (
    <div className="card">
      <img src={product.thumbnail} alt="product" className="card-img-top" />
      <div className="card-body">
        <h5 className="card-title">{product.title}</h5>
        <p className="card-text">{product.price}</p>
        <button className="btn btn-primary">Shop now</button>
      </div>
    </div>
  );
}

export default Product;

window.addEventListener('load', () => {
  const priceInput = document.getElementById("item-price"); 
  const addTaxPrice = document.getElementById("add-tax-price");
  const profitField = document.getElementById("profit"); 

  priceInput.addEventListener("input", () => {
    const inputValue = priceInput.value; 

    const tax = Math.floor(inputValue * 0.1);
    addTaxPrice.textContent = tax;

    const profit = inputValue - tax;
    profitField.textContent = profit;
  });
});

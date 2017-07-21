Supplier.create!([
  {name: "wink", email: "wink@email.com", phone_n: "123-123-1234"},
  {name: "amazon", email: "amazon@email.com", phone_n: "123-222-1234"}
])
Product.create!([
  {name: "Accesories", price: "30.0", image: " ", description: "Hats & Scarfs", supplier_id: 2},
  {name: "Purses", price: "60.0", image: " ", description: "Handbags", supplier_id: 1},
  {name: "Accesories", price: "150.0", image: " ", description: "Rings", supplier_id: 2}
])


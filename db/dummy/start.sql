--1. Create the Dummy Stores. Run the following querys:
s1 = Store.create(name:"Fruit Store", street:"Av. 5 de Mayo", number:11, zipcode:121, city:"Guayaquil", country:"Ecuador")
s2 = Store.create(name:"Hardware Store", street:"Av. 5 de Mayo", number:22, zipcode:122, city:"Quito", country:"Ecuador")

--2. Create the Dummy categories. Run the following querys:
c1 = Category.create(name:"Fruits", keywords:"fruits")
c2 = Category.create(name:"Hardware", keywords:"tools")

--3. Obtain the Category Id's to use them in the product creation step
cid1 = Category.where(name: "Fruits").first
cid2 = Category.where(name: "Hardware").first

--4. Obtain the Store Id's to use them in the product creation step
sid1 = Store.where(name: "Fruit Store").first
sid2 = Store.where(name: "Hardware Store").first

--5. Create the Dummy products. Run the following querys:
p1 = Product.create(name:"Apple", color:"red", category_id: cid1.id, size:2, price: 5, store_id: sid1.id)
p2 = Product.create(name:"Orange", color:"orange", category_id: cid1.id, size:4, price: 9, store_id: sid1.id)

p3 = Product.create(name:"Hammer", color:"light grey", category_id: cid2.id, size:5, price: 10, store_id: sid2.id)
p4 = Product.create(name:"Screwdriver", color:"grey", category_id: cid2.id, size:3, price: 8, store_id: sid2.id)

--6. You can continue to create on the web application interface. 
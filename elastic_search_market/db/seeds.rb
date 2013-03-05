%w[TV MobilePhones Tablets PC Laptops Keyboards Mouses].each do |name|
  Category.create! name: name
end

category = lambda { |name| Category.where(name: name).first }

Product.create!({
  name: "BigTV",
  description: "Wide screen, 3D, SmartTV. Awesome TV with great design.",
  brand: "Samsung",
  category: category.call("TV")
})

Product.create!({
  name: "SmallTV",
  description: "Small screen. Cheap TV with ugly design.",
  brand: "Samsung",
  category: category.call("TV")
})

Product.create!({
  name: "MiddleTV",
  description: "Good variant. Not expensive and has some usefull features like 3D and SmartTV.",
  brand: "LG",
  category: category.call("TV")
})

Product.create!({
  name: "E6",
  description: "Mobile phone with QWERTY keyboard on board",
  brand: "Nokia",
  category: category.call("MobilePhones")
})

Product.create!({
  name: "E7",
  description: "Wide screen mobile phone",
  brand: "Nokia",
  category: category.call("MobilePhones")
})

Product.create!({
  name: "iPad",
  description: "One of the best tablet PCs ever",
  brand: "Apple",
  category: category.call("Tablets")
})

Product.create!({
  name: "iPad Mini",
  description: "It's like iPad but with less screen",
  brand: "Apple",
  category: category.call("Tablets")
})

Product.create!({
  name: "Nexus",
  description: "Good tablet powered with Android by Google",
  brand: "Google",
  category: category.call("Tablets")
})

Product.create!({
  name: "MacBook Pro 13",
  description: "Apple laptop with amazing design and 13 inches display",
  brand: "Apple",
  category: category.call("Laptops")
})

Product.create!({
  name: "MacBook Pro 15",
  description: "Apple laptop with amazing design and 15 inches display",
  brand: "Apple",
  category: category.call("Laptops")
})

Product.create!({
  name: "MacBook Air 13",
    description: "Apple super light and thin laptop with 13 inches display",
    brand: "Apple",
    category: category.call("Laptops")
})

Product.create!({
  name: "Samsung 900X3A",
  description: "Apple air concurent. Also thin and light",
  brand: "Samsung",
  category: category.call("Laptops")
})

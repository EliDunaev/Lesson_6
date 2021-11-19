//MARK: Protocols

protocol Coffee {
    var cost: Int { get }
}

protocol CoffeeDecorator: Coffee {
    var baseCoffee: Coffee { get }
    init(baseCoffee: Coffee)
}

//MARK: Base Class

class SimpleCoffee: Coffee {
    var cost: Int {
        return 10
    }
}

//MARK: Classes

class Sugar: CoffeeDecorator {
    var baseCoffee: Coffee
    
    required init(baseCoffee: Coffee) {
        self.baseCoffee = baseCoffee
    }
    
    var cost: Int {
        return baseCoffee.cost + 10
    }
}

class Milk: CoffeeDecorator {
    var baseCoffee: Coffee
    
    required init(baseCoffee: Coffee) {
        self.baseCoffee = baseCoffee
    }
    
    var cost: Int {
        return baseCoffee.cost + 20
    }
}

class Whip: CoffeeDecorator {
    var baseCoffee: Coffee
    
    required init(baseCoffee: Coffee) {
        self.baseCoffee = baseCoffee
    }
    
    var cost: Int {
        return baseCoffee.cost + 30
    }
}

//MARK: Output

let coffee = SimpleCoffee()
print("Цена кофе \(coffee.cost)")

let coffeeWithSugar = Sugar(baseCoffee: coffee)
print("Цена кофе с сахаром \(coffeeWithSugar.cost)")

let coffeeWithMilk = Milk(baseCoffee: coffee)
print("Цена кофе c молоком \(coffeeWithMilk.cost)")

let coffeeMilkAndSugar = Sugar(baseCoffee: coffeeWithMilk)
print("Цена кофе c молоком и сахаром \(coffeeMilkAndSugar.cost)")

let coffeeWithWhipAndSugar = Whip(baseCoffee: coffeeWithSugar)
print("Цена кофе c сахаром и взбитыми сливками \(coffeeWithWhipAndSugar.cost)")


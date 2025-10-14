#  1. Write a Python program that defines a Car class with attributes like make, model, 
#  and year, and methods like start() to start the car and stop() to stop the car.

class Car:
    """
    A class to represent a car.

    Attributes:
        make (str): The manufacturer of the car.
        model (str): The model of the car.
        year (int): The manufacturing year of the car.
        is_started (bool): True if the car is started, False otherwise.
    """

    def __init__(self, make, model, year):
        """
        Initializes a new Car object.

        Args:
            make (str): The manufacturer of the car.
            model (str): The model of the car.
            year (int): The manufacturing year of the car.
        """
        self.make = make
        self.model = model
        self.year = year
        self.is_started = False  # Car is initially stopped
    def start(self):
        """
        Starts the car if it's not already started.
        """
        if not self.is_started:
            self.is_started = True
            print(f"The {self.year} {self.make} {self.model} has started. Vroom! ")
        else:
            print(f"The {self.make} {self.model} is already running.")

    def stop(self):
        """
        Stops the car if it's currently running.
        """
        if self.is_started:
            self.is_started = False
            print(f"The {self.year} {self.make} {self.model} has stopped. ")
        else:
            print(f"The {self.make} {self.model} is already stopped.")

    def display_info(self):
        """
        Displays the car's information and its current status.
        """
        status = "started" if self.is_started else "stopped"
        print(f"\n--- Car Information ---")
        print(f"Make: {self.make}")
        print(f"Model: {self.model}")
        print(f"Year: {self.year}")
        print(f"Status: The car is currently {status}.")
        print(f"-----------------------\n")

# --- Demonstration of the Car class ---
if __name__ == "__main__":
    # Create a Car object
    my_car = Car("Tesla", "Model 3", 2023)

    # Display initial information
    my_car.display_info()

    # Start the car
    my_car.start()

    # Try to start it again
    my_car.start()

    # Display updated information
    my_car.display_info()

    # Stop the car
    my_car.stop()
    # Try to stop it again
    my_car.stop()

    # Create another car
    second_car = Car("Honda", "CRV", 2020)
    second_car.display_info()
    second_car.start()
    second_car.display_info()

# 2. Write a Python program that demonstrates inheritance by creating a base class 
# Animal and derived classes like Dog, Cat, etc., each with their specific behaviors.

class Animal:
    def _init_(self, name):
        self.name = name

    def eat(self):
        print(f"{self.name} is eating.")

    def sleep(self):
        print(f"{self.name} is sleeping.")

class Dog(Animal):
    def _init_(self, name, breed):
        super()._init_(name)
        self.breed = breed

    def bark(self):
        print(f"{self.name} (a {self.breed}) barks: Woof! Woof!")

class Cat(Animal):
    def _init_(self, name, color):
        super()._init_(name)
        self.color = color

    def meow(self):
        print(f"{self.name} (a {self.color} cat) meows: Meow!")

class Bird(Animal):
    def _init_(self, name, species):
        super()._init_(name)
        self.species = species
    def fly(self):
        print(f"{self.name} (a {self.species}) is flying high!")

# Demonstrating inheritance
print("\n--- Inheritance Demonstration ---")
my_dog = Dog("Buddy", "Golden Retriever")
my_cat = Cat("Whiskers", "Tabby")
my_bird = Bird("Sky", "Parrot")

my_dog.eat()
my_dog.bark()
my_dog.sleep()

my_cat.eat()
my_cat.meow()
my_cat.sleep()

my_bird.eat()
my_bird.fly()
my_bird.sleep()


# 3. Define a base class called Animal with a method make_sound(). 
# Implement derived classes like Dog, Cat, Bird that override the make_sound() method to produce different sounds. 
# Demonstrate polymorphism by calling the method on objects of different classes. 

class Animal:
    def make_sound(self):
        raise NotImplementedError("Subclass must implement abstract method 'make_sound'")

class Dog(Animal):
    def make_sound(self):
        return "Woof! Woof!"

class Cat(Animal):
    def make_sound(self):
        return "Meow!"

class Bird(Animal):
    def make_sound(self):
        return "Chirp! Chirp!"

# Demonstrating polymorphism
print("\n--- Polymorphism Demonstration ---")
animals = [Dog(), Cat(), Bird()]

for animal in animals:
    print(f"An animal makes sound: {animal.make_sound()}")

# 4. Write a Python program that demonstrates error handling using 
# try – except block to handle division by zero. 

def safe_divide(numerator, denominator):
    """
    Performs division of two numbers, handling ZeroDivisionError.

    Args:
        numerator (float or int): The number to be divided.
        denominator (float or int): The number to divide by.

    Returns:
        float or str: The result of the division, or an error message if division by zero occurs.
    """
    try:
        # Attempt to perform the division
        result = numerator / denominator
        return result
    except ZeroDivisionError:
        # Catch the specific error if division by zero happens
        return "Error: Cannot divide by zero!"
    except TypeError:
        # Catch other potential errors, like dividing non-numeric types
        return "Error: Invalid input. Please enter numbers only."
    except Exception as e:
        # A general catch-all for any other unexpected errors
        return f"An unexpected error occurred: {e}"

# --- Demonstrating the safe_divide function ---
if __name__ == "__main__":
    print("--- Division Error Handling Demonstration ---")
 # Scenario 1: Valid division
    num1 = 10
    den1 = 2
    print(f"\nDividing {num1} by {den1}:")
    division_result1 = safe_divide(num1, den1)
    print(f"Result: {division_result1}")

    # Scenario 2: Division by zero
    num2 = 15
    den2 = 0
    print(f"\nDividing {num2} by {den2}:")
    division_result2 = safe_divide(num2, den2)
    print(f"Result: {division_result2}")

    # Scenario 3: Another valid division
    num3 = 7
    den3 = 3
    print(f"\nDividing {num3} by {den3}:")
    division_result3 = safe_divide(num3, den3)
    print(f"Result: {division_result3}")

    # Scenario 4: Invalid input type (for TypeError demonstration)
    num4 = 20
    den4 = "five"
    print(f"\nDividing {num4} by '{den4}':")
    division_result4 = safe_divide(num4, den4)
    print(f"Result: {division_result4}")
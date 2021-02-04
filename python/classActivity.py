class Car():
    'This is a Car class'

#manufacturer, model, make, transmission, color   
    def __init__(self,manufacturer,model,make,transmission,color):
        self.manufacturer = manufacturer
        self.model = model
        self.make = make
        self.transmission = transmission
        self.color = color
    
    def accelerate(self):
        print("{} {} is moving".format(self.manufacturer, self.model))
    
    def stop(self):
        print("{} {} has stopped".format(self.manufacturer, self.model))

#create 3 different car objects
car1 = Car("Toyota", "Corolla", "2015", "Manual", "White")
car2 = Car("Maruti", "800", "2013", "Manual", "Red")
car3 = Car("Suzuki", "Swift", "2017", "Automatic", "Black")


car1.accelerate()
car1.stop()
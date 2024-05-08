# frozen_string_literal: true

# Facade is a structural design pattern that provides a simplified
# (but limited) interface to a complex system of classes, library or
# framework.

# Facade can be recognized in a class that has a simple interface, but delegates
# most of the work of other classes. Usually, facades manage the full life cycle of objects they use.
class Facade
  # Depending on your application's needs, you can provide the Facade with
  # existing subsystem objects or force the facade to create them on its own.
  def initialize(subsystem1, subsystem2)
    @subsystem1 = subsystem1 || Subsystem1.new
    @subsystem2 = subsystem2 || Subsystem2.new
  end

  # The facade methods are convenient shortcuts to the sophisticated
  # funcionality of the subsystem. However, clients get only to a fraction of
  # a subsystem's capabilities.
  def operation
    results = []
    results.append('Facade initializes subsystems:')
    results.append(@subsystem1.operation1)
    results.append(@subsystem2.operation1)
    results.append('Facade orders subsystems to perform the action:')
    results.append(@subsystem1.operation_n)
    results.append(@subsystem2.operation_z)
    result.join("\n")
  end
end

# The subsystem can accept request either from facade or client directly.
# In any case, the subsystem, the Facade is yet another client, and its not
# a part of a subsystem.
class Subsystem1
  # @return [String]
  def operation1
    'Subsystem1: Ready!'
  end

  # ...

  # Return [String]
  def operation_n
    'Subsystem2: Get Ready!'
  end

  # ...

  # Return [String]
  def operation_z
    'Subsystem2: Fire!'
  end
end

# The client code works with complex subsystems through a simple interface
# provided the Facade. When a facade manages the lifecycle of the subsystem,
# the client may not even know about the existence of the subsystem. This
# approach lets you keep the complexity under control.
def client_code(facade)
  print facade.operation
end

# The client code may have some of the subsystem's objects already created. In
# this case, it might be worthwhile to initialize the Facade with this objects
# instead of letting the Facade create new instances.
subsystem1 = Subsystem1.new
subsystem2 = Subsystem2.new
facade = Facade.new(subsystem1, subsystem2)
client_code(facade)

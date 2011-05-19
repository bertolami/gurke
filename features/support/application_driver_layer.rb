require 'features/application_driver_layers/dummy_driver'
require 'features/application_driver_layers/webrat_driver'
require 'features/application_driver_layers/direct_class_driver'

#World(DummyDriver)
World(WebratDriver)
#World(DirectClassDriver)


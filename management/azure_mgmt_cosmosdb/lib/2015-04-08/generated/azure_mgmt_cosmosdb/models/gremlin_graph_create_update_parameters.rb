# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2015_04_08
  module Models
    #
    # Parameters to create and update Cosmos DB Gremlin graph.
    #
    class GremlinGraphCreateUpdateParameters

      include MsRestAzure

      # @return [GremlinGraphResource] The standard JSON format of a Gremlin
      # graph
      attr_accessor :resource

      # @return [Hash{String => String}] A key-value pair of options to be
      # applied for the request. This corresponds to the headers sent with the
      # request.
      attr_accessor :options


      #
      # Mapper for GremlinGraphCreateUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GremlinGraphCreateUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'GremlinGraphCreateUpdateParameters',
            model_properties: {
              resource: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.resource',
                type: {
                  name: 'Composite',
                  class_name: 'GremlinGraphResource'
                }
              },
              options: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.options',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end

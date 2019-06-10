# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2015_04_08
  module Models
    #
    # The List operation response, that contains the containers and their
    # properties.
    #
    class SqlContainerListResult

      include MsRestAzure

      # @return [Array<SqlContainer>] List of containers and their properties.
      attr_accessor :value


      #
      # Mapper for SqlContainerListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SqlContainerListResult',
          type: {
            name: 'Composite',
            class_name: 'SqlContainerListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SqlContainerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SqlContainer'
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

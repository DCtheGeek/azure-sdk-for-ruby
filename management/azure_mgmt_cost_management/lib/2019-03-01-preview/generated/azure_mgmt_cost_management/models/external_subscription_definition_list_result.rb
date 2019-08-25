# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2019_03_01_preview
  module Models
    #
    # Result of listing ExternalSubscription definitions. It contains a list of
    # available ExternalSubscription definitions in the scope provided.
    #
    class ExternalSubscriptionDefinitionListResult

      include MsRestAzure

      # @return [Array<ExternalSubscriptionDefinition>] The list of
      # ExternalSubscription definitions.
      attr_accessor :value


      #
      # Mapper for ExternalSubscriptionDefinitionListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExternalSubscriptionDefinitionListResult',
          type: {
            name: 'Composite',
            class_name: 'ExternalSubscriptionDefinitionListResult',
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
                      serialized_name: 'ExternalSubscriptionDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExternalSubscriptionDefinition'
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
# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AzureStack::Mgmt::V2017_06_01
  module Models
    #
    # The resource containing the Azure Stack activation key.
    #
    class ActivationKeyResult

      include MsRestAzure

      # @return [String] Azure Stack activation key.
      attr_accessor :activation_key


      #
      # Mapper for ActivationKeyResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ActivationKeyResult',
          type: {
            name: 'Composite',
            class_name: 'ActivationKeyResult',
            model_properties: {
              activation_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activationKey',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
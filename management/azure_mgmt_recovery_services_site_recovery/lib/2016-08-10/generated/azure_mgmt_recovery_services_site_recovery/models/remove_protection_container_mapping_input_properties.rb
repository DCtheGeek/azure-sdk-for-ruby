# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Unpairing input properties.
    #
    class RemoveProtectionContainerMappingInputProperties

      include MsRestAzure

      # @return [ReplicationProviderContainerUnmappingInput] Provider specific
      # input for unpairing.
      attr_accessor :provider_specific_input


      #
      # Mapper for RemoveProtectionContainerMappingInputProperties class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RemoveProtectionContainerMappingInputProperties',
          type: {
            name: 'Composite',
            class_name: 'RemoveProtectionContainerMappingInputProperties',
            model_properties: {
              provider_specific_input: {
                required: false,
                serialized_name: 'providerSpecificInput',
                type: {
                  name: 'Composite',
                  class_name: 'ReplicationProviderContainerUnmappingInput'
                }
              }
            }
          }
        }
      end
    end
  end
end

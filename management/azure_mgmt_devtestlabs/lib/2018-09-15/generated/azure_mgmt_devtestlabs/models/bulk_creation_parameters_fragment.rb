# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Parameters for creating multiple virtual machines as a single action.
    #
    class BulkCreationParametersFragment

      include MsRestAzure

      # @return [Integer] The number of virtual machine instances to create.
      attr_accessor :instance_count


      #
      # Mapper for BulkCreationParametersFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BulkCreationParametersFragment',
          type: {
            name: 'Composite',
            class_name: 'BulkCreationParametersFragment',
            model_properties: {
              instance_count: {
                required: false,
                serialized_name: 'instanceCount',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
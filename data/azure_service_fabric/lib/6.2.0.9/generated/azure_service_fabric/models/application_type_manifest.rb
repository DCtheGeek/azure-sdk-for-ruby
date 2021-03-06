# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Contains the manifest describing an application type registered in a
    # Service Fabric cluster.
    #
    class ApplicationTypeManifest

      include MsRestAzure

      # @return [String] The XML manifest as a string.
      attr_accessor :manifest


      #
      # Mapper for ApplicationTypeManifest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationTypeManifest',
          type: {
            name: 'Composite',
            class_name: 'ApplicationTypeManifest',
            model_properties: {
              manifest: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Manifest',
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

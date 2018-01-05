# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The virtual machine image.
    #
    class VmImage

      include MsRestAzure

      # @return [String] The name.
      attr_accessor :name

      # @return [String] The version.
      attr_accessor :version

      # @return [String] The offer.
      attr_accessor :offer

      # @return [String] The publisher.
      attr_accessor :publisher

      # @return [String] The SKU.
      attr_accessor :sku


      #
      # Mapper for VmImage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VmImage',
          type: {
            name: 'Composite',
            class_name: 'VmImage',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'version',
                type: {
                  name: 'String'
                }
              },
              offer: {
                client_side_validation: true,
                required: true,
                serialized_name: 'offer',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                client_side_validation: true,
                required: true,
                serialized_name: 'publisher',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sku',
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
# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_07_01
  module Models
    #
    # Details related to the IPv4 address configuration.
    #
    class Ipv4Config

      include MsRestAzure

      # @return [String] The IPv4 address of the network adapter.
      attr_accessor :ip_address

      # @return [String] The IPv4 subnet of the network adapter.
      attr_accessor :subnet

      # @return [String] The IPv4 gateway of the network adapter.
      attr_accessor :gateway


      #
      # Mapper for Ipv4Config class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Ipv4Config',
          type: {
            name: 'Composite',
            class_name: 'Ipv4Config',
            model_properties: {
              ip_address: {
                required: false,
                read_only: true,
                serialized_name: 'ipAddress',
                type: {
                  name: 'String'
                }
              },
              subnet: {
                required: false,
                read_only: true,
                serialized_name: 'subnet',
                type: {
                  name: 'String'
                }
              },
              gateway: {
                required: false,
                read_only: true,
                serialized_name: 'gateway',
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

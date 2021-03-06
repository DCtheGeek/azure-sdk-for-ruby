# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_04_01
  module Models
    #
    # PrivateLinkServiceConnection resource.
    #
    class PrivateLinkServiceConnection < SubResource

      include MsRestAzure

      # @return [String] The resource id of private link service.
      attr_accessor :private_link_service_id

      # @return [Array<String>] The ID(s) of the group(s) obtained from the
      # remote resource that this private endpoint should connect to.
      attr_accessor :group_ids

      # @return [String] A message passed to the owner of the remote resource
      # with this connection request. Restricted to 140 chars.
      attr_accessor :request_message

      # @return [PrivateLinkServiceConnectionState] A collection of read-only
      # information about the state of the connection to the remote resource.
      attr_accessor :private_link_service_connection_state

      # @return [String] The name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name


      #
      # Mapper for PrivateLinkServiceConnection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateLinkServiceConnection',
          type: {
            name: 'Composite',
            class_name: 'PrivateLinkServiceConnection',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              private_link_service_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateLinkServiceId',
                type: {
                  name: 'String'
                }
              },
              group_ids: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.groupIds',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              request_message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.requestMessage',
                type: {
                  name: 'String'
                }
              },
              private_link_service_connection_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateLinkServiceConnectionState',
                type: {
                  name: 'Composite',
                  class_name: 'PrivateLinkServiceConnectionState'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
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

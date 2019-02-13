# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_12_01
  module Models
    #
    # ExpressRoute Port

    # ExpressRoutePort resource definition.
    #
    class ExpressRoutePort < Resource

      include MsRestAzure

      # @return [String] The name of the peering location that the
      # ExpressRoutePort is mapped to physically.
      attr_accessor :peering_location

      # @return [Integer] Bandwidth of procured ports in Gbps
      attr_accessor :bandwidth_in_gbps

      # @return [Float] Aggregate Gbps of associated circuit bandwidths.
      attr_accessor :provisioned_bandwidth_in_gbps

      # @return [String] Maximum transmission unit of the physical port pair(s)
      attr_accessor :mtu

      # @return [ExpressRoutePortsEncapsulation] Encapsulation method on
      # physical ports. Possible values include: 'Dot1Q', 'QinQ'
      attr_accessor :encapsulation

      # @return [String] Ethertype of the physical port.
      attr_accessor :ether_type

      # @return [String] Date of the physical port allocation to be used in
      # Letter of Authorization.
      attr_accessor :allocation_date

      # @return [Array<ExpressRouteLink>] ExpressRouteLink Sub-Resources. The
      # set of physical links of the ExpressRoutePort resource
      attr_accessor :links

      # @return [Array<SubResource>] Reference the ExpressRoute circuit(s) that
      # are provisioned on this ExpressRoutePort resource.
      attr_accessor :circuits

      # @return [String] The provisioning state of the ExpressRoutePort
      # resource. Possible values are: 'Succeeded', 'Updating', 'Deleting', and
      # 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] The resource GUID property of the ExpressRoutePort
      # resource.
      attr_accessor :resource_guid

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for ExpressRoutePort class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExpressRoutePort',
          type: {
            name: 'Composite',
            class_name: 'ExpressRoutePort',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              peering_location: {
                required: false,
                serialized_name: 'properties.peeringLocation',
                type: {
                  name: 'String'
                }
              },
              bandwidth_in_gbps: {
                required: false,
                serialized_name: 'properties.bandwidthInGbps',
                type: {
                  name: 'Number'
                }
              },
              provisioned_bandwidth_in_gbps: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisionedBandwidthInGbps',
                type: {
                  name: 'Double'
                }
              },
              mtu: {
                required: false,
                read_only: true,
                serialized_name: 'properties.mtu',
                type: {
                  name: 'String'
                }
              },
              encapsulation: {
                required: false,
                serialized_name: 'properties.encapsulation',
                type: {
                  name: 'String'
                }
              },
              ether_type: {
                required: false,
                read_only: true,
                serialized_name: 'properties.etherType',
                type: {
                  name: 'String'
                }
              },
              allocation_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.allocationDate',
                type: {
                  name: 'String'
                }
              },
              links: {
                required: false,
                serialized_name: 'properties.links',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ExpressRouteLinkElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressRouteLink'
                      }
                  }
                }
              },
              circuits: {
                required: false,
                read_only: true,
                serialized_name: 'properties.circuits',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              resource_guid: {
                required: false,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                read_only: true,
                serialized_name: 'etag',
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

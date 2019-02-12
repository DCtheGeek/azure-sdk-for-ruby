# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_07_01
  module Models
    #
    # The order details.
    #
    class Order < ARMBaseModel

      include MsRestAzure

      # @return [ContactDetails] The contact details.
      attr_accessor :contact_information

      # @return [Address] The shipping address.
      attr_accessor :shipping_address

      # @return [OrderStatus] Current status of the Order.
      attr_accessor :change_status_to

      # @return [Array<OrderStatus>] List of status changes in the order.
      attr_accessor :order_history

      # @return [String] Serial number of the device.
      attr_accessor :serial_number

      # @return [Array<TrackingInfo>] Tracking information related to the
      # packages being delivered to the customer whether original or
      # replacement devices.
      attr_accessor :delivery_tracking_info

      # @return [Array<TrackingInfo>] Tracking information related to the
      # package being returned from the customer whether original or
      # replacement devices.
      attr_accessor :return_tracking_info


      #
      # Mapper for Order class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Order',
          type: {
            name: 'Composite',
            class_name: 'Order',
            model_properties: {
              id: {
                required: false,
                read_only: true,
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
              contact_information: {
                required: false,
                serialized_name: 'properties.contactInformation',
                type: {
                  name: 'Composite',
                  class_name: 'ContactDetails'
                }
              },
              shipping_address: {
                required: false,
                serialized_name: 'properties.shippingAddress',
                type: {
                  name: 'Composite',
                  class_name: 'Address'
                }
              },
              change_status_to: {
                required: false,
                serialized_name: 'properties.changeStatusTo',
                type: {
                  name: 'Composite',
                  class_name: 'OrderStatus'
                }
              },
              order_history: {
                required: false,
                read_only: true,
                serialized_name: 'properties.orderHistory',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'OrderStatusElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OrderStatus'
                      }
                  }
                }
              },
              serial_number: {
                required: false,
                read_only: true,
                serialized_name: 'properties.serialNumber',
                type: {
                  name: 'String'
                }
              },
              delivery_tracking_info: {
                required: false,
                read_only: true,
                serialized_name: 'properties.deliveryTrackingInfo',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TrackingInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TrackingInfo'
                      }
                  }
                }
              },
              return_tracking_info: {
                required: false,
                read_only: true,
                serialized_name: 'properties.returnTrackingInfo',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TrackingInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TrackingInfo'
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

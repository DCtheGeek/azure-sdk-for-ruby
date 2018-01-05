# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Commerce::Mgmt::V2015_06_01_preview
  module Models
    #
    # Indicates that this is a monetary credit offer.
    #
    class MonetaryCredit < OfferTermInfo

      include MsRestAzure


      def initialize
        @Name = "Monetary Credit"
      end

      attr_accessor :Name

      # @return The amount of credit provided under the terms of the given
      # offer level.
      attr_accessor :credit

      # @return An array of meter ids that are excluded from the given offer
      # terms.
      attr_accessor :excluded_meter_ids


      #
      # Mapper for MonetaryCredit class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Monetary Credit',
          type: {
            name: 'Composite',
            class_name: 'MonetaryCredit',
            model_properties: {
              effective_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'EffectiveDate',
                type: {
                  name: 'DateTime'
                }
              },
              Name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Name',
                type: {
                  name: 'String'
                }
              },
              credit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Credit',
                type: {
                  name: 'Number'
                }
              },
              excluded_meter_ids: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ExcludedMeterIds',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UuidElementType',
                      type: {
                        name: 'String'
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
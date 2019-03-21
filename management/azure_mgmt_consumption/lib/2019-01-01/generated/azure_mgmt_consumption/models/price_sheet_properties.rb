# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_01_01
  module Models
    #
    # The properties of the price sheet.
    #
    class PriceSheetProperties

      include MsRestAzure

      # @return [String] The id of the billing period resource that the usage
      # belongs to.
      attr_accessor :billing_period_id

      # @return The meter id (GUID)
      attr_accessor :meter_id

      # @return [MeterDetails] The details about the meter. By default this is
      # not populated, unless it's specified in $expand.
      attr_accessor :meter_details

      # @return [String] Unit of measure
      attr_accessor :unit_of_measure

      # @return Included quality for an offer
      attr_accessor :included_quantity

      # @return [String] Part Number
      attr_accessor :part_number

      # @return Unit Price
      attr_accessor :unit_price

      # @return [String] Currency Code
      attr_accessor :currency_code

      # @return [String] Offer Id
      attr_accessor :offer_id


      #
      # Mapper for PriceSheetProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PriceSheetProperties',
          type: {
            name: 'Composite',
            class_name: 'PriceSheetProperties',
            model_properties: {
              billing_period_id: {
                required: false,
                read_only: true,
                serialized_name: 'billingPeriodId',
                type: {
                  name: 'String'
                }
              },
              meter_id: {
                required: false,
                read_only: true,
                serialized_name: 'meterId',
                type: {
                  name: 'String'
                }
              },
              meter_details: {
                required: false,
                read_only: true,
                serialized_name: 'meterDetails',
                type: {
                  name: 'Composite',
                  class_name: 'MeterDetails'
                }
              },
              unit_of_measure: {
                required: false,
                read_only: true,
                serialized_name: 'unitOfMeasure',
                type: {
                  name: 'String'
                }
              },
              included_quantity: {
                required: false,
                read_only: true,
                serialized_name: 'includedQuantity',
                type: {
                  name: 'Number'
                }
              },
              part_number: {
                required: false,
                read_only: true,
                serialized_name: 'partNumber',
                type: {
                  name: 'String'
                }
              },
              unit_price: {
                required: false,
                read_only: true,
                serialized_name: 'unitPrice',
                type: {
                  name: 'Number'
                }
              },
              currency_code: {
                required: false,
                read_only: true,
                serialized_name: 'currencyCode',
                type: {
                  name: 'String'
                }
              },
              offer_id: {
                required: false,
                read_only: true,
                serialized_name: 'offerId',
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
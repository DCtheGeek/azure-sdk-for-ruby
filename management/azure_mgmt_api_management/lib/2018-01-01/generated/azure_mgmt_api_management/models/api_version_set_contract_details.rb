# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01
  module Models
    #
    # An API Version Set contains the common configuration for a set of API
    # Versions relating
    #
    class ApiVersionSetContractDetails

      include MsRestAzure

      # @return [String] Identifier for existing API Version Set. Omit this
      # value to create a new Version Set.
      attr_accessor :id

      # @return [String] Description of API Version Set.
      attr_accessor :description

      # @return [Enum] An value that determines where the API Version identifer
      # will be located in a HTTP request. Possible values include: 'Segment',
      # 'Query', 'Header'
      attr_accessor :versioning_scheme

      # @return [String] Name of query parameter that indicates the API Version
      # if versioningScheme is set to `query`.
      attr_accessor :version_query_name

      # @return [String] Name of HTTP header parameter that indicates the API
      # Version if versioningScheme is set to `header`.
      attr_accessor :version_header_name


      #
      # Mapper for ApiVersionSetContractDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiVersionSetContractDetails',
          type: {
            name: 'Composite',
            class_name: 'ApiVersionSetContractDetails',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              versioning_scheme: {
                client_side_validation: true,
                required: false,
                serialized_name: 'versioningScheme',
                type: {
                  name: 'String'
                }
              },
              version_query_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'versionQueryName',
                type: {
                  name: 'String'
                }
              },
              version_header_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'versionHeaderName',
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

# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # A FTP server Linked Service.
    #
    class FtpServerLinkedService < LinkedService

      include MsRestAzure


      def initialize
        @type = "FtpServer"
      end

      attr_accessor :type

      # @return Host name of the FTP server. Type: string (or Expression with
      # resultType string).
      attr_accessor :host

      # @return The TCP port number that the FTP server uses to listen for
      # client connections. Default value is 21. Type: integer (or Expression
      # with resultType integer), minimum: 0.
      attr_accessor :port

      # @return [FtpAuthenticationType] The authentication type to be used to
      # connect to the FTP server. Possible values include: 'Basic',
      # 'Anonymous'
      attr_accessor :authentication_type

      # @return Username to logon the FTP server. Type: string (or Expression
      # with resultType string).
      attr_accessor :user_name

      # @return [SecretBase] Password to logon the FTP server.
      attr_accessor :password

      # @return The encrypted credential used for authentication. Credentials
      # are encrypted using the integration runtime credential manager. Type:
      # string (or Expression with resultType string).
      attr_accessor :encrypted_credential

      # @return If true, connect to the FTP server over SSL/TLS channel.
      # Default value is true. Type: boolean (or Expression with resultType
      # boolean).
      attr_accessor :enable_ssl

      # @return If true, validate the FTP server SSL certificate when connect
      # over SSL/TLS channel. Default value is true. Type: boolean (or
      # Expression with resultType boolean).
      attr_accessor :enable_server_certificate_validation


      #
      # Mapper for FtpServerLinkedService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FtpServer',
          type: {
            name: 'Composite',
            class_name: 'FtpServerLinkedService',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              connect_via: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectVia',
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationRuntimeReference'
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
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParameterSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParameterSpecification'
                      }
                  }
                }
              },
              annotations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'annotations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              host: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.host',
                type: {
                  name: 'Object'
                }
              },
              port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.port',
                type: {
                  name: 'Object'
                }
              },
              authentication_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.authenticationType',
                type: {
                  name: 'String'
                }
              },
              user_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.userName',
                type: {
                  name: 'Object'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.password',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'SecretBase',
                  class_name: 'SecretBase'
                }
              },
              encrypted_credential: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.encryptedCredential',
                type: {
                  name: 'Object'
                }
              },
              enable_ssl: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.enableSsl',
                type: {
                  name: 'Object'
                }
              },
              enable_server_certificate_validation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.enableServerCertificateValidation',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end

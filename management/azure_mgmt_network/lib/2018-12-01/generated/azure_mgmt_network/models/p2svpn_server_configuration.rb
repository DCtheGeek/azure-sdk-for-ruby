# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_12_01
  module Models
    #
    # P2SVpnServerConfiguration Resource.
    #
    class P2SVpnServerConfiguration < SubResource

      include MsRestAzure

      # @return [String] The name of the P2SVpnServerConfiguration that is
      # unique within a VirtualWan in a resource group. This name can be used
      # to access the resource along with Paren VirtualWan resource name.
      attr_accessor :p2svpn_server_configuration_properties_name

      # @return [Array<VpnGatewayTunnelingProtocol>] VPN protocols for the
      # P2SVpnServerConfiguration.
      attr_accessor :vpn_protocols

      # @return [Array<P2SVpnServerConfigVpnClientRootCertificate>] VPN client
      # root certificate of P2SVpnServerConfiguration.
      attr_accessor :p2svpn_server_config_vpn_client_root_certificates

      # @return [Array<P2SVpnServerConfigVpnClientRevokedCertificate>] VPN
      # client revoked certificate of P2SVpnServerConfiguration.
      attr_accessor :p2svpn_server_config_vpn_client_revoked_certificates

      # @return [Array<P2SVpnServerConfigRadiusServerRootCertificate>] Radius
      # Server root certificate of P2SVpnServerConfiguration.
      attr_accessor :p2svpn_server_config_radius_server_root_certificates

      # @return [Array<P2SVpnServerConfigRadiusClientRootCertificate>] Radius
      # client root certificate of P2SVpnServerConfiguration.
      attr_accessor :p2svpn_server_config_radius_client_root_certificates

      # @return [Array<IpsecPolicy>] VpnClientIpsecPolicies for
      # P2SVpnServerConfiguration.
      attr_accessor :vpn_client_ipsec_policies

      # @return [String] The radius server address property of the
      # P2SVpnServerConfiguration resource for point to site client connection.
      attr_accessor :radius_server_address

      # @return [String] The radius secret property of the
      # P2SVpnServerConfiguration resource for point to site client connection.
      attr_accessor :radius_server_secret

      # @return [String] The provisioning state of the
      # P2SVpnServerConfiguration resource. Possible values are: 'Updating',
      # 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [Array<SubResource>]
      attr_accessor :p2svpn_gateways

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :p2svpn_server_configuration_properties_etag

      # @return [String] The name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated.
      attr_accessor :etag


      #
      # Mapper for P2SVpnServerConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'P2SVpnServerConfiguration',
          type: {
            name: 'Composite',
            class_name: 'P2SVpnServerConfiguration',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              p2svpn_server_configuration_properties_name: {
                required: false,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              vpn_protocols: {
                required: false,
                serialized_name: 'properties.vpnProtocols',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VpnGatewayTunnelingProtocolElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              p2svpn_server_config_vpn_client_root_certificates: {
                required: false,
                serialized_name: 'properties.p2SVpnServerConfigVpnClientRootCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'P2SVpnServerConfigVpnClientRootCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'P2SVpnServerConfigVpnClientRootCertificate'
                      }
                  }
                }
              },
              p2svpn_server_config_vpn_client_revoked_certificates: {
                required: false,
                serialized_name: 'properties.p2SVpnServerConfigVpnClientRevokedCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'P2SVpnServerConfigVpnClientRevokedCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'P2SVpnServerConfigVpnClientRevokedCertificate'
                      }
                  }
                }
              },
              p2svpn_server_config_radius_server_root_certificates: {
                required: false,
                serialized_name: 'properties.p2SVpnServerConfigRadiusServerRootCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'P2SVpnServerConfigRadiusServerRootCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'P2SVpnServerConfigRadiusServerRootCertificate'
                      }
                  }
                }
              },
              p2svpn_server_config_radius_client_root_certificates: {
                required: false,
                serialized_name: 'properties.p2SVpnServerConfigRadiusClientRootCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'P2SVpnServerConfigRadiusClientRootCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'P2SVpnServerConfigRadiusClientRootCertificate'
                      }
                  }
                }
              },
              vpn_client_ipsec_policies: {
                required: false,
                serialized_name: 'properties.vpnClientIpsecPolicies',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'IpsecPolicyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IpsecPolicy'
                      }
                  }
                }
              },
              radius_server_address: {
                required: false,
                serialized_name: 'properties.radiusServerAddress',
                type: {
                  name: 'String'
                }
              },
              radius_server_secret: {
                required: false,
                serialized_name: 'properties.radiusServerSecret',
                type: {
                  name: 'String'
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
              p2svpn_gateways: {
                required: false,
                read_only: true,
                serialized_name: 'properties.p2SVpnGateways',
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
              p2svpn_server_configuration_properties_etag: {
                required: false,
                serialized_name: 'properties.etag',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
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
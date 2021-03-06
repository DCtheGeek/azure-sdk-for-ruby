# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Encoder connect event data.
    #
    class MediaLiveEventIncomingStreamReceivedEventData

      include MsRestAzure

      # @return [String] Gets the ingest URL provided by the live event.
      attr_accessor :ingest_url

      # @return [String] Gets the type of the track (Audio / Video).
      attr_accessor :track_type

      # @return [String] Gets the track name.
      attr_accessor :track_name

      # @return [Integer] Gets the bitrate of the track.
      attr_accessor :bitrate

      # @return [String] Gets the remote IP.
      attr_accessor :encoder_ip

      # @return [String] Gets the remote port.
      attr_accessor :encoder_port

      # @return [String] Gets the first timestamp of the data chunk received.
      attr_accessor :timestamp

      # @return [String] Gets the duration of the first data chunk.
      attr_accessor :duration

      # @return [String] Gets the timescale in which timestamp is represented.
      attr_accessor :timescale


      #
      # Mapper for MediaLiveEventIncomingStreamReceivedEventData class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MediaLiveEventIncomingStreamReceivedEventData',
          type: {
            name: 'Composite',
            class_name: 'MediaLiveEventIncomingStreamReceivedEventData',
            model_properties: {
              ingest_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'ingestUrl',
                type: {
                  name: 'String'
                }
              },
              track_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'trackType',
                type: {
                  name: 'String'
                }
              },
              track_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'trackName',
                type: {
                  name: 'String'
                }
              },
              bitrate: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'bitrate',
                type: {
                  name: 'Number'
                }
              },
              encoder_ip: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'encoderIp',
                type: {
                  name: 'String'
                }
              },
              encoder_port: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'encoderPort',
                type: {
                  name: 'String'
                }
              },
              timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'timestamp',
                type: {
                  name: 'String'
                }
              },
              duration: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'duration',
                type: {
                  name: 'String'
                }
              },
              timescale: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'timescale',
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

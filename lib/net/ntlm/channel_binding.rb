module Net
  module NTLM
    class ChannelBinding

      # Creates a ChannelBinding used for Extended Protection Authentication
      # @see http://blogs.msdn.com/b/openspecification/archive/2013/03/26/ntlm-and-channel-binding-hash-aka-exteneded-protection-for-authentication.aspx
      #
      # @param outer_channel [OpenSSL::X509::Certificate] Server certificate securing
      #   the outer TLS channel
      # @return [NTLM::ChannelBinding] A ChannelBinding holding a token that can be
      #   embedded in a {Type3} message
      def self.create(outer_channel)

      end

      # Returns a channel binding hash acceptable for use as a AV_PAIR MsvAvChannelBindings
      #   field value as specified in the NTLM protocol
      #
      # @return [String] ASCII_8BIT encoded byte string
      def channel_binding_token

      end
    end
  end
end

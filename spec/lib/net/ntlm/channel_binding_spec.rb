require 'spec_helper'

describe Net::NTLM::ChannelBinding do
  let(:certificate_path) { File.join(spec_pathname, 'support/certificates/sha_256_hash.pem') }
  let(:cert_hash) { "\x04\x0E\x56\x28\xEC\x4A\x98\x29\x91\x70\x73\x62\x03\x7B\xB2\x3C" }

  subject { Net::NTLM::ChannelBinding.create(certificate_path) }

  describe '#channel_binding_token' do

  	it 'returns the correct hash' do
  		expect(subject.channel_binding_token).to eq cert_hash.force_encoding(Encoding::ASCII_8BIT)
  	end
  end
end

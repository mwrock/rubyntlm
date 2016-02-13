require 'spec_helper'

describe Net::NTLM::ChannelBinding do
  let(:certificates_path) { 'spec/support/certificates' }
  let(:sha_256_path) { File.join(certificates_path, 'sha_256_hash.pem') }
  let(:sha_256_cert) { OpenSSL::X509::Certificate.new(File.read(sha_256_path)) }  
  let(:cert_hash) { "040e5628ec4a982991707362037bb23c" }

  subject { Net::NTLM::ChannelBinding.create(sha_256_cert) }

  describe '#channel_binding_token' do

  	it 'returns the correct hash' do
      puts subject.application_data.length
  		expect(subject.channel_binding_token).to eq cert_hash
  	end
  end
end

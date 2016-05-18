describe NyulibrariesErrors::ErrorsHelper do
  helper NyulibrariesErrors::ErrorsHelper

  let(:locale) { "en" }

  describe '#meta' do
    subject { meta_tags }
    it { is_expected.to include '<meta charset="utf-8" />' }
    it { is_expected.to include '<meta content="width=device-width, initial-scale=1.0" name="viewport" />' }
    it { is_expected.to include '<meta content="True" name="HandheldFriendly" />' }
    it { is_expected.to include '<meta content="on" http-equiv="cleartype" />' }
    it { is_expected.to include '<link href="https://library.nyu.edu/favicon.ico" rel="shortcut icon" type="image/vnd.microsoft.icon" />' }
  end

  describe '#application_title' do
    before { I18n.locale = locale }
    subject { application_title }
    context 'when the client application does not define an application title' do
      let(:locale) { "en" }
      it { is_expected.to eql 'BobCat' }
    end
    context 'when the client application does define an nyulibrarues_errors application title' do
      let(:locale) { "en2" }
      it { is_expected.to eql 'NYULibrariesErrors Title' }
    end
    context 'when the client application does define an application wide application title' do
      let(:locale) { "en3" }
      it { is_expected.to eql 'Application Title' }
    end
  end

  describe '#has_links?' do
    before { I18n.locale = locale }
    let(:error) { '500' }
    subject { has_links?(error) }
    context 'when there are no suggested links defined for nyulibraries_errors' do
      let(:locale) { "en" }
      it { is_expected.to eql true }
    end
    context 'when there are general suggested links defined for nyulibraries_errors' do
      let(:locale) { "en2" }
      it { is_expected.to eql true }
    end
    context 'when there are specific suggested links defined for this error' do
      let(:locale) { "en3" }
      it { is_expected.to eql true }
    end
  end

  describe '#links_for_error' do
    before { I18n.locale = locale }
    let(:error) { '500' }
    subject { links_for_error(error) }
    context 'when there are no suggested links defined for nyulibraries_errors' do
      let(:locale) { "en" }
      it { is_expected.to include(:"Ask a Librarian" => "https://library.nyu.edu/ask/") }
    end
    context 'when there are general suggested links defined for nyulibraries_errors' do
      let(:locale) { "en2" }
      it { is_expected.to include(:"Test Link"=>"example.com") }
    end
    context 'when there are specific suggested links defined for this error' do
      let(:locale) { "en3" }
      it { is_expected.to include(:"500 Test Link"=>"example.com") }
    end
  end

  describe '#additional_links_for_error' do
    before { I18n.locale = locale }
    let(:error) { '500' }
    subject { additional_links_for_error(error) }
    context 'when there are no additional links defined for nyulibraries_errors' do
      let(:locale) { "en" }
      it { is_expected.to be nil }
    end
    context 'when there are general additional links defined for nyulibraries_errors' do
      let(:locale) { "en2" }
      it { is_expected.to include(:"Addl Test Link"=>"example.com") }
    end
    context 'when there are specific additional links defined for this error' do
      let(:locale) { "en3" }
      it { is_expected.to include(:"500 Addl Test Link"=>"example.com") }
    end
  end
end

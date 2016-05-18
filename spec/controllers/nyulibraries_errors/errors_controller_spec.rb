describe NyulibrariesErrors::ErrorsController do
  routes { NyulibrariesErrors::Engine.routes }
  describe '#internal_server_error' do
    before { get :internal_server_error }
    subject { response.status }
    it { is_expected.to eql 500 }
    it "renders the internal server error template" do
      expect(subject).to render_template("nyulibraries_errors/errors/internal_server_error")
    end
  end
  describe '#not_found' do
    before { get :not_found }
    subject { response.status }
    it { is_expected.to eql 404 }
    it "renders the not found error template" do
      expect(subject).to render_template("nyulibraries_errors/errors/not_found")
    end
  end
  describe '#unacceptable' do
    before { get :unacceptable }
    subject { response.status }
    it { is_expected.to eql 422 }
    it "renders the unacceptable error template" do
      expect(subject).to render_template("nyulibraries_errors/errors/unacceptable")
    end
  end
end

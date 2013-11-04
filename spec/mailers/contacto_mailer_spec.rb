require "spec_helper"

describe ContactoMailer do
  describe "mensaje_recibido" do
    let(:mail) { ContactoMailer.mensaje_recibido }

    it "renders the headers" do
      mail.subject.should eq("Mensaje recibido")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end

require "spec_helper"

describe Lita::Handlers::Morin, lita_handler: true do
  it { is_expected.to route("morin") }
  it { is_expected.to route("morin").to(:show_quote) }

  it { is_expected.to route("Morin") }
  it { is_expected.to route("Morin").to(:show_quote) }

  it "can show a Dave Morin quote when his name is mentioned" do
    send_message("I wish I was Dave Morin")
    expect(Lita::Handlers::Morin::TWATTERY).to include(replies.last)
  end
end

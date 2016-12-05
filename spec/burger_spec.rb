require "spec_helper"
require "burger"

describe Burger do
  describe "#apply_ketchup" do
    subject { burger }
    before  { burger.apply_ketchup }

    context "with ketchup" do
      let(:burger) { Burger.new(ketchup: true) }

      it { is_expected.to have_ketchup_on_it }
    end

    context "without ketchup" do
      let(:burger) { Burger.new(:ketchup => false) }

      it { is_expected.not_to have_ketchup_on_it } # predicate-matchers
    end
  end
end

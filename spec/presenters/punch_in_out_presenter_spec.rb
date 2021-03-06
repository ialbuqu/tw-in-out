require 'spec_helper'
describe PunchInOutPresenter do
  context "time formating" do
    context "when in out is completed" do
      in_out = Given.a_in_out_presenter_with punch_in: "09:00", punch_out: "12:30"
      it { in_out.hours.should == 3.5  }
      it { in_out.in.should == "09:00"  }
      it { in_out.out.should == "12:30"  }
    end
    context "when in out is not completed" do
      in_out = Given.a_in_out_presenter_with punch_in: "09:00"
      it { in_out.hours.should == 0.0  }
      it { in_out.in.should == "09:00"  }
      it { in_out.out.should == ""  }
    end
  end
end

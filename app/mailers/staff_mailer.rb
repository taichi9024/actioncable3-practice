class StaffMailer < ApplicationMailer
    default from: "taichi@hoge.com"

    def send_message_to_user(staff)
      @staff = staff
      mail to: @staff.email,
           subject: "メールの件名が入ります"    
    end
end

class OrderMailer < ActionMailer::Base
  default from: 'no-reply@dummy.shop'

  def order_email(user, order)
    @user = user
    @admin_users = AdminUser.all
    @order = order
    recipients = [@user.email]
    @admin_users.each do |f|
      recipients << f.email
    end
    mail(to: recipients, subject: 'New order')
  end
end

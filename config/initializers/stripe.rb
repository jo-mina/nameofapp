if Rails.env.production?
  Rails.configuration.stripe = {
    #:publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    #:secret_key => ENV['STRIPE_SECRET_KEY']
    :publishable_key => 'pk_test_A3Wem64i7EFTWlCDrFPBcFav',
    :secret_key => 'sk_test_RdjXiLiuLMKpHBVFgjY4z5z1'
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_A3Wem64i7EFTWlCDrFPBcFav',
    :secret_key => 'sk_test_RdjXiLiuLMKpHBVFgjY4z5z1'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]




Rails.configuration.stripe = {
  publishable_key: ENV['pk_test_JXtDUbkLdGhkhPEba1WpAP1G00w9JNw998'],
  secret_key:      ENV['sk_test_rJo5fTpADMwRf3ZYJdzwZMLH00nCddPXRsY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

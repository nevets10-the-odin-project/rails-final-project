LetterOpener.configure do |config|
  # To overrider the location for message storage.
  # Default value is `tmp/letter_opener`
  config.location = Rails.root.join('tmp', 'my_mails')
end

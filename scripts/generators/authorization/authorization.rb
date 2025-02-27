class AuthorizationScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/authorization/authorization'.freeze
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/authorization/authorization'.freeze
  TABLE_NAME = 'aim_authorizations'.freeze

  FIELDS = [
    'created_at:datetime',
    'updated_at:datetime',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  # If you ever want to print or access the command outside the class:
  attr_reader :command
end

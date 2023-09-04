# frozen_string_literal: true

class RoleScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/core/role'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/core/role'
  TABLE_NAME = 'roles'

  FIELDS = [
    'name:string',
    'created_at:datetime',
    'updated_at:datetime',
    'usage:string',
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

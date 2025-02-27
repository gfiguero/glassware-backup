# frozen_string_literal: true

class MaintenanceTaskScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'MaintenanceTask'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_maintenance_tasks'

  FIELDS = [
    'name:string',
    'code:string',
    'duration:float',
    'required_personal:integer',
    'properties:hstore',
    'created_at:datetime',
    'updated_at:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end

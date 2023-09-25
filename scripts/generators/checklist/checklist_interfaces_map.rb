# frozen_string_literal: true

class ChecklistInterfaceMapScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'ChecklistInterfaceMap'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_checklist_interfaces_maps'

  FIELDS = [
    'checklist_interface_id:integer',
    'map_id:integer',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end

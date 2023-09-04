# frozen_string_literal: true

class ChecklistStepScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/checklist/ChecklistStep'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/checklist/ChecklistStep'
  TABLE_NAME = 'aim_checklist_steps'

  FIELDS = [
    'checklist_step_interface_id:integer',
    'checklist_id:integer',
    'checklist_grade_option_id:integer',
    'comments:text',
    'grade:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'answered_at:datetime',
    'skipped:boolean',
    'incident_slug:string',
    'infrastructure_id:integer',
    'forced_grade:boolean',
    'grade_weight:float',
    'slug:string',
    'grade_weight_percentage:float',
    'checklist_section_id:integer',
    'absolute_grade_weight_percentage:float',
    'absolute_grade_percentage:float'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end

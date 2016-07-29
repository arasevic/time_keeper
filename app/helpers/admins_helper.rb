module AdminsHelper

  def generate_employee_roster(work_group)
        result = []
        work_group.employees.each do |employee|
          if employee.contractor?
            text = ""
            text += employee.first_name + " " + employee.last_name
            val = employee.id
            temp = [text,val]
            result << temp
          end
        end
        result
    end
end

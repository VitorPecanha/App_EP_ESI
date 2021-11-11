require 'date'

current_time = DateTime.now ()

current_time = current_time.strftime ("%d/%m/%Y %H:%M")
registro_da_rega_total = "Última rega em todos: #{current_time}"
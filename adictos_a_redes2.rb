# Se pide crear el programa adictos_a_redes2
# con un método llamado scan_addicts2 que
# reciba un arreglo con los minutos de uso y
# como resultado entregue un nuevo arreglo
# cambiando todas las medidas inferiores a
# 90 minutos como 'bien', entre 90 y 180 como
# 'mejorable' y todas las mayores o iguales a
# 180 como 'mal'.

def scan_addicts2(arr)
    #validar que sea array
    if arr.class == Array 
        # <90 bien
        # Entre 90 y 180 como 'mejorable'
        # >=180 'mal'
        # definir array nuevo para guardar resultados
        new_arr = []
        # recorrer arr entregado para llenar nuevo array
        num = arr.count
        num.times do |i|
            next if arr[i].class!=Integer
            if arr[i] <90
                new_arr << "bien"
            elsif arr[i] < 180 and arr[i] > 90
                new_arr << "mejorable"
            elsif arr[i] >=180
                new_arr.push("mal")
            end
        end
        # debemos hacer un return explicito
        return new_arr
    else    
        return "pasame array no un #{arr.class}"
    end

end

arr = [23, 89, 90, 120, 240, 180, 179]

print scan_addicts2(arr)
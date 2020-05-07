#Captura Opcion de Usuario
op_usuario = ARGV[0].chomp
#Opcion de CPU
op_cpu = rand(0..2)
#variable de Respuesta
respuesta = nil
=begin 
    0 = piedra
    1 = papel
    2 = tijera
=end

#Evaluacion de opcion de usuario
if op_usuario.upcase == 'PIEDRA' || op_usuario.upcase == 'PAPEL' || op_usuario.upcase == 'TIJERA'
    #Variable que almacena el nombre de la opcion de la cpu
    op_cpu_nom = nil    
    #asignar valor numerico a seleccion de CPU
    if op_cpu == 0
        op_cpu_nom = 'piedra'   
    elsif op_cpu == 1
        op_cpu_nom = 'papel'   
    else
        op_cpu_nom = 'tijera'   
    end
    #evaluar las opciones segun reglas del juego
    if op_usuario.upcase == op_cpu_nom.upcase #empate
        respuesta = "Computador juega #{op_cpu_nom} \nEmpataste"
    elsif op_usuario.upcase == 'PIEDRA' 
        if op_cpu_nom.upcase == 'PAPEL'
            respuesta = "Computador juega #{op_cpu_nom} \nPerdiste"
        else 
            respuesta = "Computador juega #{op_cpu_nom} \nGanaste"
        end        
    elsif op_usuario.upcase == 'PAPEL' 
        if op_cpu_nom.upcase == 'TIJERA'
            respuesta = "Computador juega #{op_cpu_nom} \nPerdiste"
        else 
            respuesta = "Computador juega #{op_cpu_nom} \nGanaste"
        end        
    else
        if op_cpu_nom.upcase == 'PIEDRA'
            respuesta = "Computador juega #{op_cpu_nom} \nPerdiste"
        else 
            respuesta = "Computador juega #{op_cpu_nom} \nGanaste"
        end      
    end    
else
    #Mensaje Invalido
    respuesta = "Argumento inválido: Debe ser piedra, papel o tijera."
end

#Respuesta 
puts respuesta
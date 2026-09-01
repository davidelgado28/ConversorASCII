program numero_ascii
    implicit none
    integer :: numero
    character(len=1) :: letra

    write(*, '(A)', advance='no') 'Digite um numero (0-127): '
    read(*, *) numero

    if (numero < 0 .or. numero > 127) then
        write(*, *) 'Valor invalido! Use 0 a 127.'
    else
        letra = achar(numero)
        write(*, *) 'ASCII: ', letra
    end if

end program numero_ascii

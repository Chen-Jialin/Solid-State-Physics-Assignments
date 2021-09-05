program main
    implicit none
    real(8), parameter :: R = 13.6
    integer :: Znuc, n, Za
    real(8) :: Ea, Eb, Zb

    open(unit = 1,file = 'approxa.txt',status = 'unknown')
    open(unit = 2,file = 'approxb.txt',status = 'unknown')
    do Znuc = 1,21
        if ((Znuc == 1) .or. (Znuc == 2)) then
            n = 1
            Za = Znuc
            Zb = dble(Znuc) / 2.d0 + 1.d0 / 2.d0
        elseif ((Znuc >= 3) .and. (Znuc <= 10)) then
            n = 2
            Za = Znuc - 2
            Zb = dble(Znuc) / 2.d0 - 1.d0 / 2.d0
        elseif ((Znuc >= 11) .and. (Znuc <= 18)) then
            n = 3
            Za = Znuc - 10
            Zb = dble(Znuc) / 2.d0 - 9.d0 / 2.d0
        elseif ((Znuc == 19) .or. (Znuc == 20)) then
            n = 4
            Za = dble(Znuc) - 18
            Zb = dble(Znuc) / 2.d0 - 19.d0 / 2.d0
        else
            n = 4
            Za = 3
            Zb = 3.d0 / 2.d0
        end if
        Ea = dble(Za)**2 * R / dble(n)**2
        Eb = dble(Zb)**2 * R / dble(n)**2
        write(1,'(i3,f10.4)') Znuc, Ea
        write(2,'(i3,f10.4)') Znuc, Eb
    end do
    close(1)
    close(2)
end program main

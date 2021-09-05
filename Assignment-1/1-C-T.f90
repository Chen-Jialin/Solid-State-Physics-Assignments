program main
    implicit none
    integer, parameter :: dp = selected_real_kind(8)
    real(dp), parameter :: kB = 1.380649d-23, hbar = 1.05457266d-34, omega = 1.d13
    real(dp) :: T, beta, x, y

    open(unit = 1,file = '1-C-T.txt',status = 'unknown')
    T = 0.0d0
    do while (T <= 300)
        beta = 1 / (kB * T)
        x = kB * T / (hbar * omega)
        y = (beta * hbar * omega)**2 * exp(beta * hbar * omega) / (exp(beta * hbar * omega) - 1)**2
        write(1,"(2f20.8)") x, y
        T = T + .1d0
    end do
    close(1)
end program main

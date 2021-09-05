program main
    implicit none
    integer, parameter :: dp = selected_real_kind(8)
    real(dp), parameter :: pi = acos(-1.d0)
    real(dp) :: epsilonA = 1.d0, epsilonB = 4.d0, tAA = .5d0, tBB = .25d0, k, EA, EB

    open(unit = 1, file = '4-E-k.txt', status = 'unknown')
    k = -pi
    do while (k <= pi)
        EA = epsilonA - 2.d0 * tAA * cos(k)
        EB = epsilonB - 2.d0 * tBB * cos(k)
        write(1,'(3f20.8)') k, EA, EB
        k = k + 1.d-2
    end do
    close(1)
end program main
program main
    implicit none
    integer, parameter :: dp = selected_real_kind(8)
    real(dp), parameter :: pi = acos(-1.d0)
    real(dp) :: epsilonA = 1.d0, epsilonB = 2.d0, t = 5.d-1, k, E1, E2

    ! reduced zone scheme
    open(unit = 1, file = '3-E-k-ReducedZoneScheme.txt', status = 'unknown')
    k = -pi
    do while(k <= pi)
        ! acoustic mode
        E1 = ((epsilonA + epsilonB) - sqrt((epsilonA - epsilonB)**2 + 4.d0 * (2.d0 + 2.d0 * cos(k)))) / 2.d0
        ! optical mode
        E2 = ((epsilonA + epsilonB) + sqrt((epsilonA - epsilonB)**2 + 4.d0 * (2.d0 + 2.d0 * cos(k)))) / 2.d0
        write(1,'(3f20.8)') k, E1, E2
        k = k + 1.d-2
    end do
    close(1)

    ! extended zone scheme
    ! optical mode
    open(unit = 2, file = '3-E-k-ExtendedZoneScheme-Optical.txt', status = 'unknown')
    k = 0.d0
    do while (k <= pi)
        E1 = ((epsilonA + epsilonB) + sqrt((epsilonA - epsilonB)**2 + 4.d0 * (2.d0 + 2.d0 * cos(-2.d0 * pi + k)))) / 2.d0
        E2 = ((epsilonA + epsilonB) + sqrt((epsilonA - epsilonB)**2 + 4.d0 * (2.d0 + 2.d0 * cos(pi + k)))) / 2.d0
        write(2,'(4f20.8)') -2.d0 * pi + k, E1, pi + k, E2
        k = k + 1.d-2
    end do
    close(2)
end program main

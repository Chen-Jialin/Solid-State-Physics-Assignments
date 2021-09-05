program main
    implicit none
    integer, parameter :: dp = selected_real_kind(8)
    real(dp), parameter :: pi = acos(-1.d0), m1 = 2.d0, m2 = 1.d0
    real(dp) :: k, omega1, omega2, dk

    dk = 1.d-2
    ! reduced zone scheme
    open(unit = 1, file = '1-ReducedZoneScheme.txt', status = 'unknown')
    k = -pi
    do while (k <= pi)
        ! acoustic mode
        omega1 = sqrt(1.d0 / m1 / m2 * ((m1 + m2) - sqrt((m1 + m2)**2 - 4.d0 * m1 * m2 * sin(k / 2.d0)**2)))
        ! optical mode
        omega2 = sqrt(1.d0 / m1 / m2 * ((m1 + m2) + sqrt((m1 + m2)**2 - 4.d0 * m1 * m2 * sin(k / 2.d0)**2)))
        write(1,'(3f20.8)') k, omega1, omega2
        k = k + dk
    end do
    close(1)

    ! extended zone scheme
    ! optical mode
    open(unit = 2, file = '1-ExtendedZoneSchemeOpticalMode.txt', status = 'unknown')
    k = 0.d0
    do while (k <= pi)
        omega1 = sqrt(1.d0 / m1 / m2 * ((m1 + m2) + sqrt((m1 + m2)**2 - 4.d0 * m1 * m2 * sin((-2.d0 * pi - k) / 2.d0)**2)))
        omega2 = sqrt(1.d0 / m1 / m2 * ((m1 + m2) + sqrt((m1 + m2)**2 - 4.d0 * m1 * m2 * sin((pi + k) / 2.d0)**2)))
        write(2,'(4f20.8)') -2.d0 * pi + k, omega1, pi + k, omega2
        k = k + dk
    end do
    close(2)
    ! acoustic mode
    open(unit = 3, file = '1-ExtendedZoneSchemeAcousticMode.txt', status = 'unknown')
    k = -pi
    do while (k <= pi)
        omega1 = sqrt(1.d0 / m1 / m2 * ((m1 + m2) - sqrt((m1 + m2)**2 - 4.d0 * m1 * m2 * sin(k / 2.d0)**2)))
        write(3,'(2f20.8)') k, omega1
        k = k + dk
    end do
    close(3)
end program main

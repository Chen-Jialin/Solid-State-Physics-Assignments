program main
    implicit none
    integer, parameter :: dp = selected_real_kind(8)
    real(dp), parameter :: pi = acos(-1.d0), NA = 6.02214076d23, kB = 1.380649d-23
    integer(1) :: i
    real(dp) :: T(7) = (/.1d0, 1.d0, 5.d0, 8.d0, 10.d0, 15.d0, 20.d0/)
    real(dp) :: C(7) = (/8.5d-7, 8.6d-4, 1.2d-1, 5.9d-1, 1.1d0, 2.8d0, 6.3d0/)
    real(dp) :: TTSum = 0.d0, TCSum = 0.d0, result

    T = T**3
    do i = 1,7
        TTSum = TTSum + T(i)**2
        TCSum = TCSum + T(i) * C(i)
    end do
    result = (12 * pi**4 * NA * kB / (5 * (TCSum / TTSum)))**(1.d0/3.d0)
    write(*,*) result
end program main

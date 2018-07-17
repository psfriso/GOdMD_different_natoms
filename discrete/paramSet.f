 MODULE paramSet
     use stepPotentials
! Input param
!
   real, save :: &

      temp = 300., &
      tmin = 1.e-22*1.e15
  integer, save :: &
      isolv = 1, &
      nbloc = 5000, &
      idab = 1, &
      igoab = 1, &
      iwr = 1, &
      seed = 2381, &
      TCALC = 1, & ! E Const 0,  T Const 1, TBany 2
      outformat = 0, &
      idims = 0, &
      rst=0, &
      rstv=0
  real*8, save :: &
      tsnap = 500., &
      tcorr = 100., &
      tact = 5., &
      trect = 100., &
      tini = 0.

! Parameters - dont modify them
real :: xbeta=5.0000 !2
INTEGER , PARAMETER :: NEVECS=5
real *8, parameter :: dtol=0.30000
real *8 :: rcut2GO4=0.0
real *8 :: ssectol=dble(0.035)
REAL , PARAMETER :: DEGO_BASE=0.03 ! 5 porciento del pozo a sacar en cada metaDMD
INTEGER:: natomMin=50
LOGICAL :: StartMD=.FALSE.
real :: scalFactor=0.300


! Parameters - feel free to explore them
real,save :: acceptance=0.77 ! DEFAULT 0.65 NO MODIFICAR MUCHO. (0.5-0.8)
real :: goener=0.25
real :: sigmago=0.1000
real :: wellWidth=0.1300            ! DEFAULT 0.13
real :: rgyrPercent=0.500           ! DEFAULT=0.52
real *8 :: rcut1= 70.00 !70.00 was the original value, 100 works better. switching back to 70 for consitiency with previous results
real *8 :: mxRcut4go=12.0
real :: minEnerWell=0.10   !*8.314         ! DEFAULT 0.05
INTEGER :: error_evo_size=100      ! 20 DEFAULT number of rmsd point to use in linear regression
INTEGER :: Ener_evo_size=120         ! DEFAULT 15
real*8 :: hstep=1.0
REAL :: errorAcceptable=1.00 ! 1.25 should be the value
INTEGER :: nskip=5
REAL :: sigmaFake=0.02
real:: RMSD_DIF=0.01 ! A
real*8::rcontacts=50.0d0
LOGICAL :: writingStandard = .TRUE.

CONTAINS
!===============================================================================
 subroutine readInputParamSet (unit_i)
   integer, intent(IN) :: unit_i
!
   namelist /input/ tsnap,temp,seed,nbloc,scalFactor,Ener_evo_size,&
   Ener_evo_size,nskip,tact,errorAcceptable,writingStandard,fileref,natomMin
!
   read (unit_i, INPUT)
   ! checking
   if (TRECT.gt.TSNAP) TRECT = TSNAP
   if (TCORR.gt.TRECT) TCORR = TRECT
   if (TACT.gt.TCORR)  TACT = TCORR

 end subroutine readInputParamSet

 END MODULE paramSet

!auto_modi:spll_carbon_evol.D
MODULE MODI_CARBON_EVOL
INTERFACE
    SUBROUTINE CARBON_EVOL(IO, KK, PK, PEK, DEK, PTSTEP, PRHOA, PRESP_BIOMASS_INST )
USE MODD_ISBA_OPTIONS_n, ONLY : ISBA_OPTIONS_t
USE MODD_ISBA_n, ONLY : ISBA_K_t, ISBA_P_t, ISBA_PE_t
USE MODD_DIAG_EVAP_ISBA_n, ONLY : DIAG_EVAP_ISBA_t
IMPLICIT NONE
TYPE(ISBA_OPTIONS_t), INTENT(INOUT) :: IO
TYPE(ISBA_K_t), INTENT(INOUT) :: KK
TYPE(ISBA_P_t), INTENT(INOUT) :: PK
TYPE(ISBA_PE_t), INTENT(INOUT) :: PEK
TYPE(DIAG_EVAP_ISBA_t), INTENT(INOUT) :: DEK
REAL, INTENT(IN)             :: PTSTEP                 ! time step
REAL, DIMENSION(:), INTENT(IN)        :: PRHOA         ! air density (kg/m3)
REAL, DIMENSION(:,:), INTENT(IN)      :: PRESP_BIOMASS_INST ! instantaneous respiration of biomass (kgCO2/kgair m/s)
END SUBROUTINE CARBON_EVOL
END INTERFACE
END MODULE MODI_CARBON_EVOL

#ifndef __DEFINITIONS__
#define __DEFINITIONS__

// Pi and Pi/2 constants
#include <math.h>
#define Pi M_PI
#define HALF_PI 1.57079632679489655799898173427209258079528808593750

// Debug switch


// Declaration of the system size; i.e., the number of equations
#define SYSTEM_SIZE 5
#define DATA_SIZE 2

// Declaration of the image parameters: number of rows and columns, as well as
// the total amount of pixels.
#define IMG_ROWS 500
#define IMG_COLS 500
#define NUM_PIXELS 250000


// Bisect's constants
#define BISECT_TOL 0.000001
#define BISECT_MAX_ITER 100

// Butcher's tableau coefficients
#define A21 (1./5.)

#define A31 (3./40.)
#define A32 (9./40.)

#define A41 (44./45.)
#define A42 (- 56./15.)
#define A43 (32./9.)

#define A51 (19372./6561.)
#define A52 (- 25360./2187.)
#define A53 (64448./6561.)
#define A54 (- 212./729.)

#define A61 (9017./3168.)
#define A62 (- 355./33.)
#define A63 (46732./5247.)
#define A64 (49./176.)
#define A65 (- 5103./18656.)

#define A71 (35./384.)
#define A72 (0)
#define A73 (500./1113.)
#define A74 (125./192.)
#define A75 (- 2187./6784.)
#define A76 (11./84.)

#define C2 (1./5.)
#define C3 (3./10.)
#define C4 (4./5.)
#define C5 (8./9.)
#define C6 (1)
#define C7 (1)

#define E1 (71./57600.)
#define E2 (0)
#define E3 (- 71./16695.)
#define E4 (71./1920.)
#define E5 (- 17253./339200.)
#define E6 (22./525.)
#define E7 (- 1./40.)

// Black hole's spin and its square
#define __a  0.2647333333333333
#define __a2 0.07008373777777777

// Camera constants
#define __d 20
#define __camR 40.0
#define __camTheta 1.413717694115407
#define __camPhi 0
#define __camBeta 0

// Black hole constants
#define __b1 -5.70774830922
#define __b2 4.643138941

// Kerr constants
#define __ro 40.0000214381
#define __delta 1600.0700837377778
#define __pomega 39.508405133
#define __alpha 1.0
#define __omega 8.27254544207e-06

// Camera rotation angles
#define __pitch 0.0
#define __roll 0.0
#define __yaw -0.06

// SolverRK45 parameters
#define rtoli 1e-06
#define atoli 1e-12
#define safe 0.9
#define safeInv 1.1111111111111112
#define fac1 0.2
#define fac1_inverse 5.0
#define fac2 10.0
#define fac2_inverse 0.1
#define beta 0.04
#define uround 2.3e-16
#define MAX_RESOL -2.0
#define MIN_RESOL -0.1

// SolverRK4 parameters
#define SOLVER_DELTA 0.03125
#define SOLVER_EPSILON 1e-06

// Convention for ray's status
#define HORIZON 2
#define DISK 1
#define SPHERE 0

// Black hole parameters: horizon radius and disk definition
#define horizonRadius 1.96432165911
#define innerDiskRadius 0
#define outerDiskRadius 20

// Definition of the data type
typedef double Real;

// Enumerate to make the communication between SolverRK4(5) and its callers
// easier
typedef enum solverStatus{
    SOLVER_SUCCESS,
    SOLVER_FAILURE
} SolverStatus;

/**
 * Returns the sign of `x`; i.e., it returns +1 if x >= 0 and -1 otherwise.
 * @param  x The number whose sign has to be returned
 * @return   Sign of `x`, considering 0 as positive.
 */
__device__ inline int sign(Real x){
    return x < 0 ? -1 : +1;
}

#endif // __DEFINITIONS__
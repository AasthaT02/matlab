MATLAB PRACTICAL EXAM - SHORT VERSION
=====================================

This pack keeps 3 representative sums per practical file. The examples
cover the main method/logic so you can adapt the same pattern to similar
questions. Run each .m file in MATLAB. Laplace files require Symbolic Math
Toolbox; ODE and numerical integration use MATLAB built-in functions.

1) NUMERICAL INTEGRATION
Logic:
- Split [a,b] into n equal subintervals; h=(b-a)/n.
- Trapezoidal: h*[y0/2 + interior ordinates + yn/2].
- Simpson 1/3: h/3*[y0+yn + 4(odd interior) + 2(even interior)].
- Simpson requires an even n.
Expected values (n=10):
  1/(1+x^2), 0 to 1: Trapezoidal 0.7849814972; Simpson 0.7853981535;
      integral 0.7853981634
  sin(x), 0 to pi: Trapezoidal 1.9835235375; Simpson 2.0001095173;
      integral 2.0000000000
  x^2, 0 to 2: Trapezoidal 2.6800000000; Simpson 2.6666666667;
      integral 2.6666666667

2) LAPLACE TRANSFORM
Logic: declare symbolic t,s and use laplace(f,t,s).
Expected symbolic answers:
  sinh(a*t) -> a/(s^2-a^2)
  exp(a*t)*cos(b*t) -> (s-a)/((s-a)^2+b^2)
  5-3*t-2*exp(-t) -> 5/s - 3/s^2 - 2/(s+1)

3) INVERSE LAPLACE TRANSFORM
Logic: declare symbolic s,t and use ilaplace(F,s,t).
Expected answers:
  3/(s+4) -> 3*exp(-4*t)
  s/(s^2+9) -> cos(3*t)
  1/(s*(s+2)) -> (1-exp(-2*t))/2

4) LINEAR SYSTEMS
Logic:
- Backslash: x=A\b directly solves AX=b.
- LU: [L,U,P]=lu(A), then x=U\(L\(P*b)).
- Gauss-Seidel: update each unknown using newest available values until
  the infinity-norm change is below tolerance.
Expected solutions:
  Sum 1: [1.04326923; 2.26923077; -1.08173077]
  Sum 2: [1.34653465; 1.47524752; 2.13861386]
  Sum 3: [0.97222222; 1.08333333; 1.19444444]

5) MATRIX OPERATIONS
Logic:
- A+B and A-B require same-sized matrices.
- A*B is matrix multiplication (columns of A = rows of B).
- A.' gives transpose; det(A), rank(A), inv(A) give determinant,
  rank and inverse. An inverse exists only when det(A) is nonzero.
For the matrices in the script:
  det(A) = 38; rank(A) = 3.
  A+B = [12 13 16; 11 10 11; 10 13 14]
  A-B = [-2 3 2; -3 0 5; 4 3 4]
  A*B = [118 110 104; 87 85 83; 132 120 118]

6) ODE45
Logic:
- ode45 solves a first-order differential equation numerically.
- For a higher-order equation, define Y=[y;y';...] and rewrite it as
  a first-order system.
Examples:
  y'=-y, y(0)=1
  y''+y=0, y(0)=1, y'(0)=0
  y'''+y=0, y(0)=1, y'(0)=0, y''(0)=0
The script plots y(t) for each example. These are numerical plots, not
fixed printed numeric outputs.

7) REGULA FALSI
Logic:
- Choose [a,b] with f(a)*f(b)<0.
- Compute c=(a*f(b)-b*f(a))/(f(b)-f(a)).
- Replace the endpoint that has the same sign as f(c).
- Stop when |f(c)| is smaller than tolerance.
Expected roots:
  x^3-x-2 = 0 on [1,2]: 1.5213797068
  cos(x)-x = 0 on [0,1]: 0.7390851332
  x^2-2 = 0 on [1,2]: 1.4142135624

Exam tip:
Understand the three examples in each file. In the exam, usually you only
need to replace the function, matrix, interval, or initial conditions while
keeping the same method structure.

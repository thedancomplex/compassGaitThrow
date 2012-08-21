clear all
close all

%% based on "The simplest walking model: stability complexity and scaling
%% by Garcia and Coleman 1998
%% three masses, mass on feet (m) are much smaller then mass of body (M) thus
%% does not effect the movement of M,  M >> m 
%% connected by a frictionless joint

m = 0;
M = 10;

beta = m/M;     %% beta  becasue M >> m we can set beta to zero
gamma = 1;      %% Gamma
fi = 1;         %% fi
g = 9.8;        %% Gravity
T = 0.001;      %% time step
tf = 10;        %% final time
t = 0:T:tf;     %% time
theta

A =     [   1+2*beta(1-cos(fi)),        -beta(1-cos(fi_))     ;
            beta*(1-cos(fi)),           -beta                  ];
        
B =     [   -beta*sin(fi)*(fi_dot^2-2*theta_dot*fi_dot)    ;
            beta*theta_dot^2*sin(fi)                        ];

C =     [   (beta*g/L)*(sin(theta-fi-gamma)-sin(theta-gamma))-g/L*sin(theta-gamma)      ;
            (beta*g/L)*sin(theta-fi-gamma)                                              ];
        
D =     [ 0 ; 0 ];
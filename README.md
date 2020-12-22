# Kalman HW2 GMU

Given is the linear system x ̇(t)=Fx(t)+Cu(t)    y(t)=Hx(t)
with the matrices

F=[■(1&0@-1&-1)]      C =[■(0@1)]    H=[1   2]
	Use your previously developed (in HW1) MATLAB program to numerically compute the State Transition Matrix using the differential equation
Φ ̇(t)=FΦ(t) with the initial condition Φ(0)=I  ("identity matrix")
Let T=5, h=0.01. 
Plot the columns of Φ(t) as functions of time. 
What do they tell us about the system dynamics (stable? oscillatory?).

	Now take the system with the step function u(t)= 1 for t >0 and zero initial state
	Use lsim to find the numerical solution
	Plot the solution x(t) as function of time.

	Convert the system to a discrete-time system with h= 0.01.
Replace u(t) by a discrete-time random white noise with power 1 and mean value 0, and zero initial state.
Use three variants of intervals: a) T=2; b) T=5; c) T=10;
Find by simulation what is the average power of the output signal over the interval in each case.
What is your interpretation?

	Let the initial state be x0= [ 2 -1]T, and let the input be u = 0. Compute the system response y(t) and plot it. Observe the magnitude of the numerical response.  Try to provide the interpretation of the results in terms of observability. (Course ECE 521; alternatively, study section 2.5 of the textbook (4th edition) or, if you do not yet have the textbook, download from folder Lecture 3 the file Observability.pdf


Compute matrix M given by equation (2.45) that is 

M=[■(H^T&F^T H^T )]

What is the rank of this matrix?
How does this explain the result on the system response?

	Consider the bivariate Gaussian distribution (n = 2) described by equation given in the lecture slides. Let P = [ 10 2; 2 2] (MATLAB notation) and let the distribution be centered at 0 (in two dimensions) 

a. Write explicitly the pdf function in terms of two variables x and y. 
b. Compute and plot the pdf surface p(x, y) using MATLAB  [learn to use mesh and contour commands] 
c. Visualize the surface pdf in 3D using MATLAB. 
d. Include ploys as figures in the homework report. 

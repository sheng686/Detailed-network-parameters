function mpc = my_case20
%CASE9    Power flow data for 9 bus, 3 generator case.
%   Please see CASEFORMAT for details on the case file format.
%
%   Based on data from p. 70 of:
%
%   Chow, J. H., editor. Time-Scale Modeling of Dynamic Networks with
%   Applications to Power Systems. Springer-Verlag, 1982.
%   Part of the Lecture Notes in Control and Information Sciences book
%   series (LNCIS, volume 46)
%
%   which in turn appears to come from:
%
%   R.P. Schulz, A.E. Turner and D.N. Ewart, "Long Term Power System
%   Dynamics," EPRI Report 90-7-0, Palo Alto, California, 1974.

%   MATPOWER

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 1;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	0	0	0	0	1	1	0	0.69	1	1.1	0.9;
	2	2	0	0	0	0	1	1	0	0.69	1	1.1	0.9;
	3	2	0	0	0	0	1	1	0	0.69	1	1.1	0.9;
	4	2	0	0	0	0	1	1	0	0.69	1	1.1	0.9;
	5	2	0	0	0	0	1	1	0	0.69	1	1.1	0.9;
	6	1	0	0	0	0	1	1	0	0.69	1	1.1	0.9;
	7	1	0	0	0	0	1	1	0	0.69	1	1.1	0.9;
	8	1	0	0	0	0	1	1	0	0.69	1	1.1	0.9;
	9	1	0	0	0	0	1	1	0	0.69	1	1.1	0.9;
    10	1	0	0	0	0	1	1	0	0.69	1	1.1	0.9;
    11	1	1	0	0	0	1	1	0	0.69	1	1.1	0.9;
	12	1	1	0	0	0	1	1	0	0.69	1	1.1	0.9;
	13	1	1	0	0	0	1	1	0	0.69	1	1.1	0.9;
	14	1	1	0	0	0	1	1	0	0.69	1	1.1	0.9;
	15	1	1	0	0	0	1	1	0	0.69	1	1.1	0.9;
	16	1	0	0	0	0	1	1	0	0.69	1	1.1	0.9;
	17	1	0	0	0	0	1	1	0	0.69	1	1.1	0.9;
	18	1	0	0	0	0	1	1	0	0.69	1	1.1	0.9;
	19	1	0	0	0	0	1	1	0	0.69	1	1.1	0.9;
    20	1	0	0	0	0	1	1	0	0.69	1	1.1	0.9;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	1	0.3	3	-3	1  1  1	 2	0.1	0	0	0	0	0	0	0	0	0	0	0;
	2	1	0.3	3	-3	1  1  1	 2	0.1	0	0	0	0	0	0	0	0	0	0	0;
	3	1	0.3	3	-3	1  1  1	 2	0.1	0	0	0	0	0	0	0	0	0	0	0;
	4	1	0.3	3	-3	1  1  1	 2	0.1	0	0	0	0	0	0	0	0	0	0	0;
	5	1	0.3	3	-3	1  1  1	 2	0.1	0	0	0	0	0	0	0	0	0	0	0;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	6	0	0.1     0	250	250	250	0	0	1	-360	360;
	6	11	0	0.15    0	250	250	250	0	0	1	-360	360;
    11	7	0	0.15    0	250	250	250	0	0	1	-360	360;
    6	16	0	0.3     0	250	250	250	0	0	1	-360	360;
	16	8	0	0.3  	0	250	250	250	0	0	1	-360	360;
    6	19	0	0.3     0	250	250	250	0	0	1	-360	360;
	19	9	0	0.3     0	250	250	250	0	0	1	-360	360;
    6	15	0	0.3     0	250	250	250	0	0	1	-360	360;
	15	10	0	0.3 	0	250	250	250	0	0	1	-360	360;

    
    2	7	0	0.1    0	250	250	250	0	0	1	-360	360;
    7	12	0	0.3     0	250	250	250	0	0	1	-360	360;
	12	8	0	0.3     0	250	250	250	0	0	1	-360	360;
    7	17	0	0.3     0	250	250	250	0	0	1	-360	360;
	17	9	0	0.3   	0	250	250	250	0	0	1	-360	360;
    7	20	0	0.3     0	250	250	250	0	0	1	-360	360;
	20	10	0	0.3     0	250	250	250 0	0	1	-360	360;

    3	8	0	0.3    0	250	250	250	0	0	1	-360	360; %17
    8	13	0	0.3     0	250	250	250	0	0	1	-360	360; %18
	13	9	0	0.3     0	250	250	250	0	0	1	-360	360; %19
    8	18	0	0.3     0	250	250	250	0	0	1	-360	360;
	18	10	0	0.3   	0	250	250	250	0	0	1	-360	360;	

    4	9	0	0.3 	0	250	250	250	0	0	1	-360	360; % 22
    9	14	0	0.3     0	250	250	250	0	0	1	-360	360;
	14	10	0	0.3     0	250	250	250	0	0	1	-360	360;

	5	10	0	0.3  	0	250	250	250	0	0	1	-360	360;
];



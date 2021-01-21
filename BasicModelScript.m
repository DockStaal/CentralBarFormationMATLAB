


%INITIALIZABLE PARAMTERS
%==========================================================================
%==========================================================================



yStar = 10; %Width of river.
xStar = 100; %Length of river.

i0 = 0.03; %Slope of river.
Cf = 5; %Chezy-coefficient.
hStar = 2; %Undisturbed water depth.
gamma = 1; 
T = 2; %Morphological time scale.

timeBegin = 0; %Starting time of simulation;
timeEnd = 20; %Ending time of simulation
numberOfFrames = 41; %Number of plottable frames of the solution.




%==========================================================================
%==========================================================================


g = 9.81; %Gravity.

C = g / Cf ^ 2; %Drag coefficient.
uStar = sqrt(i0 * g * hStar / C);

R = yStar / hStar;
F = uStar / sqrt(g * hStar);
kappa = yStar / (uStar * T);


tlist = linspace(timeBegin, timeEnd, numberOfFrames);
river = [3; 4; 0; xStar; xStar; 0; 0; 0; yStar; yStar]; %Creating the form of the river see https://nl.mathworks.com/help/pde/ug/create-geometry-at-the-command-line.html.



model = createpde(4); 
dl = decsg(river);

geometryFromEdges(model, dl);
pdegplot(dl, 'EdgeLabels', 'on');



























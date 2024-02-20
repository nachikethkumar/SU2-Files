% Load the STEP file
filename = '2D_GEO_SYM.stp';
geo = importGeometry("2D_GEO_SYM.stp");

% Extract the boundary points and segments
boundary_points = geo.boundary.Points;
boundary_segments = geo.boundary.Segments;

% Visualize the geometry
figure;
pdeplot(boundary_points', [], boundary_segments');
title('STEP Geometry');
xlabel('x');
ylabel('y');

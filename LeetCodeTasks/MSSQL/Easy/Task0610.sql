select x, y, z, iif(x + y <= z, 'No', iif(x + z <= y, 'No', iif(z + y <= x, 'No', 'Yes'))) as triangle
from Triangle
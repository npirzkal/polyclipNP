# polyclip

This is a small SWIG wrapper around the function polyclip_multi4() of J.D. Smith polyclip C code.

# Installing: #
'''
python setup.py install
'''

# Sample Usage: #
'''
import numpy as np
import polyclip

# Input polygon edges
px=np.array([[3.4,3.4,4.5,4.5],[3.5,3.5,5.5,5.5]]).astype(np.float32)
py=np.array([[1.4,2.0,2.0,1.4],[3.5,4.3,4.3,3.5]]).astype(np.float32)
    
polyinds=np.array((0,4,8)).astype(np.int32)

l=np.floor(px.min(axis=1)-1).astype(np.int32)
r=np.floor(px.max(axis=1)+1).astype(np.int32)
b=np.floor(py.min(axis=1)-1).astype(np.int32)
t=np.floor(py.max(axis=1)+1).astype(np.int32)

n = len(l)
npx = len(px)
npol =  len(polyinds)

nx = 10
# Output arrays
areas = np.zeros(nx,np.float32)
index = np.zeros(nx,np.int32)
nclip_poly = np.zeros(nx,np.int32)
x = np.zeros(nx,np.int32)
y = np.zeros(nx,np.int32)

polyclip.polyclip_multi4(l,r,b,t, np.ravel(px), np.ravel(py) , npol-1, polyinds, x, y, nclip_poly, areas, index)

'''
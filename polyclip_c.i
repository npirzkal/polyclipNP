%module polyclip

%{
#define SWIG_FILE_WITH_INIT
#define SWIG_PYTHON_CAST_MODE
%}

%include "numpy.i"

%init %{
import_array();
%}


%apply (int DIM1,int* IN_ARRAY1){(int len_l, int *l),(int len_r, int *r),(int len_b, int *b),(int len_t, int *t)}
%apply (int DIM1,float* IN_ARRAY1){(int len_px, float *px)}
%apply (int DIM1,float* IN_ARRAY1){(int len_py, float *py)}
%apply (int DIM1,int* IN_ARRAY1){(int len_poly_inds, int *poly_inds)}
%apply (int DIM1,int* INPLACE_ARRAY1){(int len_x, int *x)}
%apply (int DIM1,int* INPLACE_ARRAY1){(int len_y, int *y)}
%apply (int DIM1,int* INPLACE_ARRAY1){(int len_nclip_poly, int *nclip_poly)}
%apply (int DIM1,float* INPLACE_ARRAY1){(int len_areas, float *areas)}
%apply (int DIM1,int* INPLACE_ARRAY1){(int len_index, int *index)}

void polyclip_multi4(int len_l, int *l, int len_r, int *r, int len_b, int *b, int len_t, int *t, int len_px, float *px, int len_py, float *py, int n_poly, int len_poly_inds, int *poly_inds, int len_x, int *x, int len_y, int *y, int len_nclip_poly, int *nclip_poly, int len_areas, float *areas, int len_index, int *index);


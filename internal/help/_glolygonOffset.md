**_glPolygonOffset:** set the scale and units used to calculate depth values


## Syntax


  SUB _glPolygonOffset (BYVAL factor AS SINGLE, BYVAL units AS SINGLE)
  void **_glPolygonOffset**(GLfloat factor, GLfloat units);


; factor
>  Specifies a scale factor that is used to create a variable depth offset for each polygon. The initial value is 0.
; units
>  Is multiplied by an implementation-specific value to create a constant depth offset. The initial value is 0.


## Description


When [_GL_POLYGON_OFFSET_FILL](_GL_POLYGON_OFFSET_FILL), [_GL_POLYGON_OFFSET_LINE](_GL_POLYGON_OFFSET_LINE), or [_GL_POLYGON_OFFSET_POINT](_GL_POLYGON_OFFSET_POINT) is enabled, each fragment's *depth* value will be offset after it is interpolated from the *depth* values of the appropriate vertices. The value of the offset is *factor* * *DZ* + *r* * *units*, where *DZ* is a measurement of the change in depth relative to the screen area of the polygon, and *r* is the smallest value that is guaranteed to produce a resolvable offset for a given implementation. The offset is added before the depth test is performed and before the value is written into the depth buffer.

**_glPolygonOffset** is useful for rendering hidden-line images, for applying decals to surfaces, and for rendering solids with highlighted edges.


## Use With


[_glIsEnabled](_glIsEnabled) with argument [_GL_POLYGON_OFFSET_FILL](_GL_POLYGON_OFFSET_FILL), [_GL_POLYGON_OFFSET_LINE](_GL_POLYGON_OFFSET_LINE), or [_GL_POLYGON_OFFSET_POINT](_GL_POLYGON_OFFSET_POINT).

[_glGet](_glGet) with argument [_GL_POLYGON_OFFSET_FACTOR](_GL_POLYGON_OFFSET_FACTOR) or [_GL_POLYGON_OFFSET_UNITS](_GL_POLYGON_OFFSET_UNITS).


## See Also


[_GL](_GL)
[_glDepthFunc](_glDepthFunc), [_glEnable](_glEnable)




Copyright 1991-2006 Silicon Graphics, Inc. This document is licensed under the SGI Free Software B License. For details, see [http://oss.sgi.com/projects/FreeB/ http://oss.sgi.com/projects/FreeB/].


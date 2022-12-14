The [_CLEARCOLOR (function)](_CLEARCOLOR-(function)) function returns the current transparent color of an image or page.

## Syntax

> *result&* = [_CLEARCOLOR (function)](_CLEARCOLOR-(function)) [Source_Handle&]

## Description

* If Source_Handle& is omitted, it is assumed to be the current [_DEST](_DEST) write page.
* If Source_Handle& is an invalid handle value(-1), then an [ERROR Codes](ERROR-Codes) is returned.
* In color modes using a palette, the index of the current transparent color value is returned, or -1 if no transparent color is set.
* In 32-bit color modes, zero is returned.
* Returns the color that currently is transparent, or if no color is transparent -1 without error.
* A [_CLEARCOLOR](_CLEARCOLOR) statement can set the transparent color of an image or screen.
* **NOTE: Default 32 bit backgrounds are clear black or [_RGBA](_RGBA)(0, 0, 0, 0). Use [CLS](CLS) to make the black opaque.**

## See Also

* [_CLEARCOLOR](_CLEARCOLOR) (sets a clear color)
* [_SETALPHA](_SETALPHA) (sets color transparency)
* [Images](Images)

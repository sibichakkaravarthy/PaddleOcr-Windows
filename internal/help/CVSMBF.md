The [CVDMBF](CVDMBF) function decodes a 4-byte [STRING](STRING) generated by [MKSMBF$](MKSMBF$) (or read from a file) to [SINGLE](SINGLE) numeric values.

## Syntax

> result! = [CVSMBF](CVSMBF)(stringData$)

## Description

* *CV* functions ([CVD](CVD), [CVS](CVS), [CVI](CVI), [CVL](CVL), [CVDMBF](CVDMBF), [CVSMBF](CVSMBF)) are used to convert values encoded by *MK$* functions ([MKD$](MKD$), [MKS$](MKS$), [MKI$](MKI$), [MKL$](MKL$), [MKDMBF$](MKDMBF$), [MKSMBF$](MKSMBF$)).
* **QB64** has [_CV](_CV) and [_MK$](_MK$) functions which can also deal with extended [Data types](Data-types).
* [SINGLE](SINGLE) values can range up to 7 decimal point digits. Decimal point accuracy depends on whole value places taken.

## Example(s)

Showcases the reduced space to store an encoded number.

```vb

a! = 700.2213
PRINT "Value of a!:"; a!
b$ = MKSMBF$(a!)
PRINT "Value of a! encoded using MKSMBF$: "; b$
PRINT "The string above, decoded using CVSMBF:"; CVDMBF(b$)

```

```text

Value of a!: 700.2213
Value of a# encoded using MKSMBF$: *♫/è
The string above, decoded using CVSMBF: 700.2213

```

> Since the representation of a double-precision number can use up to 7 ASCII characters (seven bytes), writing to a file using [MKSMBF$](MKSMBF$) conversion, and then reading back with the [CVSMBF](CVSMBF) conversion can save up to 3 bytes of storage space.

## See Also

* [MKD$](MKD$), [MKI$](MKI$), [MKS$](MKS$), [MKL$](MKL$), [MKDMBF$](MKDMBF$), [MKSMBF$](MKSMBF$)
* [CVI](CVI), [CVS](CVS), [CVD](CVD), [CVL](CVL), [CVDMBF](CVDMBF)
* [_CV](_CV), [_MK$](_MK$)

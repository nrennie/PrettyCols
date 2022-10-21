## R CMD check results

In this resubmission, I have added `value` to the .Rd scales functions files from which it was missing as requested. I have also added at least one example to the documentation for each of these functions, and included additional tests for the scales functions.

There were no ERRORs,  or WARNINGs. 

Besides the new submission NOTE, there is one NOTE that is only found on Windows (Server 2022, R-devel 64-bit): 

```
* checking for detritus in the temp directory ... NOTE
Found the following files/directories:
  'lastMiKTeXException'
```
As noted in [R-hub issue #503](https://github.com/r-hub/rhub/issues/503), this could be due to a bug/crash in MiKTeX and can likely be ignored.

## Downstream dependencies

There are currently no downstream dependencies for this package.
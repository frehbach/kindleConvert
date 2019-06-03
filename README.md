# K2PDFopt

K2PDFopt is a free tool provided via: https://www.willus.com/k2pdfopt/
It can be used to convert any kind of PDF into a kindle readable formatting.

# This shiny App

This app provides a GUI interface for using k2pdfopt.
Till now the formatting is set for the Kindle Oasis, additional devices might come soon...

# Usage:

Only Once:
```R
install.github("frehbach/kindleConvert")
shinyK2PDFOpt::downloadConverter()
```

Every Time:
```R
library("shinyK2PDFOpt")
runConverter()
```


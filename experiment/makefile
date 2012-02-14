all: differences.svg logGammaTest.html

logGammaTest.html: logGammaTest.md
		pandoc -t html -o logGammaTest.html logGammaTest.md

Nums.hs : nums.py
		python nums.py > Nums.hs

differences.csv: differences.hs Nums.hs
		ghc -O -o differences differences.hs
		./differences > differences.csv

differences.svg: differences.r differences.csv
		Rscript differences.r


.PHONY: diagrams clean

all: small large pdf

open:
	draw.io etl-readout-board.drawio &

small:
	draw.io --width 700 -p 0 -x -f png -o data-flow.png etl-readout-board.drawio
	draw.io --width 700 -p 1 -x -f png -o power-distribution.png etl-readout-board.drawio
	draw.io --width 700 -p 2 -x -f png -o ctrl-and-mon.png etl-readout-board.drawio
	draw.io --width 800 -p 3 -x -f png -o module-connectivity.png etl-readout-board.drawio

large:
	draw.io --width 2400 -p 0 -x -f png -o data-flow_large.png etl-readout-board.drawio
	draw.io --width 2400 -p 1 -x -f png -o power-distribution_large.png etl-readout-board.drawio
	draw.io --width 2400 -p 2 -x -f png -o ctrl-and-mon_large.png etl-readout-board.drawio
	draw.io --width 2400 -p 3 -x -f png -o module-connectivity_large.png etl-readout-board.drawio

pdf:
	draw.io -p 0 -x -f pdf -o data-flow.pdf etl-readout-board.drawio
	draw.io -p 1 -x -f pdf -o power-distribution.pdf etl-readout-board.drawio
	draw.io -p 2 -x -f pdf -o ctrl-and-mon.pdf etl-readout-board.drawio
	draw.io -p 3 -x -f pdf -o module-connectivity.pdf etl-readout-board.drawio

clean:
	rm -rf data-flow.png power-distribution{.png,.pdf,_large.png} ctrl-and-mon{.png,.pdf,_large.png} data-flow{.png,.pdf,_large.png}  module-connectivity{.png,.pdf,_large.png}

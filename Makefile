V = iverilog
SRC = redux-pia/

%: $(SRC)/%.v $(SRC)/%_TB.v
	$(V) -o $@ $^

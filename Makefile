HOST=127.0.0.1
TEST_PATH=./

all: orders

orders:  deps build readme preview

deps:
	virtualenv venv; \
	source ./venv/bin/activate; \
	pip install -r requirements.txt 

clean: 
	rm -f LunchOrders.md; \
	rm -f LunchOrders.mdpp; \
	rm -f includes/*.mdpp; \
	cp LunchOrders.md.orig LunchOrders.md;
	echo "# IMAPEX Lunch Order" > LunchOrders.mdpp

build: 
	for file in includes/*.mdpp; do echo \!INCLUDE \""$$file"\" >> LunchOrders.mdpp; done

readme:
	source ./venv/bin/activate; \
	markdown-pp LunchOrders.mdpp -o LunchOrders.md

preview:
	source ./venv/bin/activate; \
	grip -b LunchOrders.md

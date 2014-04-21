all: build rsync

build: .force
	python2 cooked.py -c pd0mz.cfg

rsync: .force
	rsync -avzP ./pd0mz/_site/ alai:/data/site/pd0mz.nl/html/

.force:

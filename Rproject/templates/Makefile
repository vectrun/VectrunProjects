
# makefile for @@id@@
#
# R:
R=/usr/bin/R --vanilla -q

all: other

clean:
	rm -f data/*.rdat tags

backup:
	tar cvf ../@@id@@-backup-`date '+%Y%m%d%H%M'`.tar * 

tags: *.R
	echo "rtags(recursive=TRUE,ofile=\"etags\")"|R -q --vanilla
	etags2ctags.pl <etags >tags
	rm etags

.PHONY: other
other: data_out/test_other.rdat
data_out/test_other.rdat: test_other.R
	$(R) < < test_other.R



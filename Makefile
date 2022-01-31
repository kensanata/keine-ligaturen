keine-ligaturen: keine-ligaturen.tmp
	mv $< $@
	chmod +x $@

keine-ligaturen.tmp: selnolig-german-patterns.sty
	perl -MModern::Perl -e 'my $$d=0; while(<STDIN>) { $$d=1 if /^__DATA__$$/; print unless $$d; }' < keine-ligaturen > keine-ligaturen.tmp
	echo __DATA__ >> keine-ligaturen.tmp
	cat selnolig-german-patterns.sty >> keine-ligaturen.tmp

selnolig-german-patterns.sty:
	curl --output $@ https://raw.githubusercontent.com/micoloretan/selnolig/master/selnolig-german-patterns.sty

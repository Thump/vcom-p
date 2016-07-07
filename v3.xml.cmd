#!/bin/sh

start=`date +%s`
trap exit 2


#######################################################3
# frame 0
echo -e '\r frame 0  \c'

# frame 0 start
ppmmake black 320 240 > test-out/testvideo-frame:000000-base.pnm
convert test/seq2/blue.ppm -background black -gravity center -scale 100%x100%+0+0 -crop 100x100+0+0 -rotate 10 test-out/testvideo-seq:seq1-frame:000000-1
ppmcolormask black test-out/testvideo-seq:seq1-frame:000000-1 | composite -background black -compose atop -gravity center -geometry -10+10 test-out/testvideo-seq:seq1-frame:000000-1 -dissolve 100 test-out/testvideo-frame:000000-base.pnm - test-out/testvideo-seq:seq1-frame:000000-2
mv test-out/testvideo-seq:seq1-frame:000000-2 test-out/testvideo-frame:000000-base.pnm
rm -f test-out/testvideo-seq:seq1-frame:000000-1-mask test-out/testvideo-seq:seq1-frame:000000-1 test-out/testvideo-seq:seq1-frame:000000-2
# frame 0 end


#######################################################3
# frame 1
echo -e '\r frame 1  \c'

# frame 1 start
ppmmake black 320 240 > test-out/testvideo-frame:000001-base.pnm
convert test/seq2/green.ppm -background black -gravity center -scale %x%+0+0 -crop x+0+0 -rotate  test-out/testvideo-seq:seq1-frame:000001-1
ppmcolormask black test-out/testvideo-seq:seq1-frame:000001-1 | composite -background black -compose atop -gravity center -geometry -8+ test-out/testvideo-seq:seq1-frame:000001-1 -dissolve  test-out/testvideo-frame:000001-base.pnm - test-out/testvideo-seq:seq1-frame:000001-2
mv test-out/testvideo-seq:seq1-frame:000001-2 test-out/testvideo-frame:000001-base.pnm
rm -f test-out/testvideo-seq:seq1-frame:000001-1-mask test-out/testvideo-seq:seq1-frame:000001-1 test-out/testvideo-seq:seq1-frame:000001-2
# frame 1 end


#######################################################3
# frame 2
echo -e '\r frame 2  \c'

# frame 2 start
ppmmake black 320 240 > test-out/testvideo-frame:000002-base.pnm
convert test/seq2/red.ppm -background black -gravity center -scale %x%+0+0 -crop x+0+0 -rotate  test-out/testvideo-seq:seq1-frame:000002-1
ppmcolormask black test-out/testvideo-seq:seq1-frame:000002-1 | composite -background black -compose atop -gravity center -geometry -5+ test-out/testvideo-seq:seq1-frame:000002-1 -dissolve  test-out/testvideo-frame:000002-base.pnm - test-out/testvideo-seq:seq1-frame:000002-2
mv test-out/testvideo-seq:seq1-frame:000002-2 test-out/testvideo-frame:000002-base.pnm
rm -f test-out/testvideo-seq:seq1-frame:000002-1-mask test-out/testvideo-seq:seq1-frame:000002-1 test-out/testvideo-seq:seq1-frame:000002-2
# frame 2 end


#######################################################3
# frame 3
echo -e '\r frame 3  \c'

# frame 3 start
ppmmake black 320 240 > test-out/testvideo-frame:000003-base.pnm
convert test/seq2/blue.ppm -background black -gravity center -scale %x%+0+0 -crop x+0+0 -rotate  test-out/testvideo-seq:seq1-frame:000003-1
ppmcolormask black test-out/testvideo-seq:seq1-frame:000003-1 | composite -background black -compose atop -gravity center -geometry -2+ test-out/testvideo-seq:seq1-frame:000003-1 -dissolve  test-out/testvideo-frame:000003-base.pnm - test-out/testvideo-seq:seq1-frame:000003-2
mv test-out/testvideo-seq:seq1-frame:000003-2 test-out/testvideo-frame:000003-base.pnm
rm -f test-out/testvideo-seq:seq1-frame:000003-1-mask test-out/testvideo-seq:seq1-frame:000003-1 test-out/testvideo-seq:seq1-frame:000003-2
# frame 3 end


#######################################################3
# frame 4
echo -e '\r frame 4  \c'

# frame 4 start
ppmmake black 320 240 > test-out/testvideo-frame:000004-base.pnm
convert test/seq2/green.ppm -background black -gravity center -scale %x%+0+0 -crop x+0+0 -rotate  test-out/testvideo-seq:seq1-frame:000004-1
ppmcolormask black test-out/testvideo-seq:seq1-frame:000004-1 | composite -background black -compose atop -gravity center -geometry +1+ test-out/testvideo-seq:seq1-frame:000004-1 -dissolve  test-out/testvideo-frame:000004-base.pnm - test-out/testvideo-seq:seq1-frame:000004-2
mv test-out/testvideo-seq:seq1-frame:000004-2 test-out/testvideo-frame:000004-base.pnm
rm -f test-out/testvideo-seq:seq1-frame:000004-1-mask test-out/testvideo-seq:seq1-frame:000004-1 test-out/testvideo-seq:seq1-frame:000004-2
# frame 4 end


#######################################################3
# frame 5
echo -e '\r frame 5  \c'

# frame 5 start
ppmmake black 320 240 > test-out/testvideo-frame:000005-base.pnm
convert test/seq2/red.ppm -background black -gravity center -scale %x%+0+0 -crop x+0+0 -rotate  test-out/testvideo-seq:seq1-frame:000005-1
ppmcolormask black test-out/testvideo-seq:seq1-frame:000005-1 | composite -background black -compose atop -gravity center -geometry +5+ test-out/testvideo-seq:seq1-frame:000005-1 -dissolve  test-out/testvideo-frame:000005-base.pnm - test-out/testvideo-seq:seq1-frame:000005-2
mv test-out/testvideo-seq:seq1-frame:000005-2 test-out/testvideo-frame:000005-base.pnm
rm -f test-out/testvideo-seq:seq1-frame:000005-1-mask test-out/testvideo-seq:seq1-frame:000005-1 test-out/testvideo-seq:seq1-frame:000005-2
# frame 5 end


#######################################################3
# frame 6
echo -e '\r frame 6  \c'

# frame 6 start
ppmmake black 320 240 > test-out/testvideo-frame:000006-base.pnm
convert test/seq2/blue.ppm -background black -gravity center -scale %x%+0+0 -crop x+0+0 -rotate  test-out/testvideo-seq:seq1-frame:000006-1
ppmcolormask black test-out/testvideo-seq:seq1-frame:000006-1 | composite -background black -compose atop -gravity center -geometry +9+ test-out/testvideo-seq:seq1-frame:000006-1 -dissolve  test-out/testvideo-frame:000006-base.pnm - test-out/testvideo-seq:seq1-frame:000006-2
mv test-out/testvideo-seq:seq1-frame:000006-2 test-out/testvideo-frame:000006-base.pnm
rm -f test-out/testvideo-seq:seq1-frame:000006-1-mask test-out/testvideo-seq:seq1-frame:000006-1 test-out/testvideo-seq:seq1-frame:000006-2
# frame 6 end


#######################################################3
# frame 7
echo -e '\r frame 7  \c'

# frame 7 start
ppmmake black 320 240 > test-out/testvideo-frame:000007-base.pnm
convert test/seq2/green.ppm -background black -gravity center -scale %x%+0+0 -crop x+0+0 -rotate  test-out/testvideo-seq:seq1-frame:000007-1
ppmcolormask black test-out/testvideo-seq:seq1-frame:000007-1 | composite -background black -compose atop -gravity center -geometry +10+ test-out/testvideo-seq:seq1-frame:000007-1 -dissolve  test-out/testvideo-frame:000007-base.pnm - test-out/testvideo-seq:seq1-frame:000007-2
mv test-out/testvideo-seq:seq1-frame:000007-2 test-out/testvideo-frame:000007-base.pnm
rm -f test-out/testvideo-seq:seq1-frame:000007-1-mask test-out/testvideo-seq:seq1-frame:000007-1 test-out/testvideo-seq:seq1-frame:000007-2
# frame 7 end


#######################################################3
# frame 8
echo -e '\r frame 8  \c'

# frame 8 start
ppmmake black 320 240 > test-out/testvideo-frame:000008-base.pnm
convert test/seq2/red.ppm -background black -gravity center -scale %x%+0+0 -crop x+0+0 -rotate  test-out/testvideo-seq:seq1-frame:000008-1
ppmcolormask black test-out/testvideo-seq:seq1-frame:000008-1 | composite -background black -compose atop -gravity center -geometry +10+ test-out/testvideo-seq:seq1-frame:000008-1 -dissolve  test-out/testvideo-frame:000008-base.pnm - test-out/testvideo-seq:seq1-frame:000008-2
mv test-out/testvideo-seq:seq1-frame:000008-2 test-out/testvideo-frame:000008-base.pnm
rm -f test-out/testvideo-seq:seq1-frame:000008-1-mask test-out/testvideo-seq:seq1-frame:000008-1 test-out/testvideo-seq:seq1-frame:000008-2
# frame 8 end


#######################################################3
# frame 9
echo -e '\r frame 9  \c'

# frame 9 start
ppmmake black 320 240 > test-out/testvideo-frame:000009-base.pnm
convert test/seq2/blue.ppm -background black -gravity center -scale %x%+0+0 -crop x+0+0 -rotate  test-out/testvideo-seq:seq1-frame:000009-1
ppmcolormask black test-out/testvideo-seq:seq1-frame:000009-1 | composite -background black -compose atop -gravity center -geometry +10+ test-out/testvideo-seq:seq1-frame:000009-1 -dissolve  test-out/testvideo-frame:000009-base.pnm - test-out/testvideo-seq:seq1-frame:000009-2
mv test-out/testvideo-seq:seq1-frame:000009-2 test-out/testvideo-frame:000009-base.pnm
rm -f test-out/testvideo-seq:seq1-frame:000009-1-mask test-out/testvideo-seq:seq1-frame:000009-1 test-out/testvideo-seq:seq1-frame:000009-2
# frame 9 end


echo
end=`date +%s`
dur=`echo $end $start - p | dc`

echo rendering complete: $dur seconds

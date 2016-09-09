pushd test
mkdir -p new
rm -rf new/*
echo "Now running keras ppt text detector on testing PPT data"
python ../keras_ppt_text_detector.py -l test_ppt.list --mode ppt -verbose -d new/demo_ppt_output -o new/test_ppt.bbox
echo "Now show difference of this run result and buffered result"
diff test_ppt.bbox new/test_ppt.bbox > new/ppt.diff
echo "////////////////////////////////////////////////////////////////////////////////////////////////////"
wc new/ppt.diff | perl -lane 'chomp; unless( $F[0]>0 ){ print "INFO: Pass PPT testing\n";} else {print "WARNING: check test/new/ppt.diff for more differences\n";}'
echo "////////////////////////////////////////////////////////////////////////////////////////////////////"
echo "----------------------------------------------------------------------------------------------------"
echo "Now running keras ppt text detector on testing PPT data"
python ../keras_ppt_text_detector.py -l test_pdf.list --mode pdf -verbose -d new/demo_pdf_output -o new/test_pdf.bbox
echo "Now show difference of this run result and buffered result"
diff test_pdf.bbox new/test_pdf.bbox > new/pdf.diff
echo "////////////////////////////////////////////////////////////////////////////////////////////////////"
wc new/pdf.diff | perl -lane 'chomp; unless( $F[0]>0 ){ print "INFO: Pass PDF testing\n";} else {print "WARNING: check test/new/pdf.diff for more differences\n";}'
echo "////////////////////////////////////////////////////////////////////////////////////////////////////"
popd

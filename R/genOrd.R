genOrd <-
function(no.rows, ordPmat, binObj){
ep0 = generate.binary( no.rows, binObj$pvec, binObj$del.next)
Mydata= BinToOrd(binObj$pvec, ordPmat, binObj$Mlocation, ep0)
return(Mydata)
}

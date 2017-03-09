/%begin-noprep/,/%end-noprep/!{
/l\**\o\|W\**\|l<[SZPT]..>\|[yzn]\**o<[RAOSZGP]..>\|nE<ATN>kA<RAF>\|<YET>[yrd]\**[Ea]\|q.n\**E<ATN>kA<RAF>\|n\**[EAe]<ATN>k\|n\**a<[MTA]..>k\|[slyx][EAae]<[MTA]..>[pk]\|[slyx][EAae]<[MTA]..><CIR>[pk]\|[nl][Aeau]<[TM]..>n\|p[eau]<MUN><RAF>p<RAF>$/ {

# p[eau]<MUN><RAF>p<RAF>$
/p[eau]<MUN><RAF>p<RAF>$/{
s/\(.*p\)\([ea]\)<MUN><RAF>p<RAF>$/\\mbox{<H>\1<RAF><NIL><\/H>\\hspace{-2mm}<H>\2<MUN><\/H>\\hspace{0.0mm}<H>p<RAF><\/H>}/
s/\(.*\)pu<MUN><RAF>p<RAF>$/\\mbox{<H>\1p<RAF><NIL><\/H>\\hspace{-2.3mm}<H>u<MUN><\/H>\\hspace{0.0mm}<H>p<RAF><\/H>}/
}

# lo or l*o in the text
/l\**o/ {
/^\\fn/s/\(l\**\)o/\1<\/H>\\hspace*{2pt}<H>o<\/H>\\hspace*{-2pt}<H>/g
s/\(.*l\**\)o\(<...>\)\(.*\)/\\mbox{<H>\1\2<\/H>\\hspace{1.6pt}<H>o<\/H>\\hspace{-1.6pt}<H>\3<\/H>}/g
s/\(.*l\**\)o\(.*\)/\\mbox{<H>\1<\/H>\\hspace*{1.6pt}<H>o<\/H>\\hspace*{-1.6pt}<H>\2<\/H>}/
}

/W\**o/ {
# Wo or W*o in the footnote
/^\\fn/s/\(W\**\)o/\1<\/H>\\hspace*{2pt}<H>o<\/H>\\hspace*{-2pt}<H>/g
# Wo<ACC> or W*o<ACC> in the text
s/\(.*W\**\)o\(<...>\)\(.*\)/\\mbox{<H>\1\2<\/H>\\hspace{1.6pt}<H>o<\/H>\\hspace{-1.6pt}<H>\3<\/H>}/g
# Wo or W*o in the text
s/\(.*W\**\)o\(.*\)/\\mbox{<H>\1<\/H>\\hspace*{1.6pt}<H>o<\/H>\\hspace*{-1.6pt}<H>\2<\/H>}/
}

/l<[SZPT]..>\|[yzn]\**o<[RAOSZGP]..>\|nE<ATN>kA<RAF>/ {
/\\fn/s/l<\(SEG\|ZAR\|PAS\|TLP\)>/l<\/H>\\hspace*{2pt}<H><\1><\/H>\\hspace*{-2pt}<H>/
/l<...>/s/\(.*l\)<\(SEG\|ZAR\|PAS\|TLP\)>/\\mbox{<H>\1<\/H>\\hspace*{2pt}<H><\2><\/H>\\hspace*{-2pt}}/
/^\\fn{/s/\(.*[yz]\**\)o<\(RBM\|AZL\|OLE\|SIN\|ZQP\|ZQM\|GER\|GAR\|PAZ\|PZM\)>/\1<\2><\/H>\\hspace*{1pt}<H>o<\/H>\\hspace*{-1pt}<H>/
/[yz]/s/\(.*[yz]\**\)o<\(RBM\|AZL\|OLE\|SIN\|ZQP\|ZQM\|GER\|GAR\|PAZ\|PZM\)>\(.*\)/\\mbox{<H>\1<\2><\/H>\\hspace*{1pt}<H>o<\/H>\\hspace*{-1pt}<H>\3<\/H>}/
/n/s/\(.*n\**\)o<\(RBM\|AZL\|OLE\|SIN\|ZQM\|GER\|GAR\|PAZ\|PZM\)>\(.*\)/\\mbox{<H>\1<\2><NIL><\/H>\\hspace*{1pt}<H>o<\/H>\\hspace*{-1pt}<H>\3<\/H>}/
/nE/s/\(.*\)nE<ATN>kA<RAF>/\\mbox{<H>\1n<NIL><\/H>\\kern-8pt<H><NIL>E<ATN><\/H>\\kern-0pt<H>kA<RAF><\/H>}/
}

/<YET>[yrd]\**[Ea]\|q.n\**E<ATN>kA<RAF>\|n\**[EAe]<ATN>k\|n\**a<[MTA]..>k/ {
/<YET>[yrd]/s/<YET>\([yrd]\**\)\([Ea].*\)/\\mbox{<H><YET><NIL><\/H>\\kern1pt<H>\1\2<\/H>}/
/q.n/s/\(.*q.n\**\)E<ATN>kA<RAF>/\\mbox{<H>\1<NIL><\/H>\\kern-6pt<H><NIL>E<ATN><\/H>\\kern-1pt<H>kA<RAF><\/H>}/
/n\**[EAe]/s/\(.*n\**\)\([EAe]\)<ATN>\(k.*\)/\\mbox{<H>\1<NIL><\/H>\\kern-6pt<H><NIL>\2<ATN><\/H>\\kern-0pt<H>\3<\/H>}/
/n\**a/s/\(.*n\**\)a<\(MUN\|TIP\|MER\|ATN\)>\(k.*\)/\\mbox{<H>\1<NIL><\/H>\\kern-5pt<H><NIL>a<\2><\/H>\\kern-0pt<H>\3<\/H>}/
}

/[slyx][EAae]<[MTA]..>[pk]\|[slyx][EAae]<[MTA]..><CIR>[pk]\|[nl][Aeau]<[TM]..>n/ {
s/^\\fn{\(.*[ly]\)\([EAe]\)<ATN>\(k.*\)/\\fn{\1<\/H>\\kern-8pt<H><NIL>\2<ATN><\/H>\\kern-0pt<H>\3/
/[slyx][EAae]/{
s/\(.*[ly]\)\([EAe]\)<ATN>k"<RAF>$/\\mbox{<H>\1<\/H>\\kern-7pt<H><NIL>\2<ATN><\/H>\\kern-0pt<H>k"<RAF><\/H>}/
s/\(.*[ly]\)\([EAe]\)<ATN>kA<RAF>$/\\mbox{<H>\1<\/H>\\kern-7pt<H><NIL>\2<ATN><\/H>\\kern-0pt<H>kA<RAF><\/H>}/
/^\\fn{/s/\(.*l\)\([EAe]\)<\(MER\|TIP\|MUN\)>\(k.*\)/\1<\/H>\\hspace*{-5pt}<H><NIL>\2<\3><\/H>\\hspace*{0pt}<H>\4/
s/\(.*[slx]\)\([EAae]\)<\(MER\|MEH\|TIP\|MUN\|ATN\|TEB\)>p<RAF>$/\\mbox{<H>\1<\/H>\\hspace*{-7pt}<H><NIL>\2<\3><\/H>\\hspace*{1pt}<H>p<RAF><\/H>}/
s/\(.*[slx]\)\([EAae]\)<\(MER\|TIP\|MUN\|ATN\|TEB\)><CIR>p<RAF>$/\\mbox{<H>\1<\/H>\\hspace*{-7pt}<H><NIL>\2<\3><CIR><\/H>\\hspace*{1pt}<H>p<RAF><\/H>}/
/^\\fn{/s/\(.*l\)\([EAae]\)<\(MER\|TIP\|MUN\|ATN\|TEB\)>\(k\**["A].*\)/\1<\/H>\\hspace*{-5pt}<H><NIL>\2<\3><\/H>\\hspace*{0pt}<H>\4/
s/\(.*l\)\([EAae]\)<\(MER\|TIP\|MUN\|ATN\|TEB\)>\(k\**["A].*\)/\\mbox{<H>\1<\/H>\\hspace*{-5pt}<H><NIL>\2<\3><\/H>\\hspace*{0pt}<H>\4<\/H>}/
}
/[nl][Aeau]/{
	s/\(.*[nl]\)\([Aeau]\)<\(TIP\|MER\|TEB\|MUN\|MEH\)>n$/\\mbox{<H>\1<NIL><\/H>\\kern-6pt<H><NIL>\2<\3><\/H>\\kern-0pt<H>n<\/H>}/
	s/\(.*[nl]\)\([Aeau]\)<\(TIP\|MER\|TEB\|MUN\|MEH\)>n<LIN>$/\\mbox{<H>\1<NIL><\/H>\\kern-6pt<H><NIL>\2<\3><\/H>\\kern-0pt<H>n<LIN><\/H>}/
}

}
}
}

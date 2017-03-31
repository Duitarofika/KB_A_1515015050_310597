DOMAINS 
	orang 				=orang(nama,alamat)
	nama				=nama(pertama,kedua)
	alamat				=alamat(jalan,kota_kab,propinsi)
	jalan				=jalan(nama_jalan,nomor)
	kota_kab,propinsi,nama_jalan	=string
	pertama,kedua			=symbol
	nomor				=integer
	
GOAL
	P1=orang(nama(diena,fatihah),alamat(jalan("Wijaya Kusuma",12),"Berbah","DIY")),
	P1=orang(nama(_,fatihah),Alamat),
	P2=orang(nama(nur,fatihah),Alamat),
	write("P1=",P1),nl,
	write("P2=",P2),nl.
	
%Saat di run outputnya akan menampilkan semua data dari P1 dan P2, namun untuk alamat program akan menampilkan hasil alamat dua kali%
%karena pada goalnya menuliskan perintah write alamat secara double%
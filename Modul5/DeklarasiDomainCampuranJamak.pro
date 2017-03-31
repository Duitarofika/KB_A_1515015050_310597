DOMAINS
	benda =buku(judul,pengarang);
		kuda(nama);kapal;
		bukubank(saldo)
		
	judul,pengarang,nama=symbol
	saldo	=real
	
PREDICATES
	nondeterm milik(nama,benda)
	
CLAUSES	
	milik(erwin,buku("Markesot Bertutur","Emha Ainun Najib")).
	milik(erwin,kuda(buraq)).
	milik(erwin,kapal).
	milik(erwin,bukubank(1000)).
	
GOAL
	milik(erwin,Benda).

% Saat program dijalankan maka hasil outpunya sebagai berikut : 
% Benda=buku("Markesot Bertutur","Emha Ainun Najib")
	% Benda=kuda("buraq")
	% Benda=kapal
	% Benda=bukubank(1000)
% Dimana pada domains benda =buku(judul,pengarang), jadi akan menampilkan benda, kemudian diikuti judul dan pengarang %

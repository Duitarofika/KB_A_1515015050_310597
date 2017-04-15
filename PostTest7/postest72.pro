/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* 

predicates
  length_of(list,integer) - procedure (i,o) 

clauses
  length_of([], 0). 
  length_of([_|T],L):-
	length_of(T,TailLength),
	L = TailLength + 1.

goal
  length_of([1,2,3],L).
  
  		%domains list mendeklarasikan list dimana pada tipe datanya adalah integer
  			%length_of([], 0).  isi dari panjang list deng proses input output
  				%length_of([_|T],L):- melakukan pencarian argumen yang sama dimana tanda [] (kurung kotak yang kosong sebagai tail) 
  			%dan akan menghitung panjang list yang dimulai dari 0
  		% length_of(T,TailLength), berfungsi untuk memanggil kembali klausa kedua dengan list yang elemennya berkurang karena akan memakai tail dari list yang sebelumnya
	% L = TailLength + 1.  melakukan penambahan perhitungan panjang list setiap kali klausa di jalankan.
			%goal-nya akan menampilkan hasil L=3 karena melakukan perhitungan dari panjang list length_of pada goalnya
		
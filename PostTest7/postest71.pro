/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* 

predicates
  length_of(list,integer,integer) - procedure (i,o,i)
	
clauses
  length_of([], Result, Result). 
  length_of([_|T],Result,Counter):-
	NewCounter = Counter + 1, 
	length_of(T, Result, NewCounter). 
goal
  length_of([1,2,3],L,0).
  
  	%fungsi pada domains mendeklarasikan list yang berisi data dengan tipe integer
  			%predicates menjelaskan isi dari panjang list dimana akan menampilkan hasil dari proses input dan output
  		%pada clauses akan melakukan pencarian argumen yang sama dimana [] (pada tanda kurung kotak yang kosong sebagai tail)
  		%cunter + 1 berfungsi sebagai menambah nilai penghitung
  	/*lenght_of merupakan rekursi untuk memanggil ulang klausa yang kedua,perbedaannya list disini hanya akan diambil dari tail list sebelumnya
					    sehingga saat rekursi jumlah elemen list akan semakin berkurang*/
			 %pada goal-nya akan menampilkan hasil dari panjang list dengan perhitungan yang dimulai dari nol
  
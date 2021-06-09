%Inisialisasi matrix input NIM
NIM = [ 3 1 2; 0 1 0; 6 1 7;]

%Ubah dari matrix ke array / list
list=reshape(NIM.',[],1)

%Hitung baris dan kolom serta total dari baris kali kolom
[m, n] = size(NIM);
disp ('Jumlah Baris')
disp (m)
disp ('Jumlah Kolom')
disp (n)
disp ('Total Baris * Kolom')
total=m*n;
disp(total)

%Hitung frekuensi tiap angka dan urutkan dari 0 ke paling besar
[a,b]=hist(NIM,unique(NIM));
Freq=[b' sum((a),2)]

%Kalikan tiap frequency dengan total baris kali kolom
Freq_bagi_9=sum((a),2)/total

%Hitung Cumulative probability (menjumlahkan dengan nilai total sebelumnya)
CP=cumsum(Freq_bagi_9)

%Kalikan CP dengan angka 20
CP_kali_20 = CP*20

%Genapkan ke bawah
Round_Floor = [b' floor(CP_kali_20)]

%Ganti input matrix dengan angka baru
A =list;
B =Round_Floor;
A_col_id=1;     
B_col_id=1;    
A_col_value=2; 
B_col_value=2;  

[~,locb]=ismember(A(:,B_col_id),B(:,A_col_id));
Angka_Baru=B(locb,B_col_value)

%Cetak Output
Hasil_Akhir=reshape(Angka_Baru,m,n).'

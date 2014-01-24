program nama;

uses crt;

type
     mhs= record
     nim  :integer;
     nama :string;
     nilai:integer
   end;
var
   a          : array[1..100] of mhs;
   n,i,dicari : integer ;
   search     :string;
   ketemu     : boolean;
   pilihan    :integer;

procedure MenuPilihan(var Pilihan:integer);

begin
   clrscr;
   writeln(' 1. Isi Data Mahasiswa ');
   writeln(' 2. Mencari Data Berdasarkan NIM ');
   writeln(' 3. Mencari Data Berdasarkan NILAI ');
   writeln(' 4. Mencari Data Berdasarkan INDEKS ');
   writeln(' 0. Keluar');writeln();
   write('Masukkan pilihan  : ');readln(Pilihan);
end;

procedure isi;

begin
   writeln('sequential search');
   writeln('-----------------');
   write('Banyak data : ');readln(n);
   clrscr;
   for i:=1 to n do
   begin
     write('NIM   : ');readln(a[i].nim);
     write('Nama  : ');readln(a[i].nama);
     write('Nilai : ');readln(a[i].nilai);
     writeln();
   end;

end;

procedure nim(var dicari : integer);

begin
     write('NIM yang dicari : ');readln(dicari);
     ketemu:=false;
     for i:=1 to n do
     begin
         if a[i].nim = dicari then
         begin
            ketemu:=true;
            writeln('Mahasiswa ditemukan');
            writeln(a[i].nama,' memiliki nilai ',a[i].nilai);
         end
     end;

     if ketemu=false then writeln('Data tidak ditemukan');
     writeln();

end;

procedure nilai;

begin
     write('Nilai yang dicari : ');readln(dicari);
     ketemu:=false;
     for i:=1 to n do
     begin
         if a[i].nilai = dicari then
         begin
            ketemu:=true;
            writeln('Mahasiswa ditemukan');
            writeln(a[i].nama,' memiliki nim ',a[i].nim);
         end
     end;

     if ketemu=false then writeln('Data tidak ditemukan');
     writeln();
end;

procedure name;

begin
     write('Nama yang dicari : ');readln(search);
     ketemu:=false;
     for i:=1 to n do
     begin
         if a[i].nama = search then
         begin
            ketemu:=true;
            writeln('Mahasiswa ditemukan');
            writeln(a[i].nim,' memiliki nilai ',a[i].nilai);
         end
     end;

     if ketemu=false then writeln('Data tidak ditemukan');

end;


Procedure Memilih(pilihan : integer);

begin
   clrscr;
   window(1,1,80,25);
   Case pilihan of
   1:begin
     isi;
     end;
   2:begin
     nim(dicari);
     readln;
     end;
   3:begin
     nilai;
     readln;
     end;
   4:begin
     name;
     readln;
     end;

end;
end;

begin
  repeat
    begin
    MenuPilihan(pilihan);
    Memilih(pilihan);
    end;
  until(pilihan=0)


end.

# Penjelasan section 
section adalah direktif untuk mendefinisikan bagian atay segmen seperti penyimpanan data variabel atau instruksi program. Mengorganisir kode assembly kita agar lebih struktur dan lebih mudah di pahami serta mempermudah assembler dalam memetakkan berbagai program ke lokasi memori yang sesuai 

CONTOH: _section .data_, data yang dideklarasikan di sini bersifat tetap selama runtime, readonly, dan constant (tidak akan berubah). _section .bss_ digunakan untuk variabel atau buffering yang di isi selama runtime 'buffer resb 64' dengan kata lain saya mengalokasi memori untuk buffer sebesar 64 byte, tapi awal dari memorinya tidak akan di atur. section .text kode program aktual yang akan di eksekusi oleh processorharu dimulai dengan deklarasi global memberitahu linker tentang titik awal eksekusi program, bisa juga membuat label baru nanti juga bisa dipanggil di section namanya, why use section .text? because memisahkan kode dan data because prosessor dan sistem operasi dapat memperlakukan data and code secara berbeda

# Penjelasan register
* konsep edx (_extended data register_) memiliki peran demenyimpan panjang string yang akan dicetak, digunakan juga oleh sistem operasi berapa banyak karakter yang harus ditulis, kita menggunakan konsep _len equ_ dengan kata lain string ini dihitung secara otomatis

* konsep ecx (_extended counter register_) jadi konsep dari program ini dia akan menyimpan alamat memori dari string yang akan kita cetak *mov ecx, pesan* sistem operasi membutuhkan alamat memori string untuk mengetahui lokasi data yang akan dicetak dalam hal ini *pesan* mengacu pada string _halo adit_ di bagian _section .data_ 

* konsep ebx
dia akan menyimpan file descriptor tablenya atau identifikasi keluaran (_standar output_) instruksinya ini _ebx, 1_ deskriptor 1 ini menuju ke stdout jadi sistem operasi menggunakan nilai ini dari ini untuk menentukan ke mana data akan dikirim dari konseo ebx, 1

* konsep eax (_extended accumulator register_)
dia menyimpan nomor system call namanya sistem call number dia akan merujuk ke system write yang bertugas menulis data ke file ke perangkat keluaran seperti di layar

* konep int 0x80 (_interrupt 80h_)
jadi intinya dia akan memanggil bagian kernel inti dari sistem operasi untuk menjalankan system callnya

* global start
nah ada namanya section global start apasih maksudnya? jadi ini kita menentukan titik awal program jadi label start ini memberitahu linker di mana eksekusi dimulai 

## Kesimpulan
kita akan membaca string ke layar dulu yaitu _system write_
jad dari proses line 8 hingga 13 sebenarnya kernel akan membaca nilai dari dari register dan mencetak string yang ditunjuk oleh ecx _pesan_ ini tadi sebanyak dari _edx_ ini ke keluaran yang ditentukan oleh si ebx dari stdout nya dan kemudia saya membuat system exit jadi _eax, 1_ ini membuka system call untuk keluar dari program *kernel akan menghentikan program sesuai dari instruksinya*
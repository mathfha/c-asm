# Operasi processor and register
Saat prosessor melakukan operasi fokus utamanya itu data, disimpan di memory **RAM**
namun membaca atau menyimpan data di dalam **memory** memerlukan waktu yang lebih lama karena prosesor melalu banyak langkah salah satunya _mengirim permintaan_ melalui _kontrol bus_ ke **memory** dan dia kembali lagi ke **CPU**. 
* Solusinya
**CPU** ini memiliki register (sebuah penyimpanan kecil di dalam prosesor yang sangat cepa dan digunakan untuk menyimpan data yang sedang diproses) jadi _KESIMPULANNYA_: lebih cepat diakses dibandingkan *memory*
jadi bisa kita katakan arsitektur modern sekarang juga konsepnya seperti **IA32** memiliki jenis register dikelompokkan berdasarkan fungsi mereka masing-masing:
* General register: 
    - untuk berbagai jenis operasi yang umum
        - general register dibagi lagi menjadi beberapa kelompok kecil lagi:
            - Data register: operasi aritamitka, I/O & logika [eax], [ebx] pengelamatan berbasis indeks [ecx] menyimpan iterasi dalam operasi looping, [edx] operasi yang besar penbagian dan perkalian, pointer register: [eip] menunjukkan instruksi berikutnya yang akan dijalankan, [esp] akan menunjukkan posisi data terakhir di dalam sebuah stack, [ebp] menunjukkan posisi parameter dalam stack  dan indeks register: [esi], [edi] nanti akan membantu operasi-operasi string dan pengelamatan indeks
* control register: menyimpan informasi informasi status dan kontrol seperti instruksi pointer, register dari flag dll. jadi apasih Flag register ini sekumpulan bit yang menyimpan informasi status atau hasil operasi seperti menunjukkan **apakah hasil dari operasi adalah nol** -> ZF
**menyimpan carry operasi aritmatika** -> CF
SF -> **apakah hasil operasi itu positif atau negatif**
* segment register:
untuk pengelolaan segmentasi memori dalam program. Ada 3 segmen harus kita pahami: CS, DS, SS jadi pada segmen ini menyimpan instruksi sebuah program dan data segmen ini nanti lebih ke menyimpan data program dan SS ini menyimpan data sementara seperti return address. Dalam sebuah memori prosessor itu menggabungkan alamat segmen dari segmen register dan offset itu juga jarak dari awal segmen 
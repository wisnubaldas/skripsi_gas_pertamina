Tracking
-------

Aplikasi Boilerplate CI dengan CeBok

Setup
=====
-   Download [Git](https://git-scm.com/downloads)
    clone projek dengan perintah 
    ```bash
    git clone https://github.com/wisnubaldas/pos_aws.git
    ```

-   Update paket composer dengan perintah composer install jika belom install
    composer pasti error, install composer dulu, bisa di liat di
    [sini](https://getcomposer.org/download/)

-   Setting koneksi database pada file ```.env``` 
    Buka file ```.env``` setting koneksi database nya.

-   Lakukan migrate dengan perintah 
    ```bash 
        php index.php luthier migrate 
    ```
    jika tidak berhasil refresh migrasi,
    ```bash  
        php index.php luthier migrate reverse
        php index.php luthier migrate refresh
    ```
-   Buka broser aplikasi localhost, sesuaikan dengan nama project yang di buat, 
    ```http://localhost/skripsi/tracking``` login dengan user ```admin@admin.com``` dan password ```admin```
    
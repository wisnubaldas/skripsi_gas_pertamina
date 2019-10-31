PoS_aWs
-------

Aplikasi Boilerplate CI dengan tempate nemu

Setup
=====
-   Download [Git](https://git-scm.com/downloads)
    clone projek dengan perintah 
    ```bash
    git clone https://github.com/wisnubaldas/pos_aws.git
    ```
-   Link download untuk asset :
    <http://www.mediafire.com/file/ziga81qpz088852/assets.rar/file> extract
    assets.rar pada folder asset, kalo ngga ada foldernya bikin sendiri,
    sehingga struktur nya foldernya seperti ini:

    >   `assets`  
    >   `    -->css`  
    >   `    -->frontend`  
    >   `    -->img`  
    >   `    -->js`  
    >   `    -->plugins`

-   Update paket composer dengan perintah composer update jika belom install
    composer pasti error ketika update install composer dulu, bias di liat di
    [sini](https://getcomposer.org/download/)

-   Setting koneksi database pada file .env
-   Lakukan migrate dengan perintah 
    ```bash 
    php index.php luthier migrate 
    ```
    jika tidak berhasil refresh migrasi,
    ```bash  
    $ php index.php luthier migrate reverse
    $ php index.php luthier migrate refresh
    ```

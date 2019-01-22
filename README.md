PoS_aWs
-------

Aplikasi POS menggunakan Codeigniter Framework

Setup
=====

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

-   Setting koneksi database pada file .env.json kalo ngga ada file nya jangan
    tanya surya, rubah nama file .env.json.sample jadi .env.json isi file nya
    kurang lebih seperti ini:
```javascript
 [
       {
           "group_name":"default",
           "hostname":"localhost",
           "username":"root",
           "password":"toor",
           "database":"db_bla_bla"
       },
       {
           "group_name":"group1",
           "hostname":"localhost",
           "username":"croot",
           "password":"toorc",
           "database":"db_ble_ble"
     }
 ]
 ```
Itu contoh koneksi lebih dari satu database.

-   Lakukan migrasi
<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class tb_userSeeder extends Seeder
{
    public function run()
    {
        $faker      = \Faker\Factory::create('ja_JP');
        $salt       = uniqid('', true);
        $password   = md5('12345').$salt;

        for($i = 0; $i < 15; $i++){
            $data = [
                'username' => $faker->username,
                'password' => $password,
                'salt' => $salt,
                'role' => $faker->randomElements($array = array ('1','2'), $count = 1),
                'nip' => $faker->unique()->numberBetween($min = 195001011995011001, $max = 199912312021122999),
                'nama' => $faker->name,
                'bagian' => $faker->randomElements($array = array ('Sekretariat (Kepegawaian)', 'Sekretariat (Perencanaan)', 'Sekretariat (Keuangan)', 'Sekretariat (Arsip)', 'Bidang (Kesbak)', 'Bidang (Poldagri)', 'Bidang (Wasda)', 'Bidang (Idwasbang)'), $count = 1),
                // 'jabatan' => $faker->randomElements($array = array ('Pembina Tk.I'), $count = 1),
                // 'pangkat' => $faker->randomElements($array = array ('IV/a', 'IV/b'), $count = 1),
                // 'jabatan' => $faker->randomElements($array = array ('Penata Tk.I'), $count = 1),
                // 'pangkat' => $faker->randomElements($array = array ('III/c','III/d'), $count = 1),
                'jabatan' => $faker->randomElements($array = array ('Pembina Tk.I', 'Penata Tk.I'), $count = 1),
                'pangkat' => $faker->randomElements($array = array ('IV/a', 'IV/b', 'III/c','III/d'), $count = 1),
                'alamat'    => $faker->address,
                'telp' => $faker->phoneNumber
            ];
            // Using Query Builder
            $this->db->table('user')->insert($data);
        }

        // Simple Queries
        // $this->db->query("INSERT INTO users (username, email) VALUES(:username:, :email:)", $data);

        //Eksekusi = php spark db:seed tb_userSeeder
        //Seeder otomatis = php spark make:seeder namaSeeder

    }
}
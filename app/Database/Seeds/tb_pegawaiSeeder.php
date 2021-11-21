<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class tb_pegawaiSeeder extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create('id_ID');
        for($i = 0; $i < 10; $i++){
            $data = [
                'nip' => $faker->unique()->numberBetween($min = 195001011995011001, $max = 199912312021122999),
                'nama' => $faker->name,
                'bagian' => $faker->randomElements($array = array ('Sekretariat (Kepegawaian)', 'Sekretariat (Perencanaan)', 'Sekretariat (Keuangan)', 'Sekretariat (Arsip)', 'Bidang (Kesbak)', 'Bidang (Poldagri)', 'Bidang (Wasda)', 'Bidang (Idwasbang)'), $count = 1),
                // 'jabatan' => $faker->randomElements($array = array ('Pembina Tk.I'), $count = 1),
                // 'pangkat' => $faker->randomElements($array = array ('IV/a', 'IV/b'), $count = 1),
                'jabatan' => $faker->randomElements($array = array ('Penata Tk.I'), $count = 1),
                'pangkat' => $faker->randomElements($array = array ('III/c','III/d'), $count = 1),
                'alamat'    => $faker->address,
                'telp' => $faker->phoneNumber
            ];
            // Using Query Builder
            $this->db->table('tb_pegawai')->insert($data);
        }

        // Simple Queries
        // $this->db->query("INSERT INTO users (username, email) VALUES(:username:, :email:)", $data);

    }
}
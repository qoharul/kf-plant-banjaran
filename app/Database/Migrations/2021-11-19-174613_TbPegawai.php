<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class TbPegawai extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id_pegawai'    => [
                'type'          => 'INT',
                'constraint'    => 11,
                'unsigned'      => TRUE,
                'auto_increment' => TRUE
            ],
            'nip'    => [
                'type'          => 'VARCHAR',
                'constraint'    => 22,
            ],
            'nama'    => [
                'type'          => 'VARCHAR',
                'constraint'    => 100,
            ],
            'bagian'    => [
                'type'          => 'VARCHAR',
                'constraint'    => 100,
            ],
            'pangkat'    => [
                'type'          => 'VARCHAR',
                'constraint'    => 100,
            ],
            'jabatan'    => [
                'type'          => 'VARCHAR',
                'constraint'    => 100,
            ],
            'alamat'    => [
                'type'          => 'VARCHAR',
                'constraint'    => 255,
            ],
            'telp'    => [
                'type'          => 'VARCHAR',
                'constraint'    => 22,
            ]
        ]);
        $this->forge->addKey('id_pegawai', TRUE);
        $this->forge->createTable('tb_pegawai');
    }

    public function down()
    {
        //
    }
}

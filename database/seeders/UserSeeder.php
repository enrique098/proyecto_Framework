<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'Jose Glez',
            'phone' => '9631489675',
            'email' => 'jos_uts@hotmail.com',
            'profile' => 'ADMIN',
            'status' => 'ACTIVE',
            'password' => bcrypt('123'),

        ]);

        User::create([
            'name' => 'Malisa Perez',
            'phone' => '9631234561',
            'email' => 'melisa@hotmail.com',
            'profile' => 'EMPLOYEE',
            'status' => 'ACTIVE',
            'password' => bcrypt('123'),

        ]);
    }
}

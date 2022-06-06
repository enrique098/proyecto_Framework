<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Product::create([
            'name' => 'Laravel',
            'cost' => 200,
            'price' => 350,
            'barcode' => '1488158788877775',
            'stock' => 1000,
            'alerts' => 10,
            'category_id' => 1,
            'image' => 'cursos.png',
        ]);

        Product::create([
            'name' => 'NIKE',
            'cost' => 1200,
            'price' => 1500,
            'barcode' => '1488158788877775',
            'stock' => 1000,
            'alerts' => 10,
            'category_id' => 1,
            'image' => 'cursos.png',
        ]);

        Product::create([
            'name' => 'Samsung s8',
            'cost' => 6000,
            'price' => 7500,
            'barcode' => '1488158788877775',
            'stock' => 1000,
            'alerts' => 10,
            'category_id' => 1,
            'image' => 'cursos.png',
        ]);

        Product::create([
            'name' => 'Hp 245',
            'cost' => 12000,
            'price' => 13000,
            'barcode' => '1488158788877775',
            'stock' => 500,
            'alerts' => 10,
            'category_id' => 1,
            'image' => 'cursos.png',
        ]);
    }
}

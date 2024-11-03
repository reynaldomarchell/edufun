<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Writer;
use Faker\Factory as Faker;

class WriterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');

        $writers = [
            (object)[
            'position' => 'Front End Developer',
            'image' => 'https://as2.ftcdn.net/v2/jpg/03/26/98/51/1000_F_326985142_1aaKcEjMQW6ULp6oI9MYuv8lN9f8sFmj.jpg'
            ],
            (object)[
            'position' => 'Back End Developer',
            'image' => 'https://as2.ftcdn.net/v2/jpg/00/88/53/89/1000_F_88538986_5Bi4eJ667pocsO3BIlbN4fHKz8yUFSuA.jpg'
            ],
            (object)[
            'position' => 'UI/UX Designer',
            'image' => 'https://as1.ftcdn.net/v2/jpg/00/94/63/20/1000_F_94632007_FD0m1V9r5Jpnr6jJInXauMCBruGtnyis.jpg'
            ]
        ];

        foreach ($writers as $writer) {
            Writer::create([
            'name' => $faker->name,
            'position' => $writer->position,
            'image' => $writer->image,
            ]);
        }
    }
}

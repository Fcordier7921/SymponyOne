<?php

namespace App\DataFixtures;

use App\Entity\Admin;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class AdminFixture extends Fixture
{
    public function load(ObjectManager $manager)
    {
        for($i=0; $i<= 10; $i++){
            $Admin= new Admin();
            $Admin->setUsername("Titre de mon projet n° $i")
                       ->setPassword("<p>Contenu de l'article n°$i</p>");
                    //    ->setCreated_at("<p>la date de création</p>");
            $manager->persist($Admin);         

        }

        $manager->flush();
    }
}

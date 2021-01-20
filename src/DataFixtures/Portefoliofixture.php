<?php

namespace App\DataFixtures;

use App\Entity\Project;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;


class PortefolioFixture extends Fixture
{
    public function load(ObjectManager $manager)
    {
        for($i=0; $i<= 10; $i++){
            $porteFolio= new Project();
            $porteFolio->setTitle("Titre de mon projet n° $i")
                       ->setDescription("<p>Contenu de l'article n°$i</p>")
                       ->setImage("http://www.exempledesiteweb.com/image.jpg")
                       ->setGithub("<p>Lien github</p>")
                       ->setWeblink("<p>Autre lien</p>");
            $manager->persist($porteFolio);         

        }

        $manager->flush();
    }
}

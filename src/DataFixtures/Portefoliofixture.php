<?php

namespace App\DataFixtures;

use App\Entity\Project;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;


class PortefolioFixture extends Fixture
{
    public function load(ObjectManager $manager)
    {
        for($i=1; $i<= 10; $i++){
            $porteFolio= new Project();
            $porteFolio->setTitle("Titre de mon projet n° $i")
                       ->setDescription("Lorem ipsum dolor sit amet consectetur adipisicing elit n° $i . Eaque quibusdam, harum similique explicabo veniam totam impedit molestiae, quae quis rem nihil officiis delectus! Beatae ducimus laudantium eveniet illo ratione nemo voluptate laboriosam, necessitatibus repellendus excepturi obcaecati corrupti odit, saepe, alias fugiat delectus modi fugit asperiores praesentium doloremque maiores enim dolorum vero. Vel ducimus obcaecati odit assumenda numquam aut cum quas saepe architecto, rem quidem culpa? In voluptate commodi omnis cum ratione ducimus vitae voluptas distinctio quia quod temporibus soluta vero tenetur, saepe, quae consequatur eaque, iste adipisci sit debitis dolores doloribus! Perspiciatis laudantium quasi dolore nesciunt expedita voluptatibus. Dolorem, sunt quisquam? Vel molestiae quasi porro id nihil. Tempora illum sapiente, optio earum aliquam adipisci ea enim assumenda ducimus ipsa dolorum autem libero debitis reprehenderit. Doloremque aut ab facilis tenetur libero obcaecati, repellat eius unde harum quisquam adipisci sint, suscipit rerum velit ipsam repellendus iusto, dolore nostrum cupiditate. Suscipit velit odio culpa molestiae explicabo omnis, unde aperiam vitae rem consequatur repudiandae sunt alias dolor ad laboriosam eveniet accusamus quasi porro deleniti maiores pariatur doloremque ipsum. Vitae blanditiis quisquam, nostrum fuga sequi soluta voluptatem molestias! Natus, nobis ex. Nostrum laudantium doloremque tempora officia ab, cum est voluptate. Nisi esse officiis illo adipisci.")
                       ->setImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg")
                       ->setGithub("https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1200px-Octicons-mark-github.svg.png")
                       ->setWeblink("https://dbdzm869oupei.cloudfront.net/img/sticker/preview/2613.png");
            $manager->persist($porteFolio);         

        }

        $manager->flush();
    }
}

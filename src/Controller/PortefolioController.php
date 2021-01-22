<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\Persistence\ObjectManager;
use App\Entity\Project;
use App\Repository\ProjectRepository;


class PortefolioController extends AbstractController
{
    /**
     * @Route("/portefolio", name="portefolio")
     */
    public function index(ProjectRepository $repo)
    {
        

        $portefolios=$repo->findAll();

        return $this->render('portefolio/index.html.twig', [
            'controller_name' => 'PortefolioController',
            'articles' => $portefolios
        ]);
    }
    
    /**
     * @Route("/", name= "home")
     */

    public function home(){
        return $this->render('portefolio/home.html.twig');
    }

    
    /**
     * @Route("/portefolio/admin", name="admin")
     */
    public function create( Request $request, ObjectManager $manager) {

        $folio= new Folio();

        $form=$this ->createFormBuilder($folio)
                    ->add('title')
                    ->add('image')
                    ->add('content')
                    ->getForm();
        
        return $this ->render('portefolio/admin.html.twig');
    }

    /**
     * @Route("/portefolio/{id}", name="portefolio_show")
     */
    public function show(ProjectRepository $repo, $id){
        
        $article = $repo->find($id);

        return $this->render('portefolio/show.html.twig', [
            'article' => $article
        ]);
    }
}
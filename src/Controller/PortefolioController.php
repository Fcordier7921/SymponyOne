<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Project;

class PortefolioController extends AbstractController
{
    /**
     * @Route("/portefolio", name="portefolio")
     */
    public function index(): Response
    {
        $repo=$this->getDoctrine()->getRepository(Project::class);

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
     * @Route("/blog/12", name="portefolio_show")
     */
    public function show(){
        return $this->render('portefolio/show.html.twig');
    }
}
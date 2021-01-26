<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use App\Entity\Project;
use App\Form\FolioType;
use App\Repository\ProjectRepository;



// use Doctrine\DBAL\Types\TextType;

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
     * 
     */
    public function form( Request $request) {
        

        $folio= new Project();
        
        $Manager = $this->getDoctrine()->getManager();
        
        
        $form= $this->createForm(FolioType::class, $folio );

        $form ->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $Manager->persist($folio);
            $Manager->flush();
            
            
        }

        
        return $this ->render('portefolio/admin.html.twig', [
            'formFolio' => $form->createView()
        ]);
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
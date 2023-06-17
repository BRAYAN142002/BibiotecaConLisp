(defun buscarBibliotecaNit()
    (setq contadorBiblioteca 0)
    (setq bandera 0)
    (print "Digite el Codigo de la biblioteca: ")
    (setq nit (read))
    (loop 
        (setq auxBiblioteca (aref v_bibliotecas contadorBiblioteca))
        (if (eq (Biblioteca-nit auxBiblioteca) nit)
            (progn  
                (format t "Nit ~D:~%"(Biblioteca-nit auxBiblioteca)) 
                (format t "Nombre ~S:~%"(Biblioteca-nombre auxBiblioteca))
                (format t "Direccion ~S:~%"(Biblioteca-direccion auxBiblioteca))
                ;imprimir los libros de la biblioteca
                (setq contadorLibro 0)
                (setq auxLibro (aref (Biblioteca-v_libros auxBiblioteca) contadorLibro))
                (loop 
                    (format t "Codigo ~D:~%"(Libro-codigo auxLibro))
                    (format t "Titulo ~S:~%"(Libro-titulo auxLibro))
                    (format t "Categoria ~S:~%"(Libro-categoria auxLibro))
                    (setq contadorLibro (+ contadorLibro 1))               
                    (when (>= contadorLibro longitudLibros) 
                        (return)
                    )
                    (setq auxLibro (aref v_libros contadorLibro))
                )
                (setq bandera 1)           
            )
            
        )        
        (setq contadorBiblioteca (+ contadorBiblioteca 1))
        (when (>= contadorBiblioteca longitudBibliotecas) 
            (return)
        )
    )
    (if (eq bandera 0)
        (print "No se encontro la biblioteca")
    )
    
)
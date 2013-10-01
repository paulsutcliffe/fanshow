# coding: utf-8
require 'factory_girl'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB
DatabaseCleaner.clean

FactoryGirl.create :fan

temas = Tema.create([{ nombre: 'Televidente' },
                     { nombre: 'Abandonado' },
                     { nombre: 'Son Colegialas' },
                     { nombre: 'Lejos de Ti' },
                     { nombre: 'Estas en Nada' },
                     { nombre: 'Lo Peor de Todo' },
                     { nombre: 'La Universidad' },
                     { nombre: 'Droga' },
                     { nombre: 'Un Viaje en un Micro' },
                     { nombre: 'Amor Es' },
                     { nombre: 'Dónde Vamos a Parar' },
                     { nombre: 'Contéstame' },
                     { nombre: 'Todo Estaba Bien' },
                     { nombre: 'Lo Empiezo a Odiar' },
                     { nombre: 'Mi Partido' },
                     { nombre: 'No Quiero Verte Más' },
                     { nombre: 'Profesora de Ingles' },
                     { nombre: 'Pierdo la Razón' },
                     { nombre: 'Mónica' },
                     { nombre: 'Hoy Subió El Dolar' },
                     { nombre: 'Andrea' },
                     { nombre: 'Creo Que Te Voy a Disparar' },
                     { nombre: 'Al Norte de América' },
                     { nombre: 'Tienes que Pagarme Más' },
                     { nombre: 'Tarara' },
                     { nombre: 'Dulce y Amargo' },
                     { nombre: 'Mañana Será' },
                     { nombre: 'Promesas de Guerra' },
                     { nombre: 'Carol Quiere un Viaje a Londres' },
                     { nombre: 'No Me Cabe Duda' },
                     { nombre: 'Relax' },
                     { nombre: 'Vacío' },
                     { nombre: 'Algo de Ti' },
                     { nombre: 'Un Amor sin Corazon' },
                     { nombre: 'Y Lloro' },
                     { nombre: 'Sin Ti' },
                     { nombre: 'Día de Pesca' },
                     { nombre: 'Me Estoy Quemando' },
                     { nombre: 'Esta En La Música' },
                     { nombre: 'Canción Estúpida' },
                     { nombre: 'Aguita Pal Calor' },
                     { nombre: 'Han Debido Decírtelo' },
                     { nombre: 'Decias' },
                     { nombre: 'Bella Luna' },
                     { nombre: 'La Espina' },
                     { nombre: 'Eres Mi Luz' },
                     { nombre: 'Pisco' },
                     { nombre: 'Sacarte de mi Mente' },
                     { nombre: 'Mi Princesa' },
                     { nombre: 'Te Espero' }])

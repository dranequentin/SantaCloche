using System;
using System.Collections.Generic;
using System.Text;

namespace SantaCloche.Entity
{
    /// <summary>
    /// Classe representant un objet Compte
    /// </summary>
    class Compte
    {
        private int somme;
        private string numeroCompte;
        private DateTime dateOuverture;
        /// <summary>
        /// Récupère et attribue la somme de l'objet Compte
        /// </summary>
        public int Somme { get => somme; set => somme = value; }
        /// <summary>
        /// Récupère et attribue le numéro de compte de l'objet Compte
        /// </summary>
        public string NumeroCompte { get => numeroCompte; set => numeroCompte = value; }
        /// <summary>
        /// Récupère et attribue la date d'ouverture de l'obje Compte
        /// </summary>
        public DateTime DateOuverture { get => dateOuverture; set => dateOuverture = value; }
    }
}

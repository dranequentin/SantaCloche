using System;
using System.Collections.Generic;
using System.Text;

namespace SantaCloche.Entity
{
    /// <summary>
    /// Classe Client représente un objet client
    /// </summary>
    class Client
    {
        private int idClient;
        private string nom, prenom, cp, ville, rue, tel;
        /// <summary>
        /// Récupère et attribue l'id de l'objet client 
        /// </summary>
        public int IdEnseignant { get => idClient; set => idClient = value; }
        public string Nom { get => nom; set => nom = value; }
        /// <summary>
        /// Récupère et attribue le prenom de l'objet client 
        /// </summary>
        public string Prenom { get => prenom; set => prenom = value; }
        /// <summary>
        /// Récupère et attribue le code postale de l'objet client 
        /// </summary>
        public string Cp { get => cp; set => cp = value; }
        /// <summary>
        /// Récupère et attribue la ville de l'objet client 
        /// </summary>
        public string Ville { get => ville; set => ville = value; }
        /// <summary>
        /// Récupère et attribue le rue de l'objet client 
        /// </summary>
        public string Rue { get => rue; set => rue = value; }
        /// <summary>
        /// Récupère et attribue le numéro de téléphone de l'objet client 
        /// </summary>
        public string Tel { get => tel; set => tel = value; }
    }
}

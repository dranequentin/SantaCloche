using System;
using System.Collections.Generic;
using System.Text;

namespace SantaCloche.Entity
{
    /// <summary>
    /// Classe représentant un objet employe
    /// </summary>
    class Employe
    {
        private string login, mdp,nomEmploye,prenomEmploye;
        /// <summary>
        /// Récupère et attribue le login de l'objet Employe
        /// </summary>
        public string Login { get => login; set => login = value; }
        /// <summary>
        /// Récupère et attribue le mdp de l'objet Employe
        /// </summary>
        public string Mdp { get => mdp; set => mdp = value; }
        /// <summary>
        /// Récupère et attribue le nom de l'employe de l'objet Employe
        /// </summary>
        public string NomEmploye { get => nomEmploye; set => nomEmploye = value; }
        /// <summary>
        /// Récupère et attribue le prenom de l'employe de l'objet Employe
        /// </summary>
        public string PrenomEmploye { get => prenomEmploye; set => prenomEmploye = value; }
    }
}

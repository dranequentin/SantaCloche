using System;
using System.Collections.Generic;
using System.Text;

namespace SantaCloche.Entity
{
    /// <summary>
    /// Classe réprésentant un objet Transaction
    /// </summary>
    class Transaction
    {
        private string numeroTransaction, libelle;
        private int montant;
        private DateTime dateTransaction;
        /// <summary>
        /// Récupère et attribue le numéro de transaction de l'objet Transaction
        /// </summary>
        public string NumeroTransaction { get => numeroTransaction; set => numeroTransaction = value; }
        /// <summary>
        /// Récupère et attribue le libelle de l'objet Transaction
        /// </summary>
        public string Libelle { get => libelle; set => libelle = value; }
        /// <summary>
        /// Récupère et attribue le montant de l'objet Transaction
        /// </summary>
        public int Montant { get => montant; set => montant = value; }
        /// <summary>
        /// Récupère et attribue la date de transaction de l'objet Transaction
        /// </summary>
        public DateTime DateTransaction { get => dateTransaction; set => dateTransaction = value; }
    }
}

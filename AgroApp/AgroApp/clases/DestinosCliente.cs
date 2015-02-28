using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace AgroApp.clases
{
    public class DestinosCliente
    {

        private int _destinoID;
        private int _clienteID;
        private string _destino;

        public DestinosCliente(int dID, int cID, string dest) {
            
            _destinoID = dID;
            _clienteID = cID;
            _destino = dest;

        }

        public int destinoID {
            get {
                return _destinoID;
            }

            set {
                _destinoID = value;
            }
        }

        public int clienteID
        {
            get
            {
                return _clienteID;
            }

            set
            {
                _clienteID = value;
            }
        }

        public string destino {
            get {
                return _destino;
            }

            set {
                _destino = value;
            }
        }

    }
}
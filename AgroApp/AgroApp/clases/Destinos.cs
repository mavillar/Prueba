using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AgroApp.clases
{
    public class Destinos
    {

        private int _destinoID;
        private string _destino;

        public int destinoID {
            get {
                return _destinoID;
            }

            set {
                _destinoID = value;
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
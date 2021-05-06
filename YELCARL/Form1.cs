using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace YELCARL
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        string[,] ListaVenta = new string[200, 6];
        int Fila = 0;

        private void btnCargarLista_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtId.Text != "" && txtNombre.Text != "" && txtCantidad.Text != "" && txtPrecio.Text != "")
                {
                       ListaVenta [Fila,0] = txtId.Text;
                       ListaVenta [Fila,1] = txtNombre.Text;
                       ListaVenta [Fila,2] = txtCantidad.Text;
                       ListaVenta [Fila,3] = txtPrecio.Text;
                       ListaVenta[Fila, 4] = (float.Parse(txtPrecio.Text)* float.Parse(txtCantidad.Text)).ToString();
                       dvgLista.Rows.Add(ListaVenta[Fila, 0], ListaVenta[Fila, 1], ListaVenta[Fila, 2], ListaVenta[Fila, 3], ListaVenta[Fila, 4]);
                       Fila++;
                       txtId.Text = txtNombre.Text = txtCantidad.Text = txtPrecio.Text = "";
                       txtId.Focus();
                }
            }
            catch
            {
                
            }
            TotalApagar(); 
        }
        public void TotalApagar()
        {
            float CostoTotal = 0;
            int Conteo = 0;

            Conteo = dvgLista.RowCount;
            for(int i=0; i< Conteo; i++)
            {
                CostoTotal += float.Parse(dvgLista.Rows[i].Cells[4].Value.ToString());
            }
            lblTotalApagar.Text = CostoTotal.ToString();
        }

        private void txtEfectivo_TextChanged(object sender, EventArgs e)
        {
            try
            {
                lblDevolucion.Text = (float.Parse(txtEfectivo.Text) - float.Parse(lblTotalApagar.Text)).ToString();
            }
            catch 
            {
                lblDevolucion.Text = "0.00";
            }
        }

        private void btnVender_Click(object sender, EventArgs e)
        {

        }
    }
}

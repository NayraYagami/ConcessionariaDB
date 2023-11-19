//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Concessionaria
{
    using System;
    using System.Collections.Generic;
    
    public partial class veiculo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public veiculo()
        {
            this.opcionals = new HashSet<opcional>();
        }
    
        public int IdVeiculo { get; set; }
        public Nullable<int> AnoFabricacao { get; set; }
        public Nullable<int> AnoModelo { get; set; }
        public int BlindagemID { get; set; }
        public int CambioID { get; set; }
        public int CombustivelID { get; set; }
        public int CorID { get; set; }
        public int VersaoID { get; set; }
        public string Placa { get; set; }
        public Nullable<int> Portas { get; set; }
        public Nullable<int> Quilometragem { get; set; }
        public decimal PrecoNormal { get; set; }
        public int Acessos { get; set; }
        public byte Destaque { get; set; }
        public System.DateTime DataCadastro { get; set; }
        public string Descricao { get; set; }
        public byte AceitaPermuta { get; set; }
        public byte VeiculoComDivida { get; set; }
        public string CondicaoPagamento { get; set; }
        public Nullable<decimal> Ranking { get; set; }
        public decimal PrecoPromocional { get; set; }
        public int UsuarioID { get; set; }
        public int QtdeEstoque { get; set; }
        public int CategoriaID { get; set; }
    
        public virtual blindagem blindagem { get; set; }
        public virtual cambio cambio { get; set; }
        public virtual categoria categoria { get; set; }
        public virtual combustivel combustivel { get; set; }
        public virtual cor cor { get; set; }
        public virtual usuario usuario { get; set; }
        public virtual versao versao { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<opcional> opcionals { get; set; }
    }
}
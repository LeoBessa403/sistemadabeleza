<?php

/**
 * Relacionamentos.class [ RELACIONAMENTOS DO BANCO ]
 * @copyright (c) 2018, Leo Bessa
 */

class Relacionamentos
{

    public static function getRelacionamentos()
    {
        return array(
            (AcessoEntidade::TABELA) => Array(
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_TRAFEGO) => Array(
                    ('Campo') => CO_TRAFEGO,
                    ('Entidade') => 'TrafegoEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (UsuarioEntidade::TABELA) => Array(
                (CO_ACESSO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'AcessoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_AUDITORIA) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'AuditoriaEntidade',
                    ('Tipo') => '2',
                ),
                (CO_IMAGEM) => Array(
                    ('Campo') => CO_IMAGEM,
                    ('Entidade') => 'ImagemEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PESSOA) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'PessoaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_USUARIO_PERFIL) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioPerfilEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (FuncionalidadeEntidade::TABELA) => Array(
                (CO_PERFIL_FUNCIONALIDADE) => Array(
                    ('Campo') => CO_FUNCIONALIDADE,
                    ('Entidade') => 'PerfilFuncionalidadeEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (AuditoriaEntidade::TABELA) => Array(
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_AUDITORIA_TABELA) => Array(
                    ('Campo') => CO_AUDITORIA,
                    ('Entidade') => 'AuditoriaTabelaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (AuditoriaItensEntidade::TABELA) => Array(
                (CO_AUDITORIA_TABELA) => Array(
                    ('Campo') => CO_AUDITORIA_TABELA,
                    ('Entidade') => 'AuditoriaTabelaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (AuditoriaTabelaEntidade::TABELA) => Array(
                (CO_AUDITORIA_ITENS) => Array(
                    ('Campo') => CO_AUDITORIA_TABELA,
                    ('Entidade') => 'AuditoriaItensEntidade',
                    ('Tipo') => '2',
                ),
                (CO_AUDITORIA) => Array(
                    ('Campo') => CO_AUDITORIA,
                    ('Entidade') => 'AuditoriaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (PessoaEntidade::TABELA) => Array(
                (CO_ENDERECO) => Array(
                    ('Campo') => CO_ENDERECO,
                    ('Entidade') => 'EnderecoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_CONTATO) => Array(
                    ('Campo') => CO_CONTATO,
                    ('Entidade') => 'ContatoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_IMAGEM) => Array(
                    ('Campo') => CO_IMAGEM,
                    ('Entidade') => 'ImagemEntidade',
                    ('Tipo') => '1',
                ),
                (CO_USUARIO) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ContatoEntidade::TABELA) => Array(
                (CO_PESSOA) => Array(
                    ('Campo') => CO_CONTATO,
                    ('Entidade') => 'PessoaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (EnderecoEntidade::TABELA) => Array(
                (CO_PESSOA) => Array(
                    ('Campo') => CO_ENDERECO,
                    ('Entidade') => 'PessoaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ImagemEntidade::TABELA) => Array(),
            (PerfilFuncionalidadeEntidade::TABELA) => Array(
                (CO_PERFIL) => Array(
                    ('Campo') => CO_PERFIL,
                    ('Entidade') => 'PerfilEntidade',
                    ('Tipo') => '1',
                ),
                (CO_FUNCIONALIDADE) => Array(
                    ('Campo') => CO_FUNCIONALIDADE,
                    ('Entidade') => 'FuncionalidadeEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (PerfilEntidade::TABELA) => Array(
                (CO_PERFIL_FUNCIONALIDADE) => Array(
                    ('Campo') => CO_PERFIL,
                    ('Entidade') => 'PerfilFuncionalidadeEntidade',
                    ('Tipo') => '2',
                ),
                (CO_USUARIO_PERFIL) => Array(
                    ('Campo') => CO_PERFIL,
                    ('Entidade') => 'UsuarioPerfilEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (UsuarioPerfilEntidade::TABELA) => Array(
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PERFIL) => Array(
                    ('Campo') => CO_PERFIL,
                    ('Entidade') => 'PerfilEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (VisitaEntidade::TABELA) => Array(
                (CO_TRAFEGO) => Array(
                    ('Campo') => CO_TRAFEGO,
                    ('Entidade') => 'TrafegoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PAGINA_VISITA) => Array(
                    ('Campo') => CO_VISITA,
                    ('Entidade') => 'PaginaVisitaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PaginaEntidade::TABELA) => Array(
                (CO_PAGINA_VISITA) => Array(
                    ('Campo') => CO_PAGINA,
                    ('Entidade') => 'PaginaVisitaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PaginaVisitaEntidade::TABELA) => Array(
                (CO_PAGINA) => Array(
                    ('Campo') => CO_PAGINA,
                    ('Entidade') => 'PaginaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_VISITA) => Array(
                    ('Campo') => CO_VISITA,
                    ('Entidade') => 'VisitaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (TrafegoEntidade::TABELA) => Array(),
            (FeriadoEntidade::TABELA) => Array(),
            (PlanoModuloEntidade::TABELA) => Array(
                (CO_PLANO) => Array(
                    ('Campo') => CO_PLANO,
                    ('Entidade') => 'PlanoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_MODULO) => Array(
                    ('Campo') => CO_MODULO,
                    ('Entidade') => 'ModuloEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (PlanoEntidade::TABELA) => Array(
                (CO_PLANO_MODULO) => Array(
                    ('Campo') => CO_PLANO,
                    ('Entidade') => 'PlanoModuloEntidade',
                    ('Tipo') => '2',
                ),
                (CO_PLANO_ASSINANTE) => Array(
                    ('Campo') => CO_PLANO,
                    ('Entidade') => 'PlanoAssinanteEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (ModuloEntidade::TABELA) => Array(
                (CO_PLANO_MODULO) => Array(
                    ('Campo') => CO_MODULO,
                    ('Entidade') => 'PlanoModuloEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PlanoAssinanteEntidade::TABELA) => Array(
                (CO_PLANO) => Array(
                    ('Campo') => CO_PLANO,
                    ('Entidade') => 'PlanoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PLANO_ASSINANTE_ASSINATURA) => Array(
                    ('Campo') => CO_PLANO_ASSINANTE,
                    ('Entidade') => 'PlanoAssinanteAssinaturaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PlanoAssinanteAssinaturaEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PLANO_ASSINANTE) => Array(
                    ('Campo') => CO_PLANO_ASSINANTE,
                    ('Entidade') => 'PlanoAssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (AssinanteEntidade::TABELA) => Array(
                (CO_PLANO_ASSINANTE_ASSINATURA) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'PlanoAssinanteAssinaturaEntidade',
                    ('Tipo') => '2',
                ),
                (CO_EMPRESA) => Array(
                    ('Campo') => CO_EMPRESA,
                    ('Entidade') => 'EmpresaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PESSOA) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'PessoaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_ASSINANTE_MATRIZ) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteMatrizEntidade',
                    ('Tipo') => '2',
                ),
                (CO_ASSINANTE_FILIAL) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteFilialEntidade',
                    ('Tipo') => '2',
                ),
                (CO_FACILIDADE_BENEFICIO) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'FacilidadeBeneficioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_FUNCIONAMENTO) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'FuncionamentoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_IMAGEM_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'ImagemAssinanteEntidade',
                    ('Tipo') => '2',
                ),
                (CO_DIA_ESPECIAL) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'DiaEspecialEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (EmpresaEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_EMPRESA,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (AssinanteMatrizEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_ASSINANTE_FILIAL) => Array(
                    ('Campo') => CO_ASSINANTE_MATRIZ,
                    ('Entidade') => 'AssinanteFilialEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (AssinanteFilialEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_ASSINANTE_MATRIZ) => Array(
                    ('Campo') => CO_ASSINANTE_MATRIZ,
                    ('Entidade') => 'AssinanteMatrizEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (FacilidadePagamentoEntidade::TABELA) => Array(
                (CO_TIPO_PAGAMENTO) => Array(
                    ('Campo') => CO_TIPO_PAGAMENTO,
                    ('Entidade') => 'TipoPagamentoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_FACILIDADE_BENEFICIO) => Array(
                    ('Campo') => CO_FACILIDADE_BENEFICIO,
                    ('Entidade') => 'FacilidadeBeneficioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PAGAMENTO_BANDEIRA_CARTAO) => Array(
                    ('Campo') => CO_FACILIDADE_PAGAMENTO,
                    ('Entidade') => 'PagamentoBandeiraCartaoEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (TipoPagamentoEntidade::TABELA) => Array(
                (CO_FACILIDADE_PAGAMENTO) => Array(
                    ('Campo') => CO_TIPO_PAGAMENTO,
                    ('Entidade') => 'FacilidadePagamentoEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (FacilidadeBeneficioEntidade::TABELA) => Array(
                (CO_FACILIDADE_PAGAMENTO) => Array(
                    ('Campo') => CO_FACILIDADE_BENEFICIO,
                    ('Entidade') => 'FacilidadePagamentoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (FuncionamentoEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ImagemAssinanteEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_IMAGEM) => Array(
                    ('Campo') => CO_IMAGEM,
                    ('Entidade') => 'ImagemEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (DiaEspecialEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (TaxaCartaoEntidade::TABELA) => Array(
                (CO_PAGAMENTO_BANDEIRA_CARTAO) => Array(
                    ('Campo') => CO_PAGAMENTO_BANDEIRA_CARTAO,
                    ('Entidade') => 'PagamentoBandeiraCartaoEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (PagamentoBandeiraCartaoEntidade::TABELA) => Array(
                (CO_TAXA_CARTAO) => Array(
                    ('Campo') => CO_PAGAMENTO_BANDEIRA_CARTAO,
                    ('Entidade') => 'TaxaCartaoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_FACILIDADE_PAGAMENTO) => Array(
                    ('Campo') => CO_FACILIDADE_PAGAMENTO,
                    ('Entidade') => 'FacilidadePagamentoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_BANDEIRA_CARTAO) => Array(
                    ('Campo') => CO_BANDEIRA_CARTAO,
                    ('Entidade') => 'BandeiraCartaoEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (BandeiraCartaoEntidade::TABELA) => Array(
                (CO_PAGAMENTO_BANDEIRA_CARTAO) => Array(
                    ('Campo') => CO_BANDEIRA_CARTAO,
                    ('Entidade') => 'PagamentoBandeiraCartaoEntidade',
                    ('Tipo') => '2',
                ),
            ),
        );
    }
}
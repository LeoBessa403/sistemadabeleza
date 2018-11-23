<?php

/**
 * Class TipoPagamento
 */
class PermissaoAcessoEnum extends AbstractEnum
{
    const PERFIL_MASTER = 1;
    const LISTAR_AUDITORIA = 2;
    const DETALHAR_AUDITORIA = 3;
    const CADASTRO_USUARIO = 4;
    const LISTAR_USUARIO = 5;
    const MEU_PERFIL_USUARIO = 6;
    const LISTAR_PERFIL = 7;
    const CADASTRO_PERFIL = 8;
    const LISTAR_FUNCIONALIDADE = 9;
    const CADASTRO_FUNCIONALIDADE = 10;
    const FUNCIONALIDADES_PERFIL = 11;
    const TROCA_SENHA = 12;
    const DADOS_COMPLEMENTARES_ASSINANTE = 13;
    const LISTAR_DIA_ESPECIAL = 14;
    const CADASTRO_DIA_ESPECIAL = 15;
    const FORMAS_DE_PAGAMENTO = 16;
    const BANDEIRAS_TAXAS = 17;
    const HISTORICO_TAXA_CARTAO_DEBITO = 18;
    const HISTORICO_TAXA_CARTAO_CREDITO = 19;
    const CONFIGURACAO_DE_CLIENTE = 20;
    const CONFIGURACAO_DE_AGENDAMENTO = 21;
    const MOTIVO_DESCONTO = 22;

    public static $descricao = [
        PermissaoAcessoEnum::PERFIL_MASTER => 'Perfil Master',
        PermissaoAcessoEnum::LISTAR_AUDITORIA => 'Auditoria Listar',
        PermissaoAcessoEnum::DETALHAR_AUDITORIA => 'Auditoria Detalhar',
        PermissaoAcessoEnum::CADASTRO_USUARIO => 'Usuario Cadastrar',
        PermissaoAcessoEnum::LISTAR_USUARIO => 'Usuario Listar',
        PermissaoAcessoEnum::MEU_PERFIL_USUARIO => 'Meu Usuario',
        PermissaoAcessoEnum::LISTAR_PERFIL => 'Perfil Listar',
        PermissaoAcessoEnum::CADASTRO_PERFIL => 'Perfil Cadastrar',
        PermissaoAcessoEnum::LISTAR_FUNCIONALIDADE => 'Funcionalidade Listar',
        PermissaoAcessoEnum::FUNCIONALIDADES_PERFIL => 'Cadastro Funcionalidade',
        PermissaoAcessoEnum::CADASTRO_FUNCIONALIDADE => 'Funcionalidades Perfil',
        PermissaoAcessoEnum::TROCA_SENHA => 'Troca Senha Usuario',
        PermissaoAcessoEnum::DADOS_COMPLEMENTARES_ASSINANTE => 'Dados Complementares Assinante',
        PermissaoAcessoEnum::LISTAR_DIA_ESPECIAL => 'Listar Dia Especial',
        PermissaoAcessoEnum::CADASTRO_DIA_ESPECIAL => 'Cadastro Dia Especial',
        PermissaoAcessoEnum::FORMAS_DE_PAGAMENTO => 'Formas De Pagamento',
        PermissaoAcessoEnum::BANDEIRAS_TAXAS => 'Bandeiras / Taxas',
        PermissaoAcessoEnum::HISTORICO_TAXA_CARTAO_DEBITO => 'Historico Taxa Cartao Debito',
        PermissaoAcessoEnum::HISTORICO_TAXA_CARTAO_CREDITO => 'Historico Taxa Cartao Credito',
        PermissaoAcessoEnum::CONFIGURACAO_DE_CLIENTE => 'Configuração de Cliente',
        PermissaoAcessoEnum::CONFIGURACAO_DE_AGENDAMENTO => 'Configuração de Agendamento',
        PermissaoAcessoEnum::MOTIVO_DESCONTO => 'Motivo Desconto',
    ];

    public static $actions = [
        PermissaoAcessoEnum::PERFIL_MASTER => 'PerfilMaster',
        PermissaoAcessoEnum::LISTAR_AUDITORIA => 'ListarAuditoria',
        PermissaoAcessoEnum::DETALHAR_AUDITORIA => 'DetalharAuditoria',
        PermissaoAcessoEnum::CADASTRO_USUARIO => 'CadastroUsuario',
        PermissaoAcessoEnum::LISTAR_USUARIO => 'ListarUsuario',
        PermissaoAcessoEnum::MEU_PERFIL_USUARIO => 'MeuPerfilUsuario',
        PermissaoAcessoEnum::LISTAR_PERFIL => 'ListarPerfil',
        PermissaoAcessoEnum::CADASTRO_PERFIL => 'CadastroPerfil',
        PermissaoAcessoEnum::LISTAR_FUNCIONALIDADE => 'ListarFuncionalidade',
        PermissaoAcessoEnum::CADASTRO_FUNCIONALIDADE => 'CadastroFuncionalidade',
        PermissaoAcessoEnum::FUNCIONALIDADES_PERFIL => 'FuncionalidadesPerfil',
        PermissaoAcessoEnum::TROCA_SENHA => 'TrocaSenhaUsuario',
        PermissaoAcessoEnum::DADOS_COMPLEMENTARES_ASSINANTE => 'DadosComplementaresAssinante',
        PermissaoAcessoEnum::LISTAR_DIA_ESPECIAL => 'ListarDiaEspecialConfiguracao',
        PermissaoAcessoEnum::CADASTRO_DIA_ESPECIAL => 'CadastroDiaEspecialConfiguracao',
        PermissaoAcessoEnum::FORMAS_DE_PAGAMENTO => 'FormasDePagamentoConfiguracao',
        PermissaoAcessoEnum::BANDEIRAS_TAXAS => 'BandeiraTaxaConfiguracao',
        PermissaoAcessoEnum::HISTORICO_TAXA_CARTAO_DEBITO => 'HistoricoTaxaCartaoDebito',
        PermissaoAcessoEnum::HISTORICO_TAXA_CARTAO_CREDITO => 'HistoricoTaxaCartaoCredito',
        PermissaoAcessoEnum::CONFIGURACAO_DE_CLIENTE => 'ClienteConfiguracao',
        PermissaoAcessoEnum::CONFIGURACAO_DE_AGENDAMENTO => 'AgendamentoConfiguracao',
        PermissaoAcessoEnum::MOTIVO_DESCONTO => 'MotivoDescontoConfiguracao',
    ];
}

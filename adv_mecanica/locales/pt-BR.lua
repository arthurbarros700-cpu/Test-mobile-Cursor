--[[ ═══════════════════════════════════════════════════════════════════════════
     ADV Mecânica – Locales pt-BR
    ═══════════════════════════════════════════════════════════════════════════ ]]

Locales = Locales or {}
Locales['pt-BR'] = {
    -- General
    ['workshop']             = 'Oficina Mecânica',
    ['not_in_workshop']      = 'Você não está em uma oficina.',
    ['not_mechanic']         = 'Você não é mecânico.',
    ['not_authorized']       = 'Você não tem autorização.',
    ['no_vehicle']           = 'Nenhum veículo próximo.',

    -- Lift
    ['lift_raised']          = 'Veículo elevado com sucesso.',
    ['lift_lowered']         = 'Veículo baixado.',
    ['lift_vehicle']         = 'Elevar Veículo',
    ['lower_vehicle']        = 'Baixar Veículo',

    -- Tow
    ['tow_attached']         = 'Cabo de reboque conectado.',
    ['tow_detached']         = 'Cabo de reboque removido.',
    ['tow_vehicle']          = 'Reborcar Veículo',
    ['detach_tow']           = 'Desconectar Reboque',

    -- Repair
    ['repair_started']       = 'Reparo iniciado. Custo: {0}.',
    ['repair_done']          = 'Reparo concluído!',
    ['repair_cancelled']     = 'Reparo cancelado.',
    ['repair_failed']        = 'Reparo falhou.',
    ['repair_complete_pay']  = 'Trabalho concluído. Recebeu: {0}.',
    ['already_repairing']    = 'Você já está realizando um reparo.',
    ['no_parts_selected']    = 'Nenhuma peça selecionada.',
    ['repairs_applied']      = 'Reparos aplicados ao veículo.',
    ['repairing_part']       = 'Reparando: {0}',
    ['earned_xp']            = 'Ganhou {0} XP.',

    -- Payment
    ['insufficient_funds']   = 'Saldo insuficiente. Necessário: {0}.',
    ['missing_items']        = 'Itens em falta: {0}.',

    -- Parts & Stock
    ['item_purchased']       = '{0}x {1} comprado(s) com sucesso.',
    ['stock_added']          = '{0}x {1} adicionado(s) ao estoque.',
    ['stock_insufficient']   = 'Estoque insuficiente de {0}.',
    ['low_stock_alert']      = 'Estoque baixo: {0} – apenas {1} unidade(s).',
    ['auto_restocked']       = 'Reabastecimento automático: {0} item(ns) reposto(s).',
    ['restock_complete']     = 'Pedido de reabastecimento concluído: {0} item(ns).',

    -- Inspect
    ['inspect_vehicle']      = 'Inspecionar Veículo',
    ['open_workshop']        = 'Abrir Painel da Oficina',
}

-- ─── Global locale function ───────────────────────────────────────────────────
function Locale(key, ...)
    local str  = Locales['pt-BR'][key] or key
    local args = { ... }
    str = str:gsub('{(%d+)}', function(i)
        return tostring(args[tonumber(i) + 1] or '')
    end)
    return str
end

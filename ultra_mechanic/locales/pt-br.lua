Locales = Locales or {}

Locales["pt-br"] = {
    panel_title = "Ultra Mechanic Pro",
    panel_subtitle = "Diagnostico avancado e reparo por componentes",
    open_panel = "Abrir painel de mecanica",
    no_permission = "Voce nao tem permissao para usar a oficina.",
    not_in_workshop = "Voce precisa estar em uma oficina.",
    no_vehicle = "Nenhum veiculo valido encontrado.",
    quote_created = "Orcamento criado com sucesso.",
    repair_started = "Reparo iniciado.",
    repair_finished = "Reparo concluido com sucesso.",
    repair_cancelled = "Reparo cancelado.",
    not_enough_stock = "Estoque insuficiente para esta operacao.",
    stock_updated = "Estoque atualizado.",
    invalid_request = "Solicitacao invalida.",
    payment_failed = "Pagamento recusado.",
    payment_success = "Pagamento aprovado.",
    cooldown_active = "Aguarde alguns segundos para repetir esta acao.",
    progress_repair = "Executando reparo profissional...",
    progress_diagnosis = "Executando varredura do veiculo..."
}

function L(key, ...)
    local lang = (Config and Config.Locale) or "pt-br"
    local selected = Locales[lang] or Locales["pt-br"] or {}
    local phrase = selected[key] or key
    if select("#", ...) > 0 then
        return phrase:format(...)
    end
    return phrase
end

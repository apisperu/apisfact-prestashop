<div class="panel">
    <h3>
        {* <i class="icon icon-tags"></i>  *}
        <img src="https://apisperu.com/favicon.png" style="height: 1.2em" />
        <span>{l s='Facturación Electrónica SUNAT' mod='apisfact_prestashop'}</span>
    </h3>
    <div class="row">
        <div class="col-sm-6">
            <p>Antes de emitir, revise los detalles de su comprobante</p>
            <ul>
                <li>Tipo: <b>Boleta</b></li>
                <li>Serie: <b>F001-30</b></li>
                <li>Nombre: <b>Juan Garcia</b></li>
                <li>Documento: <b>9076987</b></li>
            </ul>
            <div class="row-margin-bottom row-margin-top order_action">
                <form action="" method="POST">
                    <button type="submit" class="btn btn-success" name="submit_apisfact_prestashop_invoice_send" value="1">Emitir F001-21 </button>
                </form>
            </div>
        </div>
        <div class="col-sm-6">
            {foreach from=$data item=d}
                {if $d['success'] == 1}
                    <div class="alert alert-success">
                        {$d['created_at']} : {$d['response_description']}
                    </div>
                {else}
                    <div class="alert alert-danger">
                        {$d['created_at']} : {$d['response_description']}
                    </div>
                {/if}
            {/foreach}
        </div>
    </div>
    
</div>
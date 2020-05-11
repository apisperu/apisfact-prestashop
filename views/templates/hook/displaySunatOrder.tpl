
{literal}
    <script>
        function ap_emitir(btn) {
            $(btn).attr('disabled', true);
            $.ajax({
                url: 'https://facturacion.apisperu.com/api/v1/invoice/send',
                type: 'POST',
                headers: {'Authorization': 'Bearer ' + {/literal}{$token}{literal}}
            });
        }
    </script>
{/literal}


<div class="panel">
    <h3><i class="icon icon-tags"></i> {l s='Facturación Electrónica SUNAT' mod='ap_facturacion'}</h3>
    <div class="row-margin-bottom row-margin-top order_action">
        <form action="" method="POST">
            <button type="submit" class="btn btn-primary" name="submit_ap_facturacion_invoice_send" value="1">Emitir SUNAT </button>
        </form>
    </div>
    <div class="alert alert-success">
        Bien
    </div>
</div>
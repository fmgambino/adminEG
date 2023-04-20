<div class="row-fluid" style="margin-top: 0">
    <div class="span4">
        <div class="widget-box">
            <div class="widget-title">
                <span class="icon">
                    <i class="fas fa-diagnoses"></i>
                </span>
                <h5>Informes Rápidos de OS</h5>
            </div>
            <div class="widget-content">
                <ul style="flex-direction: row;" class="site-stats">
                    <li><a target="_blank" href="<?php echo base_url() ?>index.php/relatorios/osRapid"><i class="fas fa-diagnoses"></i> <small>Todas las OS - pdf</small></a></li>
                    <li><a target="_blank" href="<?php echo base_url() ?>index.php/relatorios/osRapid?format=xls"><i class="fas fa-diagnoses"></i> <small>Todas las OS - xls</small></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="span8">
        <div class="widget-box">
            <div class="widget-title">
                <span class="icon">
                    <i class="fas fa-diagnoses"></i>
                </span>
                <h5>Informes de OS Personalizables</h5>
            </div>
            <div class="widget-content">
                <div class="span12 well">
                    <form target="_blank" action="<?php echo base_url() ?>index.php/relatorios/osCustom" method="get">
                        <div class="span12 well">
                            <div class="span6">
                                <label for="">Fecha desde:</label>
                                <input type="date" name="dataInicial" class="span12" />
                            </div>
                            <div class="span6">
                                <label for="">Hasta:</label>
                                <input type="date" name="dataFinal" class="span12" />
                            </div>
                        </div>
                        <div class="span12 well" style="margin-left: 0">
                            <div class="span6">
                                <label for="">Cliente:</label>
                                <input type="text" id="cliente" class="span12" />
                                <input type="hidden" name="cliente" id="clienteHide" />
                            </div>
                            <div class="span6">
                                <label for="">Responsable:</label>
                                <input type="text" id="tecnico" class="span12" />
                                <input type="hidden" name="responsavel" id="responsavelHide" />
                            </div>
                        </div>
                        <div class="span12 well" style="margin-left: 0">
                            <div class="span6">
                                <label for="">Estado:</label>
                                <select name="status" id="" class="span12">
                                    <option value=""></option>
                                    <option value="Orçamento">Presupuesto</option>
                                    <option value="Aberto">Abierto</option>
                                    <option value="Em Andamento">En Proceso</option>
                                    <option value="Finalizado">Finalizado</option>
                                    <option value="Faturado">Facturado</option>
                                    <option value="Cancelado">Cancelado</option>
                                    <option value="Negociação">Negociando</option>
                                    <option value="Aguardando Peças">Aguardando Piezas/Repuestos</option>
                                </select>
                            </div>
                            <div class="span6">
                                <label for="">Tipo de impresión:</label>
                                <select name="format" class="span12">
                                    <option value="">PDF</option>
                                    <option value="xls">XLS</option>
                                </select>
                            </div>
                        </div>

                        <div class="span12" style="display:flex;justify-content: center">
                            <input type="reset" class="button btn btn-warning" value="Limpar" / style="justify-content: center">
                            <button class="button btn btn-inverse"><span class="button__icon"><i class="bx bx-printer"></i></span> <span class="button__text2">Imprimir</span></button>
                        </div>
                    </form>
                </div>
                .
            </div>
        </div>
    </div>
</div>
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/jquery-ui/css/smoothness/jquery-ui-1.9.2.custom.css" />
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/jquery-ui/js/jquery-ui-1.9.2.custom.js"></script>
<script src="<?php echo base_url(); ?>assets/js/maskmoney.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $(".money").maskMoney();
        $("#cliente").autocomplete({
            source: "<?php echo base_url(); ?>index.php/os/autoCompleteCliente",
            minLength: 2,
            select: function(event, ui) {
                $("#clienteHide").val(ui.item.id);
            }
        });
        $("#tecnico").autocomplete({
            source: "<?php echo base_url(); ?>index.php/os/autoCompleteUsuario",
            minLength: 2,
            select: function(event, ui) {
                $("#responsavelHide").val(ui.item.id);
            }
        });
    });
</script>

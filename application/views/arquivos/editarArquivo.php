<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/jquery-ui/css/smoothness/jquery-ui-1.9.2.custom.css" />
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/jquery-ui/js/jquery-ui-1.9.2.custom.js"></script>

<div class="row-fluid" style="margin-top:0">
    <div class="span12">
        <div class="widget-box">
            <div class="widget-title">
                <span class="icon">
                    <i class="fas fa-hdd"></i>
                </span>
                <h5>Registro de archivos</h5>
            </div>
            <div class="widget-content nopadding tab-content">
                <?php echo $custom_error; ?>
                <form action="<?php echo current_url(); ?>" id="formArquivo" method="post" class="form-horizontal">


                    <div class="control-group">
                        <label for="nome" class="control-label">Nombre del Archivo*</label>
                        <div class="controls">
                            <input id="nome" type="text" name="nome" value="<?php echo $result->documento; ?> " />

                            <input id="idDocumentos" type="hidden" name="idDocumentos" value="<?php echo $result->idDocumentos; ?> " />
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="descricao" class="control-label">Descripción</label>
                        <div class="controls">
                            <textarea rows="3" cols="30" name="descricao" id="descricao"><?php echo $result->descricao; ?></textarea>
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="descricao" class="control-label">Fecha</label>
                        <div class="controls">
                            <input id="data" type="text" class="datepicker" name="data" value="<?php echo date('d/m/Y', strtotime($result->cadastro)); ?>" />
                        </div>
                    </div>

                    <div class="form-actions">
                        <div class="span12">
                            <div class="span6 offset3" style="display:flex;justify-content: center">
                                <button type="submit" class="button btn btn-primary"><span class="button__icon"><i class="bx bx-sync"></i></span><span class="button__text2">Actualizar</span></button>
                                <a href="<?php echo base_url() ?>index.php/arquivos" class="button btn btn-mini btn-warning"><span class="button__icon"><i class="bx bx-undo"></i></span> <span class="button__text2">Volver</span></a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="<?php echo base_url() ?>assets/js/jquery.validate.js"></script>
<script type="text/javascript">
    $(document).ready(function() {

        $('#formArquivo').validate({
            rules: {
                nome: {
                    required: true
                }
            },
            messages: {
                nome: {
                    required: 'Campo Requerido.'
                }
            },

            errorClass: "help-inline",
            errorElement: "span",
            highlight: function(element, errorClass, validClass) {
                $(element).parents('.control-group').addClass('error');
                $(element).parents('.control-group').removeClass('success');
            },
            unhighlight: function(element, errorClass, validClass) {
                $(element).parents('.control-group').removeClass('error');
                $(element).parents('.control-group').addClass('success');
            }
        });


        $(".datepicker").datepicker({
            dateFormat: 'dd/mm/yy'
        });
    });
</script>

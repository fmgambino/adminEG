<script src="<?php echo base_url() ?>assets/js/jquery.mask.min.js"></script>
<script src="<?php echo base_url() ?>assets/js/sweetalert2.all.min.js"></script>
<script src="<?php echo base_url() ?>assets/js/funcoes.js"></script>

<div class="row-fluid" style="margin-top:0">
    <div class="span12">
        <div class="widget-box">
            <div class="widget-title" style="margin: -20px 0 0">
                <span class="icon">
                    <i class="fas fa-user"></i>
                </span>
                <h5>Registro de Usuario</h5>
            </div>
            <div class="widget-content nopadding tab-content">
                <?php if ($custom_error != '') {
                    echo '<div class="alert alert-danger">' . $custom_error . '</div>';
                } ?>
                <form action="<?php echo current_url(); ?>" id="formUsuario" method="post" class="form-horizontal">
                    <?php echo form_hidden('codpais', set_value('codpais')) ?>
                    <div class="control-group">
                        <label for="nome" class="control-label">Nombre<span class="required">*</span></label>
                        <div class="controls">
                            <input id="nome" type="text" name="nome" value="<?php echo set_value('nome'); ?>" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="rg" class="control-label">Razón Social<span class="required">*</span></label>
                        <div class="controls">
                            <input id="rg" type="text" name="rg" value="<?php echo set_value('rg'); ?>" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="cpf" class="control-label">CUIT/CUIL<span class="required">*</span></label>
                        <div class="controls">
                            <input class="" type="text" id="cpfUser" name="cpf" value="<?php echo set_value('cpf'); ?>" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="telefone" class="control-label">Teléfono</label>
                        <div class="controls">
                            <div class="input-prepend">
                                <span class="add-on"><span class="callingcode"></span></span></span>
                                <input id="telefone" name="telefone" type="number" class="input-block-level" value="<?php echo set_value('telefone'); ?>">
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="celular">Celular</label>
                        <div class="controls">
                            <div class="input-prepend">
                                <span class="add-on"><span class="callingcode"></span></span></span>
                                <input id="celular" name="celular" type="number" class="input-block-level" value="<?php echo set_value('celular'); ?>">
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="email" class="control-label">Email<span class="required">*</span></label>
                        <div class="controls">
                            <input id="email" type="text" name="email" value="<?php echo set_value('email'); ?>" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="senha" class="control-label">Consetraseña<span class="required">*</span></label>
                        <div class="controls">
                            <input id="senha" type="password" name="senha" value="<?php echo set_value('senha'); ?>" />
                        </div>
                    </div>

                    <div class="control-group" class="control-label">
                        <label for="cep" class="control-label">CP<span class="required">*</span></label>
                        <div class="controls">
                            <input id="cep" type="text" name="cep" value="<?php echo set_value('cep'); ?>" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="rua" class="control-label">Dirección<span class="required">*</span></label>
                        <div class="controls">
                            <input id="rua" type="text" name="rua" value="<?php echo set_value('rua'); ?>" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="numero" class="control-label">Numero<span class="required">*</span></label>
                        <div class="controls">
                            <input id="numero" type="text" name="numero" value="<?php echo set_value('numero'); ?>" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="bairro" class="control-label">Barrio<span class="required">*</span></label>
                        <div class="controls">
                            <input id="bairro" type="text" name="bairro" value="<?php echo set_value('bairro'); ?>" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="cidade" class="control-label">Ciudad<span class="required">*</span></label>
                        <div class="controls">
                            <input id="cidade" type="text" name="cidade" value="<?php echo set_value('cidade'); ?>" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="estado" class="control-label">Estado/Provincia<span class="required">*</span></label>
                        <div class="controls">
                            <input id="estado" type="text" name="estado" value="<?php echo set_value('estado'); ?>" />
                        </div>
                    </div>

                    <div class="control-group" class="control-label">
                        <label for="pais" class="control-label">País</label>
                        <div class="controls">
                            <select id="pais" name="pais" class="">
                                <option value="">Seleccione...</option>
                            </select>
                        </div>
                    </div>

                    <!-- Campo para inserir a data de validade de acesso do usuário-->
                    <div class="control-group">
                        <label for="dataExpiracao" class="control-label">Expira el <span class="required">*</span></label>
                        <div class="controls">
                            <input id="dataExpiracao" type="date" name="dataExpiracao" value="<?php echo set_value('dataExpiracao'); ?>" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label">Situación*</label>
                        <div class="controls">
                            <select name="situacao" id="situacao">
                                <option value="1">Activo</option>
                                <option value="0">Inactivo</option>
                            </select>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label">Permisos<span class="required">*</span></label>
                        <div class="controls">
                            <select name="permissoes_id" id="permissoes_id">
                                <?php foreach ($permissoes as $p) {
                                    echo '<option value="' . $p->idPermissao . '">' . $p->nome . '</option>';
                                } ?>
                            </select>
                        </div>
                    </div>

                    <div class="form-actions">
                        <div class="span12">
                            <div class="span6 offset3" style="display:flex">
                                <button type="submit" class="button btn btn-success">
                                  <span class="button__icon"><i class='bx bx-plus-circle'></i></span><span class="button__text2">Agregar</span></button>
                                <a href="<?php echo base_url() ?>index.php/usuarios" id="" class="button btn btn-mini btn-warning">
                                  <span class="button__icon"><i class="bx bx-undo"></i></span> <span class="button__text2">Volver</span></a>
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
        $.getJSON('<?php echo base_url() ?>assets/json/countries.json', function(data) {
            $('#pais').change((e) => {
                var value = e.target.value
                var country = data.filter((e) => e.name == value)[0]
                if(country) {
                    $(`input[name="codpais"]`).val(country.callingCodes[0])
                    $('.callingcode').html(`<img src="${country.flags.png}" width="24"/> <span class="text-muted">+${country.callingCodes[0]}</span>`)
                }
            })
            for (i in data) {
                $('#pais').append(new Option(data[i].name, data[i].name));
            }

            var curState = '<?php echo set_value('pais') ?: 'Argentina'; ?>';
            var country = data.filter((e) => e.name == curState)[0]
            if(country) {
                $('.callingcode').html(`<img src="${country.flags.png}" width="24"/> <span class="text-muted">+${country.callingCodes[0]}</span>`)
                $('input[name="codpais"]').val(country.callingCodes[0])
            }
            $("#pais option[value=" + curState + "]").prop("selected", true);
        });

        $('#formUsuario').validate({
            rules: {
                nome: {
                    required: true
                },
                dataExpiracao: {
                    required: true
                },
                cpf: {
                    required: true
                },
                telefone: {
                    required: true
                },
                email: {
                    required: true
                },
                senha: {
                    required: true
                },
                rua: {
                    required: true
                },
                numero: {
                    required: true
                },
                bairro: {
                    required: true
                },
                cidade: {
                    required: true
                },
                estado: {
                    required: true
                },
                cep: {
                    required: true
                }
            },
            messages: {
                nome: {
                    required: 'Campo Requerido.'
                },
                dataExpiracao: {
                    required: 'Campo Requerido.'
                },
                cpf: {
                    required: 'Campo Requerido.'
                },
                telefone: {
                    required: 'Campo Requerido.'
                },
                email: {
                    required: 'Campo Requerido.'
                },
                senha: {
                    required: 'Campo Requerido.'
                },
                rua: {
                    required: 'Campo Requerido.'
                },
                numero: {
                    required: 'Campo Requerido.'
                },
                bairro: {
                    required: 'Campo Requerido.'
                },
                cidade: {
                    required: 'Campo Requerido.'
                },
                estado: {
                    required: 'Campo Requerido.'
                },
                cep: {
                    required: 'Campo Requerido.'
                }
            },
            errorClass: "help-inline",
            errorElement: "span",
            highlight: function(element, errorClass, validClass) {
                $(element).parents('.control-group').addClass('error');
            },
            unhighlight: function(element, errorClass, validClass) {
                $(element).parents('.control-group').removeClass('error');
                $(element).parents('.control-group').addClass('success');
            }
        });
    });
</script>

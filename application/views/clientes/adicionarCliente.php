<script src="<?php echo base_url() ?>assets/js/jquery.mask.min.js"></script>
<script src="<?php echo base_url() ?>assets/js/sweetalert2.all.min.js"></script>
<script src="<?php echo base_url() ?>assets/js/funcoes.js"></script>
<style>
    #imgSenha {
        width: 18px;
        cursor: pointer;
    }

    /* Hiding the checkbox, but allowing it to be focused */
    .badgebox {
        opacity: 0;
    }

    .badgebox+.badge {
        /* Move the check mark away when unchecked */
        text-indent: -999999px;
        /* Makes the badge's width stay the same checked and unchecked */
        width: 27px;
    }

    .badgebox:focus+.badge {
        /* Set something to make the badge looks focused */
        /* This really depends on the application, in my case it was: */
        /* Adding a light border */
        box-shadow: inset 0px 0px 5px;
        /* Taking the difference out of the padding */
    }

    .badgebox:checked+.badge {
        /* Move the check mark back when checked */
        text-indent: 0;
    }
    .control-group.error .help-inline {
            display: flex;
        }
        
        .form-horizontal .control-group {
            border-bottom: 1px solid #ffffff;
        }
        
        .form-horizontal .controls {
            margin-left   : 20px;
            padding-bottom: 8px 0;
        }
    
        .form-horizontal .control-label {
            text-align : left;
            padding-top: 15px;
        }
    
        .nopadding {
            padding     : 0 20px !important;
            margin-right: 20px;
        }
    
        .widget-title h5 {
            padding-bottom : 30px;
            text-align-last: left;
            font-size      : 2em;
            font-weight    : 500;
        }
    
        @media (max-width: 480px) {
            form {
                display: contents !important;
            }
        
            .form-horizontal .control-label {
                margin-bottom: -6px;
            }
            .btn-xs {
                position: initial !important;
            }
        }
</style>
<div class="row-fluid" style="margin-top:0">
    <div class="span12">
        <div class="widget-box">
            <div class="widget-title" style="margin: -20px 0 0">
                <span class="icon">
                    <i class="fas fa-user"></i>
                </span>
                <h5>Registro de cliente</h5>
            </div>
            <?php if ($custom_error != '') {
                echo '<div class="alert alert-danger">' . $custom_error . '</div>';
            } ?>
            <form action="<?php echo current_url(); ?>" id="formCliente" method="post" class="form-horizontal">
                <?php echo form_hidden('codpais', set_value('codpais')) ?>
                <div class="widget-content nopadding tab-content">
                    <div class="span6">
                        <div class="control-group">
                            <label for="documento" class="control-label">CUIT/CUIL</label>
                            <div class="controls">
                                <input id="documento" class="cpfcnpj" type="text" name="documento" value="<?php echo set_value('documento'); ?>" />
                                <!--button id="buscar_info_cnpj" class="btn btn-xs" type="button">Buscar(CUIT)</button-->
                            </div>
                        </div>
                        <div class="control-group">
                            <label for="nomeCliente" class="control-label">Nombre/Razón Social<span class="required">*</span></label>
                            <div class="controls">
                                <input id="nomeCliente" type="text" name="nomeCliente" value="<?php echo set_value('nomeCliente'); ?>" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label for="contato" class="control-label">Contacto:</label>
                            <div class="controls">
                                <input class="contato" type="text" name="contacto" value="<?php echo set_value('contato'); ?>" />
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
                            <label for="celular" class="control-label">Celular</label>
                            <div class="controls">
                                <div class="input-prepend">
                                    <span class="add-on"><span class="callingcode"></span></span></span>
                                    <input id="celular" name="celular" type="number" class="input-block-level" value="<?php echo set_value('celular'); ?>">
                                </div>
                            </div>                            
                        </div>
                        <div class="control-group">
                            <label for="email" class="control-label">Email</label>
                            <div class="controls">
                                <input id="email" type="text" name="email" value="<?php echo set_value('email'); ?>" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label for="senha" class="control-label">Contraseña</label>
                            <div class="controls">
                                <input class="form-control" id="senha" type="password" name="Contraseña" value="<?php echo set_value('senha'); ?>" />
                                <img id="imgSenha" src="<?php echo base_url() ?>assets/img/eye.svg" alt="">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Tipo de Cliente</label>
                            <div class="controls">
                                <label for="fornecedor" class="btn btn-default">¿Es Proveedor?
                                    <input type="checkbox" id="fornecedor" name="fornecedor" class="badgebox" value="0">
                                    <span class="badge">&check;</span>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="span6">
                        <div class="control-group" class="control-label">
                            <label for="cep" class="control-label">CP</label>
                            <div class="controls">
                                <input id="cep" type="text" name="cep" value="<?php echo set_value('cep'); ?>" />
                            </div>
                        </div>
                        <div class="control-group" class="control-label">
                            <label for="rua" class="control-label">Domicilio</label>
                            <div class="controls">
                                <input id="rua" type="text" name="rua" value="<?php echo set_value('rua'); ?>" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label for="numero" class="control-label">Número</label>
                            <div class="controls">
                                <input id="numero" type="text" name="numero" value="<?php echo set_value('numero'); ?>" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label for="complemento" class="control-label">Piso/Dto/Mza.</label>
                            <div class="controls">
                                <input id="complemento" type="text" name="complemento" value="<?php echo set_value('complemento'); ?>" />
                            </div>
                        </div>
                        <div class="control-group" class="control-label">
                            <label for="bairro" class="control-label">Barrio</label>
                            <div class="controls">
                                <input id="bairro" type="text" name="bairro" value="<?php echo set_value('bairro'); ?>" />
                            </div>
                        </div>
                        <div class="control-group" class="control-label">
                            <label for="cidade" class="control-label">Ciudad</label>
                            <div class="controls">
                                <input id="cidade" type="text" name="cidade" value="<?php echo set_value('cidade'); ?>" />
                            </div>
                        </div>
                        <div class="control-group" class="control-label">
                            <label for="estado" class="control-label">Estado/Provincia</label>
                            <div class="controls">
                                <input id="estado" type="text" name="estado" value="<?php echo set_value('estado'); ?>" />
                                <!--select id="estado" name="estado">
                                    <option value="">Seleccione...</option>
                                </select-->
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
                    </div>
                </div>
                <div class="form-actions">
                    <div class="span12">
                        <div class="span6 offset3" style="display:flex;justify-content: center">
                            <button type="submit" class="button btn btn-mini btn-success"><span class="button__icon"><i class='bx bx-save'></i></span> <span class="button__text2">Guardar</span></a></button>
                            <a title="Voltar" class="button btn btn-warning" href="<?php echo site_url() ?>/clientes"><span class="button__icon"><i class="bx bx-undo"></i></span> <span class="button__text2">Volver</span></a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="<?php echo base_url() ?>assets/js/jquery.validate.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        let container = document.querySelector('div');
        let input = document.querySelector('#senha');
        let icon = document.querySelector('#imgSenha');

        icon.addEventListener('click', function() {
            container.classList.toggle('visible');
            if (container.classList.contains('visible')) {
                icon.src = '<?php echo base_url() ?>assets/img/eye-off.svg';
                input.type = 'text';
            } else {
                icon.src = '<?php echo base_url() ?>assets/img/eye.svg'
                input.type = 'password';
            }
        });
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
        $("#nomeCliente").focus();
        $('#formCliente').validate({
            rules: {
                nomeCliente: {
                    required: true
                },
            },
            messages: {
                nomeCliente: {
                    required: 'Campo Obligatorio.'
                },
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

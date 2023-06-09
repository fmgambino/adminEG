<!DOCTYPE html>
<html lang="pt-br">
<head>
<title><?= $this->config->item('app_name') ?> </title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/css/matrix-login.css" />
    <link href="<?= base_url(); ?>assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="shortcut icon" type="image/png" href="<?= base_url(); ?>assets/img/faviconAppleWhiteBox.png" />
    <script src="<?= base_url() ?>assets/js/jquery-1.12.4.min.js"></script>
</head>
<body>
<div class="main-login">
  <div class="left-login">

<!-- Saudação -->
<h1 class="h-one">
    <?php
    function saudacao($nome = '')
    {
        date_default_timezone_set('America/Sao_Paulo');
        $hora = date('H');
        if ($hora >= 6 && $hora <= 12) {
            return 'Hola! Buenos Días' . (empty($nome) ? '' : ', ' . $nome);
        } elseif ($hora > 12 && $hora <=18) {
            return 'Hola! Buenas Tardes' . (empty($nome) ? '' : ', ' . $nome);
        } else {
            return 'Hola! Buenas Noches' . (empty($nome) ? '' : ', ' . $nome);
        }
    }
$login = 'Bienvenidos';
echo saudacao($login);

// Irá retornar conforme o horário:
?></h1>

<h2 class="h-two"> Al Sistema de Gestión de Electrónica Gambino</h2>
    <img src="<?php echo base_url() ?>assets/img/dashboard-animate.svg" class="left-login-image" alt="Electrónica Gambino - Versión: <?= $this->config->item('app_version'); ?>">
</div>
<div id="loginbox">
    <form class="form-vertical" id="formLogin" method="post" action="<?= site_url('login/verificarLogin') ?>">
    <?php if ($this->session->flashdata('error') != null) { ?>
        <div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <?= $this->session->flashdata('error'); ?>
        </div>
    </div>
  <?php } ?>
  <div class="d-flex flex-column">
      <div class="right-login">
        <div class="container">
          <div class="card">
            <div class="content">
              <div id="newlog">
                <div class="icon2">
                  <img src="<?php echo base_url() ?>assets/img/logos/iconAppleWhite.png">
                </div>
                <div class="title01">
                  <?= $configuration['app_theme'] == 'white' ? '<img src="'. base_url() .'assets/img/logos/2.png">' : '<img src="'. base_url() .'assets/img/logos/6.png">'; ?>
                </div>
              </div>
              <div id="mcell">Versión: <?= $this->config->item('app_version'); ?></div>
              <form action="index.html" method="post">
                <div class="input-field">
                  <label class="fas fa-user" for="nome"></label>
                  <input id="email" name="email" type="text" placeholder="Email">
                </div>
                <div class="input-field">
                  <label class="fas fa-lock" for="senha"></label>
                <input name="senha" type="password" placeholder="Contraseña">
              </div>
              <div class="center"><button id="btn-acessar">Acceder</button>
              </div>
              <div class="links-uteis"><a href="https://admin.electronicagambino.com/index.php/login"><p><?= date('Y'); ?> &copy; Electrónica Gambino</p></a>
              </div>
              <a href="#notification" id="call-modal" role="button" class="btn" data-toggle="modal" style="display: none ">notificación</a>
              <div id="notification" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                  <h4 id="myModalLabel">Electrónica Gambino</h4>
                </div>
                <div class="modal-body">
                  <h5 style="text-align: center" id="message">Los datos de inicio de sesión son incorrectos, ¡inténtalo de nuevo!</h5>
                </div>
                <div class="modal-footer">
                  <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Cerrar</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <a href="#notification" id="call-modal" role="button" class="btn" data-toggle="modal" style="display: none ">notificación</a>
    <div id="notification" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-header">
        <h4 id="myModalLabel">Electrónica Gambino</h4>
      </div>
      <div class="modal-body">
        <h5 style="text-align: center" id="message">Los datos de inicio de sesión son incorrectos, ¡inténtalo de nuevo!</h5>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Cerrar</button>
      </div>
    </div>

<script src="<?= base_url() ?>assets/js/bootstrap.min.js"></script>
<script src="<?= base_url() ?>assets/js/validate.js"></script>
<script type="text/javascript">

$(document).ready(function() {
    $('#email').focus();
    $("#formLogin").validate({
        rules: {
            email: {
                required: true,
                email: true
            },
            senha: {
                required: true
            }
        },
        messages: {
            email: {
                required: '',
                email: 'E-mail no válido.'
            },
            senha: {
                required: 'Campos Requeridos.'
            }
        },
        submitHandler: function(form) {
                    var dados = $(form).serialize();
                    $('#btn-acessar').addClass('disabled');
                    $('#progress-acessar').removeClass('hide');

                    $.ajax({
                        type: "POST",
                        url: "<?= site_url('login/verificarLogin?ajax=true'); ?>",
                        data: dados,
                        dataType: 'json',
                        success: function(data) {
                            if (data.result == true) {
                                window.location.href = "<?= site_url('Sgtos'); ?>";
                            } else {


                                $('#btn-acessar').removeClass('disabled');
                                $('#progress-acessar').addClass('hide');

                                $('#message').text(data.message || 'Los datos de inicio de sesión son incorrectos, inténtalo de nuevo. Los datos de inicio de sesión son incorrectos, ¡inténtalo de nuevo!');
                                $('#call-modal').trigger('click');
                            }
                        }
                    });

                    return false;
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
</body>
</html>

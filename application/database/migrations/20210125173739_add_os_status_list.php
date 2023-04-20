<?php

class Migration_add_os_status_list extends CI_Migration
{
    public function up()
    {
        $sql = "INSERT INTO `configuracoes` (`idConfig`, `config`, `valor`) VALUES (12, 'os_status_list', '[\"Abierto\",\"Facturado\",\"Negociando\",\"Em Andamento\",\"Presupuesto\",\"Finalizado\",\"Cancelado\",\"Aguardando Pe\\u00e7as\"]')";
        $this->db->query($sql);
    }

    public function down()
    {
        $this->db->query("DELETE FROM `configuracoes` WHERE `configuracoes`.`idConfig` = 12");
    }
}

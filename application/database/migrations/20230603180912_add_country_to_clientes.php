<?php

class Migration_add_country_to_clientes extends CI_Migration
{
    public function up()
    {
        $this->db->query("ALTER TABLE `clientes` ADD `pais` VARCHAR(255) NULL DEFAULT NULL");
        $this->db->query("ALTER TABLE `clientes` ADD `codpais` VARCHAR(20) NULL DEFAULT NULL");
    }

    public function down()
    {
        $this->db->query("ALTER TABLE `clientes` DROP `pais`");
        $this->db->query("ALTER TABLE `clientes` DROP `codpais`");
    }
}

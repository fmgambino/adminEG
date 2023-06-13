<?php

class Migration_add_country_and_prefix_to_users extends CI_Migration
{
    public function up()
    {
        $this->db->query("ALTER TABLE `usuarios` ADD `pais` VARCHAR(255) NULL DEFAULT NULL");
        $this->db->query("ALTER TABLE `usuarios` ADD `codpais` VARCHAR(20) NULL DEFAULT NULL");
    }

    public function down()
    {
        $this->db->query("ALTER TABLE `usuarios` DROP `pais`");
        $this->db->query("ALTER TABLE `usuarios` DROP `codpais`");
    }
}

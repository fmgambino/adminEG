<?php

class Migration_add_position_to_os_relations extends CI_Migration
{
    public function up()
    {
        $this->db->query("ALTER TABLE `servicos_os` ADD `position` INTEGER(5) NULL DEFAULT 99");
        $this->db->query("ALTER TABLE `produtos_os` ADD `position` INTEGER(5) NULL DEFAULT 99");
    }

    public function down()
    {
        $this->db->query("ALTER TABLE `servicos_os` DROP `position`");
        $this->db->query("ALTER TABLE `produtos_os` DROP `position`");
    }
}

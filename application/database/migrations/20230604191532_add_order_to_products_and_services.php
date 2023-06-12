<?php

class Migration_add_order_to_products_and_services extends CI_Migration
{
    public function up()
    {
        $this->db->query("ALTER TABLE `servicos` ADD `position` INTEGER(5) NULL DEFAULT 999");
        $this->db->query("ALTER TABLE `produtos` ADD `position` INTEGER(5) NULL DEFAULT 999");
    }

    public function down()
    {
        $this->db->query("ALTER TABLE `servicos` DROP `position`");
        $this->db->query("ALTER TABLE `produtos` DROP `position`");
    }
}

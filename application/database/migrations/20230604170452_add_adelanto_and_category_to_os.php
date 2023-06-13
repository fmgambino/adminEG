<?php

class Migration_add_adelanto_and_category_to_os extends CI_Migration
{
    public function up()
    {
        $this->db->query("ALTER TABLE `os` ADD `adelanto` DECIMAL(10,2) NULL DEFAULT NULL");
        $this->db->query("ALTER TABLE `os` ADD `categoria` VARCHAR(255) NULL DEFAULT NULL");
    }

    public function down()
    {
        $this->db->query("ALTER TABLE `os` DROP `adelanto`");
        $this->db->query("ALTER TABLE `os` DROP `categoria`");
    }
}

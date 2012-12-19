<?php
/**
* @version      3.10.1 10.12.2011
* @author       MAXXmarketing GmbH
* @package      Jshopping
* @copyright    Copyright (C) 2010 webdesigner-profi.de. All rights reserved.
* @license      GNU/GPL
*/

defined('_JEXEC') or die('Restricted access');
jimport( 'joomla.application.component.model');

class JshoppingModelProductFields extends JModel{ 

    function getList($groupordering = 0, $order = null, $orderDir = null){
        $db = JFactory::getDBO();
        $lang = JSFactory::getLang();
        $ordering = "F.ordering";
        if ($groupordering){
            $ordering = "G.ordering, F.ordering";
        } 
        if ($order && $orderDir){
            $ordering = $order." ".$orderDir;
        }
        $query = "SELECT F.id, F.`".$lang->get("name")."` as name, F.`".$lang->get("description")."` as description, F.allcats, F.type, F.cats, F.ordering, F.`group`, G.`".$lang->get("name")."` as groupname, multilist FROM `#__jshopping_products_extra_fields` as F left join `#__jshopping_products_extra_field_groups` as G on G.id=F.group order by ".$ordering;
        $db->setQuery($query);
        return $db->loadObjectList();
    }
}
?>
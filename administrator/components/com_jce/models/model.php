<?php

/**
 * @package   	JCE
 * @copyright 	Copyright (c) 2009-2012 Ryan Demmer. All rights reserved.
 * @license   	GNU/GPL 2 or later - http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 * JCE is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 */
defined('_JEXEC') or die('RESTRICTED');

jimport('joomla.application.component.model');

class WFModel extends JModel {

    public static function authorize($task) {
        $user = JFactory::getUser();
        
        // Joomla! 1.7+
        if (method_exists('JUser', 'getAuthorisedViewLevels')) {
            $action = ($task == 'admin' || $task == 'manage') ? 'core.' . $task : 'jce.' . $task; 
            if (!$user->authorise($action, 'com_jce')) {
                return false;
            }
        } else {
            // get rules from parameters
            $component = JComponentHelper::getComponent('com_jce');
            $params = json_decode($component->params);
            $rules = isset($params->access) ? $params->access : null;

            if (is_object($rules)) {
                $action = ($task == 'admin' || $task == 'manage') ? 'core.' . $task : 'jce.' . $task;

                if (isset($rules->$action)) {
                    $rule = $rules->$action;
                    $gid = $user->gid;
                    if (isset($rule->$gid) && $rule->$gid == 0) {
                        return false;
                    }
                }
            }
        }

        return true;
    }

    /**
     * Get the current version
     * @return Version
     */
    public function getVersion() {
        $xml = WFXMLHelper::parseInstallManifest(JPATH_ADMINISTRATOR . '/components/com_jce/jce.xml');
		
        // return cleaned version number or date
        $version = preg_replace('/[^0-9a-z]/i', '', $xml['version']);
        if (!$version) {
            return date('Y-m-d', strtotime('today'));
        }
        return $version;
    }

    public function getStyles() {
        $view = JRequest::getCmd('view');

        $params = JComponentHelper::getParams('com_jce');
        $theme = $params->get('theme', 'smoothness');
        $path = JPATH_COMPONENT . '/media/css';

        // Load styles
        $styles = array();

        $files = JFolder::files($path . '/' . $theme, '\.css');
        foreach ($files as $file) {
            $styles[] = $theme . '/' . $file;
        }

        $styles = array_merge($styles, array('styles.css', 'tips.css', 'icons.css', 'select.css'));

        jimport('joomla.environment.browser');

        $browser = JBrowser::getInstance();
        if ($browser->getBrowser() == 'msie' && $browser->getMajor() < 8) {
            $styles[] = 'styles_ie.css';
        }
        if (JFile::exists($path . '/' . $view . '.css')) {
            $styles[] = $view . '.css';
        }

        return $styles;
    }

    public function loadStyles() {
        $styles = $this->getStyles();

        foreach ($styles as $style) {
            echo '<link rel="stylesheet" type="text/css" href="components/com_jce/media/css/' . $style . '" />' . "\n";
        }
    }

    public function getBrowserLink($element = null, $filter = '') {
        require_once(JPATH_SITE . '/components/com_jce/editor/libraries/classes/token.php');

        $token = WFToken::getToken();

        $url = 'index.php?option=com_jce&view=editor&layout=plugin&plugin=browser&standalone=1&' . $token . '=1';

        if ($element) {
            $url .= '&element=' . $element;
        }

        if ($filter) {
            $url .= '&filter=' . $filter;
        }

        return $url;
    }

}

?>

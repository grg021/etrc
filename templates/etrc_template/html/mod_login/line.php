<?php
/**
* @package   Warp Theme Framework
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) YOOtheme GmbH
* @license   http://www.gnu.org/licenses/gpl.html GNU/GPL
*/

// no direct access
defined('_JEXEC') or die;

JHtml::_('behavior.keepalive');

?>

<?php if ($type == 'logout') : ?>

	<form id="logoutTop" action="<?php echo JRoute::_('index.php', true, $params->get('usesecure')); ?>" method="post">
	
		<?php if ($params->get('greeting')) : ?>
		<div class="greeting">
			<?php if ($params->get('name') == 0) : {
				echo JText::sprintf('MOD_LOGIN_HINAME', htmlspecialchars($user->get('name')));
			} else : {
				echo JText::sprintf('MOD_LOGIN_HINAME', htmlspecialchars($user->get('username')));
			} endif; ?>
			<a href="<?php echo JRoute::_('index.php?option=com_jshopping&controller=user&task=view', 1)?>"><?php print JText::_('My Account')?></a>,&nbsp;
			<a href="<?php echo JRoute::_('index.php?option=com_jshopping&controller=cart&task=view', 1)?>"><?php print JText::_('Go to cart')?></a>,&nbsp;
			<button value="<?php echo JText::_('JLOGOUT'); ?>" name="Submit" type="submit"><?php echo JText::_('JLOGOUT'); ?></button>
		</div>
		<?php endif; ?>
	
		
		<input type="hidden" name="option" value="com_users" />
		<input type="hidden" name="task" value="user.logout" />
		<input type="hidden" name="return" value="<?php echo $return; ?>" />
		<?php echo JHtml::_('form.token'); ?>	
	</form>

<?php else : ?>
		
		<div class="button">
			<strong>Do you have an account?&nbsp;</strong>
			<a class="button-primary" href="<?php echo JRoute::_('index.php?option=com_users&view=login'); ?>">Login</a>
			<strong>&nbsp;or&nbsp;</strong>
			<a href="<?php echo JRoute::_('index.php?option=com_users&view=registration'); ?>"><?php echo JText::_('MOD_LOGIN_REGISTER'); ?></a>
		</div>
		
	
<?php endif;
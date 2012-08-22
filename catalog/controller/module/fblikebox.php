<?php  
class ControllerModulefblikebox extends Controller {
	protected function index($setting) {
		$this->language->load('module/fblikebox');
		$this->data['heading_title'] = $this->language->get('heading_title');		
		$this->data['fblikeboxcode'] = $this->config->get('fblikebox_code');
		$this->data['position'] = $setting['position'];
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/fblikebox.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/fblikebox.tpl';
		} else {
			$this->template = 'default/template/module/fblikebox.tpl';
		}		
		$this->render();
	}
}
?>
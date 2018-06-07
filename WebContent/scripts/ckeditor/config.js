/**
 * @license Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	config.language = 'vi';
	config.skin = 'moono';
	config.height = '300';
	config.width = '98%';
	config.fullPage = false;
	config.toolbar = [
			{ name: 'clipboard', items: ['NewPage', 'Templates','SelectAll','RemoveFormat','Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo','Outdent','Indent','Table','HorizontalRule','PageBreak','-','Source','Preview','Maximize'] },
			{ name: 'style', items: ['Image','Flash', 'Smiley', 'SpecialChar','Font','FontSize','TextColor','BGColor','Link','Unlink','Bold', 'Italic','Underline','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'] }
		];				
	config.enterMode = CKEDITOR.ENTER_BR;
	config.shiftEnterMode= CKEDITOR.ENTER_P;
	config.autoUpdateElement = true;
	config.toolbarCanCollapse = true;
	//config.newpage_html = '<p>Nhập thông tin của bạn vào.</p>';
	//config.forcePasteAsPlainText = true;
};

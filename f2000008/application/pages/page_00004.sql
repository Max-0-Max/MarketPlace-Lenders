prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000008
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Create New Company'
,p_alias=>'CREATE-NEW-COMPANY'
,p_page_mode=>'MODAL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function closeModal(){',
'    apex.navigation.dialog.close(true);',
'    return false;',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	body {',
'font-family: Helvetica;',
'}',
'',
'.t-Button-label{',
'font-weight: 700;',
'font-size: 14px;',
'line-height: 100%;',
'letter-spacing: -1%;',
'}',
'',
'.top-region{',
'    display: flex;',
'    justify-content: space-between;',
'    align-items: center;',
'    margin-top: 30px;',
'}',
'',
'',
'.icon-button {',
'  display: flex;',
'  align-items: center; /* Vertically center the icon and text */',
'  padding: 10px 0px 10px 0px;',
'  background: #FFFFFF;',
'  color: #000000;',
'  border: none;',
'  border-radius: 5px;',
'  cursor: pointer;',
'  font-size: 16px;',
'  transition: background-color 0.3s;',
'}',
'',
'',
'.icon {',
'  width: 20px; /* Set the width of the icon */',
'  height: 20px; /* Set the height of the icon */',
'  margin-right: 10px; /* Space between icon and text */',
'}',
'',
'',
'.button-text {',
'  white-space: nowrap; /* Prevent the text from breaking onto a new line */',
'    font-family: Helvetica;',
'    font-size: 16px;',
'    font-weight: 700;',
'    line-height: 18.4px;',
'    text-align: left;',
'    text-underline-position: from-font;',
'    text-decoration-skip-ink: none;',
'}',
'',
'/* Container for positioning the input and icon together */',
'.search-container {',
'  position: relative;',
'  width: 50%;',
'  height: 56px;',
'}',
'',
'',
'/* Styling the input field */',
'.search-input {',
'  width: 100%;',
'  height: 100%;',
'  font-size: 16px;',
'  border: 1px solid #E5E5E5;',
'  border-radius: 4px;',
'  padding: 16px; /* Optional, for extra space on the right */',
'  font-family: Helvetica;',
'    font-weight: 400;',
'    line-height: 18.4px;',
'    text-align: left;',
'    text-underline-position: from-font;',
'    text-decoration-skip-ink: none;',
'        color: #8C8C8C;',
'',
'',
'}',
'',
'/* Styling the search icon */',
'.search-icon {',
'  position: absolute;',
'  right: 10px;  /* Place the icon on the right side */',
'  top: 50%;',
'  transform: translateY(-50%);',
'  width: 20px;  /* Adjust size of the icon */',
'  height: 20px; /* Adjust size of the icon */',
'  cursor: pointer; /* Change cursor to indicate it''s clickable */',
'}',
'',
'/* Border change on focus */',
'.search-input:focus {',
'  border: 1.5px solid #E5E5E5; /* Border color on focus */',
'  outline: none; /* Removes the default browser outline */',
'}',
'',
'',
'/**Add new product **/',
'.add-product-button {',
'      display: inline-flex;',
'      align-items: center;',
'      gap: 6px;',
'      background: none;',
'      border: none;',
'      color: #1A73E8;',
'      font-family: Arial, sans-serif;',
'      font-size: 14px;',
'      font-weight: 600;',
'      cursor: pointer;',
'      padding: 4px 8px;',
'    }',
'',
'    .add-product-button img {',
'      width: 20px;',
'      height: 20px;',
'      border-radius: 4px;',
'    }',
'',
'    .top-region-header{',
'        display: flex;',
'      align-items: center;',
'      font-family: Arial, sans-serif;',
'      font-size: 16px;',
'      font-weight: bold;',
'      color: #000;',
'    }',
'',
'    .back-link {',
'      display: flex;',
'      align-items: center;',
'      gap: 6px;',
'      color: #000;',
'      text-decoration: none;',
'      font-weight: bold;',
'    }',
'',
'    .back-link img {',
'      width: 16px;',
'      height: 16px;',
'    }',
'',
'    .divider {',
'      height: 20px;',
'      border-left: 1px solid #ccc;',
'      margin: 0 12px;',
'    }',
'',
'    .page-title {',
'      font-weight: bold;',
'      padding: 8px 0;',
'    }',
'',
'    .head-text{',
'        font-family: Helvetica;',
'font-weight: 400;',
'font-size: 16px;',
'line-height: 140%;',
'letter-spacing: -1%;',
'color: #24272B;',
'    }',
'',
'       .placeholder{',
'        font-family: Helvetica;',
'font-weight: 400;',
'font-size: 16px;',
'line-height: 100%;',
'letter-spacing: 0%;',
'color: #B5B5B5;',
'',
'    }',
'',
'    .img-t{',
'        border: 1px solid #DDDDDD;',
'        background-color: #DDDDDD;',
'        border-radius: 4px;',
'        width:48px;',
'        height: 48px;',
'        text-align: center;',
'    }',
'',
'.info-container {',
'  display: flex;',
'  gap: 16px; /* space between the messages */',
'  flex-wrap: wrap; /* wraps if screen is too small */',
'  margin-top: 10px;',
'}',
'',
'.info-box {',
'  background-color: #e8f4fd;',
'  color: #055160;',
'  border: 1px solid #b6effb;',
'  padding: 6px 10px;',
'  border-radius: 4px;',
'  font-size: 0.9rem;',
'  display: flex;',
'  align-items: center;',
'  gap: 4px;',
'  white-space: nowrap;',
'}',
'',
'',
'.info-message {',
'  display: inline-block;',
'  font-family: Helvetica;;',
'  background-color: #e8f4fd;',
'  color: #055160;',
'  border: 1px solid #b6effb;',
'  padding: 6px 10px;',
'  border-radius: 4px;',
'  font-size: 0.9rem;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'563'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(169744672864403569)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(',
'          ''<div class="top-region-header"> ',
'                    <div class="page-title">''||:P4_SET_ADD_UPDATE||''</div>',
'            </div>    ',
'        '');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(169744774056403570)
,p_plug_name=>'Company Setup'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'              company_id,',
'              company_name,',
'              company_type,',
'              company_desc,',
'              decode(company_status, ''A'', ''Active'', ''I'', ''Inactive'') status,',
'              benefits,',
'              company_status',
'             FROM XXMRKT.XXMRKT_COMPANY_LIST',
'             WHERE COMPANY_TYPE = ''Loan Services''',
'             AND COMPANY_CODE = :AP_COMPANY_CODE',
'           --  AND COMPANY_ID = :P4_COMPANY_ID'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70375749077731144)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(169744774056403570)
,p_button_name=>'Create_Company'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Company'
,p_button_condition=>'P4_COMPANY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70376148670731149)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(169744774056403570)
,p_button_name=>'Update_company'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Company'
,p_button_condition=>'P4_COMPANY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(70385020150731192)
,p_branch_name=>'Go To Page 2'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114384551512743993)
,p_name=>'P4_COMPANY_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(169744774056403570)
,p_item_source_plug_id=>wwv_flow_imp.id(169744774056403570)
,p_source=>'COMPANY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114384615064743994)
,p_name=>'P4_COMPANY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(169744774056403570)
,p_item_source_plug_id=>wwv_flow_imp.id(169744774056403570)
,p_prompt=>'Company Name'
,p_source=>'COMPANY_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>300
,p_tag_attributes=>'readonly'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114384798035743996)
,p_name=>'P4_COMPANY_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(169744774056403570)
,p_item_source_plug_id=>wwv_flow_imp.id(169744774056403570)
,p_prompt=>'Company Description'
,p_source=>'COMPANY_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114979766429787563)
,p_name=>'P4_DISPLAY_IMAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(169744774056403570)
,p_item_default=>'https://testapp.softsuite.com/softsuite/api/mrkt/getimages/&P4_COMPANY_ID.'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="width:48px;height:48px;border-radius:4px;"'
,p_display_when=>'P4_COMPANY_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'URL')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118794188171240073)
,p_name=>'P4_COMPANY_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(169744774056403570)
,p_item_source_plug_id=>wwv_flow_imp.id(169744774056403570)
,p_prompt=>'Company Type'
,p_source=>'COMPANY_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Loan Services;Loan Services,Insurance;Insurance,Payment Services;Payment Services'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when=>'P4_COMPANY_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118795399991240085)
,p_name=>'P4_SET_ADD_UPDATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(169744774056403570)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    case ',
'        when :P4_COMPANY_ID is null Then',
'            ''Add New Company''',
'        else',
'            ''Edit Company''',
'    end',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118795626215240087)
,p_name=>'P4_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(169744774056403570)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID',
'FROM XXMRKT.XXMRKT_COMPANY_PIC',
'WHERE COMPANY_ID = :P4_COMPANY_ID',
'AND COMPANY_CODE = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118796070893240091)
,p_name=>'P4_BENEFITS'
,p_source_data_type=>'CLOB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(169744774056403570)
,p_item_source_plug_id=>wwv_flow_imp.id(169744774056403570)
,p_prompt=>'Key Benefits And Features'
,p_source=>'BENEFITS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'N',
  'format', 'HTML',
  'min_height', '180',
  'toolbar', 'INTERMEDIATE',
  'toolbar_style', 'OVERFLOW')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70383159983731189)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70383632020731189)
,p_event_id=>wwv_flow_imp.id(70383159983731189)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*apex.util.getTopApex().jQuery(".ui-dialog-content").dialog("option",',
'"title",`<img src="#APP_IMAGES#logo.png" alt="Dialog Title" style="height: 40px;">`);*/',
'',
'',
'$(document).ready(function() {',
'  var $top = apex.util.getTopApex();',
'  var $dialog = $top.jQuery(".ui-dialog-content");',
'',
'  // Ensure the dialog opens with the regular title first',
'  var originalTitle = $dialog.dialog("option", "title");',
'',
'  // Slight delay to ensure title is rendered',
'  setTimeout(function() {',
'    var $titleBar = $top.jQuery(".ui-dialog-titlebar .ui-dialog-title");',
'',
'    if ($titleBar.length) {',
'      $titleBar.html(',
'        ''<img src="#APP_FILES#Featured icon.png" alt="Title Image" style="height: 30px; vertical-align: middle; margin-right: 8px;">'' //+',
'       // apex.util.escapeHTML(''Add New Product'')',
'      );',
'    }',
'  }, 100);',
'});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70384085687731191)
,p_name=>'New_1'
,p_event_sequence=>20
,p_condition_element=>'P4_COMPANY_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70384569401731191)
,p_event_id=>wwv_flow_imp.id(70384085687731191)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P4_UPLOAD_IMG_input").style.display = "none";',
'',
'//apex.jQuery("#P4_DISPLAY_IMAGE").hide();',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70382718216731189)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Company Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    xxmrkt.xxmrkt_marketplace_pkg.create_company(   p_company_name => :P4_COMPANY_NAME,',
'                                                    p_company_type => :P4_COMPANY_TYPE,',
'                                                    p_company_desc => :P4_COMPANY_DESC,',
'                                                    p_status       => :P4_COMPANY_STATUS,',
'                                                    p_upload_img   => :P4_UPLOAD_IMG,',
'                                                    p_benefits     => :P4_BENEFITS',
'                                                );',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'        raise_application_Error(-20001, sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(70375749077731144)
,p_process_success_message=>'Company Successfully Created'
,p_internal_uid=>70382718216731189
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70382305047731188)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Company Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   XXMRKT.XXMRKT_MARKETPLACE_PKG.update_company(p_company_name => :P4_COMPANY_NAME,',
'                                                p_id           => :P4_ID,',
'                                                p_company_id   => :P4_COMPANY_ID,',
'                                                p_company_type => :P4_COMPANY_TYPE,',
'                                                p_company_desc => :P4_COMPANY_DESC,',
'                                                p_status       => :P4_COMPANY_STATUS,',
'                                                p_upload_img   => :P4_DISPLAY_IMAGE,',
'                                                p_benefits     => :P4_BENEFITS',
'                        );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(70376148670731149)
,p_process_success_message=>'Company Successfully Updated'
,p_internal_uid=>70382305047731188
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70381418203731166)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(169744774056403570)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Create New Product'
,p_internal_uid=>70381418203731166
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/logic/application_items/ap_user_id
begin
--   Manifest
--     APPLICATION ITEM: AP_USER_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000008
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(67824726612049751)
,p_name=>'AP_USER_ID'
,p_protection_level=>'N'
,p_version_scn=>6005737040460
);
wwv_flow_imp.component_end;
end;
/

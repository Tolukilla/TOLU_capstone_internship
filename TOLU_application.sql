prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.3'
,p_default_workspace_id=>161322509113032900695
,p_default_application_id=>82816
,p_default_id_offset=>0
,p_default_owner=>'WKSP_SOFTALLIANCE'
);
end;
/
 
prompt APPLICATION 82816 - Mini-HCM Suite
--
-- Application Export:
--   Application:     82816
--   Name:            Mini-HCM Suite
--   Date and Time:   19:22 Friday August 28, 2026
--   Exported By:     OJOKILATOLU@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     20
--       Items:                   33
--       Validations:              4
--       Processes:               30
--       Regions:                 37
--       Buttons:                 17
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  3
--         Breadcrumbs:            1
--           Entries:             16
--       Security:
--         Authentication:         2
--         Authorization:          3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   6
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.3
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_SOFTALLIANCE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Mini-HCM Suite')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'MINI-HCM-SUITE')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'1C2CE1EA817DC8CF8863B6570E26892F0D256744945669DFD4EBAAE04A2B8E50'
,p_bookmark_checksum_function=>'SH512'
,p_max_session_length_sec=>10800
,p_max_session_idle_sec=>1800
,p_session_timeout_warning_sec=>300
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(32382465198852010689)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Mini-HCM Suite'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Mini-HCM Suite'
,p_created_on=>wwv_flow_imp.dz('20260823202703Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260828192107Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461276202704
,p_version_scn=>'15818050830939'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(31310412114906049357)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(31310412999570049364)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31310406988946049348)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260823202703Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202703Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31310407239656049349)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260823202703Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202703Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31310407508712049350)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260823202703Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202703Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31310407862498049350)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260823202703Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202703Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31310408136806049351)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260823202703Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202703Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31310408479727049351)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260823202703Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202703Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31310408727221049351)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260823202703Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202703Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31310409033627049352)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260823202703Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202703Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31310409367017049352)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260823202703Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202703Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31310409662778049353)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260823202703Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202703Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31310409996086049353)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260823202703Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202703Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31310410210478049353)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260823202703Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31310410525219049354)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31310410732573049354)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(31310412999570049364)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31310449975621049831)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31310450553206049832)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(31310449975621049831)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31310451099015049833)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(31310449975621049831)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(31310412114906049357)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:erzIVMypQZaPxakC24OkVPA6WvNeZVgvz7pUEIMjKmQ'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260828092150Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31325805448386608369)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Add new position'
,p_static_id=>'add-new-position'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-id-badge'
,p_security_scheme=>wwv_flow_imp.id(32395475308312409544)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260823225158Z')
,p_updated_on=>wwv_flow_imp.dz('20260828072458Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31530576931538523934)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Approve leave request'
,p_static_id=>'approve-leave-request'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-thumbs-o-up'
,p_security_scheme=>wwv_flow_imp.id(32395475308312409544)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
,p_created_on=>wwv_flow_imp.dz('20260824142609Z')
,p_updated_on=>wwv_flow_imp.dz('20260828072616Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32398331535913300207)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Change password'
,p_static_id=>'change-password'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-lock-password'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19'
,p_created_on=>wwv_flow_imp.dz('20260828073357Z')
,p_updated_on=>wwv_flow_imp.dz('20260828073357Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32294347369850938150)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'clock-in'
,p_static_id=>'clock-id'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260827164016Z')
,p_updated_on=>wwv_flow_imp.dz('20260827164121Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32297792334812100298)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Clock-out'
,p_static_id=>'clock-out'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-clock-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
,p_created_on=>wwv_flow_imp.dz('20260827170718Z')
,p_updated_on=>wwv_flow_imp.dz('20260827170718Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31322947461339440523)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Create department'
,p_static_id=>'create-department'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-user'
,p_security_scheme=>wwv_flow_imp.id(32395475308312409544)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
,p_created_on=>wwv_flow_imp.dz('20260823222400Z')
,p_updated_on=>wwv_flow_imp.dz('20260828072437Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32257515201931802250)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Daily attendance summary report'
,p_static_id=>'daily-attendance-summary-report'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-list'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
,p_created_on=>wwv_flow_imp.dz('20260827123912Z')
,p_updated_on=>wwv_flow_imp.dz('20260827123912Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32409384557864258019)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Dashboard'
,p_static_id=>'dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
,p_created_on=>wwv_flow_imp.dz('20260828092150Z')
,p_updated_on=>wwv_flow_imp.dz('20260828092150Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31322441245681391635)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Department'
,p_static_id=>'department'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_security_scheme=>wwv_flow_imp.id(32395475308312409544)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
,p_created_on=>wwv_flow_imp.dz('20260823221551Z')
,p_updated_on=>wwv_flow_imp.dz('20260828072347Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31310437698024049813)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Employee form'
,p_static_id=>'employee-form'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-format'
,p_security_scheme=>wwv_flow_imp.id(32395475308312409544)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260828072325Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31310426286807049388)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Employee List'
,p_static_id=>'employee-list'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-worker'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260828082754Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31310424769888049384)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31520859143905850847)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Leave form'
,p_static_id=>'leave-form'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
,p_created_on=>wwv_flow_imp.dz('20260824132543Z')
,p_updated_on=>wwv_flow_imp.dz('20260824132543Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32058807272895360780)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Leave requests'
,p_static_id=>'leave-requests'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
,p_created_on=>wwv_flow_imp.dz('20260826184538Z')
,p_updated_on=>wwv_flow_imp.dz('20260826184538Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32317260179066904569)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Payslips Report'
,p_static_id=>'payslips-report'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-money-bag'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
,p_created_on=>wwv_flow_imp.dz('20260827192120Z')
,p_updated_on=>wwv_flow_imp.dz('20260827192120Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31320304226979711121)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Position'
,p_static_id=>'position'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-chart'
,p_security_scheme=>wwv_flow_imp.id(32395475308312409544)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
,p_created_on=>wwv_flow_imp.dz('20260823221721Z')
,p_updated_on=>wwv_flow_imp.dz('20260828072410Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31533907018928677366)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Reject leave request'
,p_static_id=>'reject-leave-request'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-thumbs-o-down'
,p_security_scheme=>wwv_flow_imp.id(32395475308312409544)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
,p_created_on=>wwv_flow_imp.dz('20260824145144Z')
,p_updated_on=>wwv_flow_imp.dz('20260828072641Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32320199835131309757)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Run Payroll'
,p_static_id=>'run-payroll'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tasks'
,p_security_scheme=>wwv_flow_imp.id(32395475308312409544)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18'
,p_created_on=>wwv_flow_imp.dz('20260827193708Z')
,p_updated_on=>wwv_flow_imp.dz('20260828072712Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(31310446924031049826)
,p_name=>'Page Navigation'
,p_static_id=>'page-navigation'
,p_version_scn=>'SH256:kyOL4oQYS_vHxi1jpfVhP5oHXf_ZJfoRqqHFUizI7yk'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31310448091057049828)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Employee form'
,p_static_id=>'employee-form'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-format'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31310447564830049827)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Employee List'
,p_static_id=>'employee-list'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-worker'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800000F45494441547801EC5D6B6C1CD5153E7776D7DEB593B5BDEB786D129CC4498849203C9C4249B063C25B0AA95A51C49F36B455D5A6AA2A2AB54D05345E1B8AD44A';
wwv_flow_imp.g_varchar2_table(2) := '20F85144293F68FF21505B12958AA71CE74544534843C88324CE03274EECF5FBBDBB737BCEAC037EAC637BEE8CE77557F7CCDEB98F73CFF9CEE73B776676C60AC88F44400001492001F06457004920C9022104248184E0939D258124078410900412824F';
wwv_flow_imp.g_varchar2_table(3) := '769604921C10424037818446959D5D838024906B42698D239240D6E0EE9A5125815C134A6B1C9104B20677D78C2A09E49A505AE388249035B8BB66D4B927D00CA06BFBCDFAF997E3B5A55D4F6F5CD6D970E74D89676AD625EA37DCDB51BFE1212F08F94A';
wwv_flow_imp.g_varchar2_table(4) := '3E93EF8401614198CC00BA396F6229813807D61EAFAD6CAFAFD9D25E5FFD52A27EC37F12F535234ABEAFC7C7D48B69357552E5CAA79086BD00FC5D0E7C8717847C259FC977C280B0204C089B0462D41EAFF993861962C711C33967CD9801953179D3B3BD';
wwv_flow_imp.g_varchar2_table(5) := 'CF562F688BD76CEE8857FF3ED150FD5E47434D2763EA5106F01A03B61581AB0280008A4CD911406C781563F0334698217684A186657DCD33343B77C7EF8864EF6A4EA9628EDAC95AE92F653809EB1406DB38634F0067F760AB021499C41028202C39C093';
wwv_flow_imp.g_varchar2_table(6) := '383B6F4B836F1D612DA672E6BD4D2710FF735500A7DD1FE35FCA3106EC9F68DA3A1499CC41603D67CACE8E860D4713F5353F22ECCD19E66BADA612A8FD998D0B3B5AE7EDC743D32B38E4752832CD09027C250EF36A476BFE3E5A3660DEB4641A8112F1EA';
wwv_flow_imp.g_varchar2_table(7) := '552C9D3A80E4A1758D690E48C55745602D2E1BF6271AD6AFBE6A2B814A5308D451577B2730B60FED5A886250926AF420C0802D03EEDBDBD950BD414FFFE9FA184E209A79B8A2BE8303CB053282609354A072F6B6193391A104BA10AFCAC399E70D042D0F';
wwv_flow_imp.g_varchar2_table(8) := '45267B219007DCFFBA162303ED329440B92CFF25B46D158A4CB64480AF1E8D9161D61946A0F686EAC7D0AA2D2832D91B812DA3B132C44A430874FEF93B428CB3E70DB1482A311D018CD573461DCA0C21507E9F9F669E22D33D970318854024A8E47DDF08';
wwv_flow_imp.g_varchar2_table(9) := '65C204A2CBE69C2B8F1B618C493AA4DA2C0870CE7EC139B02C55B32A5266D53A4BE38EFADAFBF162215DF9CC522B8B6C8CC0F599D88959284C2060AA9C7DC462605D6F03622744A0E6786D10BDBF1745266722702F9D0089982E44A07900DFC4C1857460';
wwv_flow_imp.g_varchar2_table(10) := '7F99AC434009F6E4DE2E32BC50F07D8A4A0412195FF6B51801D1180A1108B83603590C811C5E0801C118EA26109D0272803B858CB779672F988731143A8AE826505B7D6D0C018EA2C8E46C04623DCFDEAD3B8EBA09E45398EE419D8DB7FBAC4FA6D452BD';
wwv_flow_imp.g_varchar2_table(11) := '5EE926100755FE64432FEA36EB27124B49209B05D30A732C2190C27C212B9C95631A8F4080835FAF56FD33505A1EC2F4826EB77E69C517D06B936E02290CE40C3415EA0E2BE70293816E02A98C071C86D3B4E6A6540EEDFD4968E91986735D43703A31A8';
wwv_flow_imp.g_varchar2_table(12) := '09E5A92C8175696C33AD22873510990C7413083BA61C86D394E6760EA6E02492E5486B3FB4740F437B5F123A0752D03B9CD684F254F625D67D866D4E61DB2EEC33A5420F55200F3CE4ED0457FB902027DA06E05CE710101FA2A5D7C0B21BABE0C6F5F7C0';
wwv_flow_imp.g_varchar2_table(13) := '2D1B37C1DA071ED684F254568175D1D83580DC82B3D887FAF68DA42768F5D6AE27098497EFB59986669211506071E58D70CB3DDF828A5BAB2172ED72081644C11FCC07A6F834A13C9545B1AEA2AA5A6BBB78E50D407D4FB50F6A873CD2E92DEA64BCF51C';
wwv_flow_imp.g_varchar2_table(14) := '81689D4341A7B54E34560637DFB5194A2A56C16C4E44A86DC9B2D5D8F721282A29D50E79B45E22DD1958BDB3F5148154BC034CB34E3F1E7662E54B806613C5AFFF5C40F1E7C0F2B535105B580E743824DD348677E803E02902D1BA6528A942D9E20A28BF';
wwv_flow_imp.g_varchar2_table(15) := '817E47C50C883583F29BEED074926E1A43BF52E7F5F40C81E890D5339486C2053158B4FA1BD3466AA4BF073A5B4E6B42F9E93A90CEC2E212A0311203C9E99ABBA6DE1304A2B5496BEF30AE737C5071D3D43F7F490EF643F3277BE0E0BB6FC2A15DFF8693';
wwv_flow_imp.g_varchar2_table(16) := '873ED684F25476E6D03EA03653457F29CE448ACF07177B46C08DD78BB2F9ED0902B5F65240413BDBF2E5D07300E3A1E06A1A2E9D3C0C871ADF86F68B2D908F77864AE605607124A809E5F37D006D2DE7B536974F7D065C55C72BC13D7F2EB65FB95A230F';
wwv_flow_imp.g_varchar2_table(17) := '8D8945AE4FAE27102D6AE990129A370FA2E5D95F92D6FCC95E3877E27308F838AC280E4145240465E15C280CFA35A17C4534A4D5519BB3C78F40F3A77BB392235ABE128279794063BAF0A2F5249F5D4FA06E5CF7005EA4295B721D303679D1DC75A11912';
wwv_flow_imp.g_varchar2_table(18) := '972EC2BC5C1F5C5F920F793938D54C8229534075D486DA265A2F40D78533998A315BA62850B6F43AC0133E5C0FB9E662FD180FC7675D4FA0AEC1CC82365C5C3ADE73DC4B0DE3BDAECF0E02C61CCA0B271FDAB049D6446DA9CFE9230721353234A94DB8B8';
wwv_flow_imp.g_varchar2_table(19) := '4C2BEB1A9204D28070F266004FDB73422108E4CD9FE446474B33A45369585410C4C3D7E4D9695287D182808FC1423CC4A59329E8C4196CB4F8ABAF9CFC300443793080D79BBE2A3437639976D7CF40A934877061242BC003BDDD785803280AF9B3D65FAD';
wwv_flow_imp.g_varchar2_table(20) := '309217D0AA077ABAB5EF899BFC8242A0B3BF89E56EDB77358192481E0A983F900936E5C70A05DFAFCC7CE619DB97F27E9C898884949F288ACFAFAD83DC4E225713E84AF0289813034CFBFD3803091108C9D7D7DD45AA2689DF9F99D568069C54E9A20257';
wwv_flow_imp.g_varchar2_table(21) := '1388D3E99789C1BAEADCC532D0E209A0891658AF3AE3A5F576480B1C8A80249043036717B32581EC12098BEC101D56124814418FF79704F2380144DD771D8186532A740C2481EE8627FA33B7127A3B3BE0F2E9CF27098197C43B9ED4568F505FD2914D77';
wwv_flow_imp.g_varchar2_table(22) := '5F5707556937554937D93482B669852EDAB8864074CD877E977CECF2009CEF1A864BBD231A912856BD18CCB3C70EC344A13ABA4E436DF508F5251D13F5D23E8D4975F42C19E9269B8EA26DCD1D83DACF3DA8CE0DE20A021179E8111B7A8EABA8741194AF';
wwv_flow_imp.g_varchar2_table(23) := 'B91D96DD566B2B219B0A4B17E21DFA341C6F1B700D895C41A02F71C6A1DB1695B59B60E5A61FC035B7DD070BD654DB4AC8A6CA4D3F8495D50F02D94A0F29CA19C806085030BA875210ABA884C2E5B7D8C0A2AB9B50B4722D942C5901F4642BCD9C576F6D';
wwv_flow_imp.g_varchar2_table(24) := 'E3DA51D31C3F030D24334F8686638B465DB2FF573876AD66E415DBB51D876E1C4FA02B7FC5BE5CE7BC2CC41FCAD3E842B3A79671F0C6F1047230F6AE305D12C81561B4CE094920EBB077C5C89240AE08A3754E48025987BD2B469E3D815CE1B674C22804';
wwv_flow_imp.g_varchar2_table(25) := '5C4420E37E3C4A0F05268EEC8733BBFEAE49E2F38FB41FC81B05BAC9BFB435CCCC992872118166E2EEF46D883C4777BC025FEC7F1F5ABF38A2C917FBDE83633BFE622C89A637C5112D24812684A9FBE47FA1A7ED12D0AB5AD66C7810480AA325D0DDD60A';
wwv_flow_imp.g_varchar2_table(26) := '3DA70F4D682D772581267060B0AB5D2B295B5609B9F9614DCA9665FEA7F060579B5627375F23E022025DF5219BAF3D9E26478F3A5393C0985B23FED17C3A9979CE9EEA85C41853854C30AAB38B08640C240ABD350155A9A9CCAF19310B6A3A73C396DEBC';
wwv_flow_imp.g_varchar2_table(27) := '41FBC262DC7A5FD81451057348205153E7A67F707E813650C7C5B3DA376DE8250CF41D0C47E84B5CE40C248EA15D3584175702BD71E142F3493871E003388E676317CF9E06E653205C8E75203F631170D10C64CC71C19F5F08ABEEFE36F87372A03BD10E';
wwv_flow_imp.g_varchar2_table(28) := '3D9D092DBFEA2E2CCBF28A98B160CE386F8CA9331ECECC862E229071308597AC86AAEF6D835B1FFE29DCFADDAD5A7EFE9255C60DE0224D2E2290B10B0B86EA720A17404E41311DD18C0D39EA3656A175DA5C4420EB40F4F2C892405E8EBE01BE3B814006';
wwv_flow_imp.g_varchar2_table(29) := 'B82955988580249059C87A44AF249047026D969B8E27D095139A6CFF7AC02CD044F5F274E6DF245CB15D549F95FD1D4FA06020E3C2706FA79538CE6AECA1515B4381A9DF8A3F2B851636CEA06FA101A24387FC9920D02B5638CFFC658BEA34B33FCD9497';
wwv_flow_imp.g_varchar2_table(30) := '4F1ED1AE2D05FD8E871F1CEF015DF02B9D9F0303DD5D707ECF4EE0A91133E32FA49B6C3BB767070CF6F500D94CB60B29B44167C71388308C21814AC33970E1F8FFE0C06B7F808F5E7D5A13BB7D936D174F1C8632B4B5645E0E99EE78710581280A310C08';
wwv_flow_imp.g_varchar2_table(31) := 'FDABA6E2FC0084833EC8CFB597904D64DB8A0521700B79087785367A4455D9809E7E66F6A17FC7B4B02017964642B03C6A2F219BC8B63C1B2E9C550E837AE3A29B40CCA7D88E407A41F07A3F9158EA2690CAD3BA59EBF580D9CD7F9158EA261003390381';
wwv_flow_imp.g_varchar2_table(32) := '4B3E4C20969240203FCC0A02A5D4A47B0F61E0AD8F482C056620BF5C44BB84670CF4C7523781CE5DE84D207E432832391B81A1D158EAF2423781D6BE7230C9010EE81A5576B20D0214438AA55E837413880664008D203F8E46403486420452B92209E468';
wwv_flow_imp.g_varchar2_table(33) := 'FA0088C65011F1BF0FE023EC2FD741088243D3D0680C759B2F44A0A5F14622CF5BBA47775D47C739F4D6680C751B2E44206D54AEBCA07DCB8DF3103020768AA8D7D178231DC6E4D998289073DFFFC068EC84461626108DCE1897B31001E120312A668610';
wwv_flow_imp.g_varchar2_table(34) := 'A848F5BD89D87D892293331068198D99B0B5861088C51B531CF8CF85AD910AE60401066C2BC5CC88C10C211019525CB79BCEC65EA4BC145B23F062A46ED74EA32C348C406450A4B4FFD7F8FD318A4CB343604E5AE3BAA7713446868D672881D84F0E2615';
wwv_flow_imp.g_varchar2_table(35) := 'AE3C82D675A1C8642F042E257D398F528C8C34CB5002916145F1C6330A838D983F8322932D10E06715A6DE1F7BF2834B469B633881C8C0A2ED4D9F040281B5C0F8FBB42FC54204187C1808E454156DDF73C80C2B4C2110191A7EE28344A4B2F401CEE165';
wwv_flow_imp.g_varchar2_table(36) := 'DA97620902CF452A63F7512CCC1ADD340291C1EC9137D2C5F1A6ADB878DB8AFBF67DE6188D7359A29F1B3F1AAD6BFA15C5C04CDF4C25D015C323DB77BFCC7DFE0A60AC0ECBCEA3C8640E027431378E58AF40F2BC6ECE10E3B5CE098168C8E2A73E6C896E';
wwv_flow_imp.g_varchar2_table(37) := 'DFD510B93EB69403FB0E96BD83C25164124000BBA611C49D0CF826C4760912A79EB0C6F239497346A02BDED0945A5CB7EB1FE8E8032C37A748E1B001EB1E47F92BCA6194148A4CD911206C0E330E7FC313945F2A8CD7AAC17451715DD3E648DDEE7F11B6';
wwv_flow_imp.g_varchar2_table(38) := 'D9BB99573AE7041AEB4AE4B7EF7717C59B9A904C2FA23C86B20625A0F6A7C369AE94F914FF7285A937830FD603B0FBF012FC662F08F94A3E93EF84016141981036286B22F1A62DD1EDBB5F28DABE7BD7826D7B7BC1C28FA5049ACAEF057FDCDB5B126F6C';
wwv_flow_imp.g_varchar2_table(39) := '2DFCDD87A78AF0F433FA54D3BE68DDAEF7227809DE0B42BE92CFE43B614058102653E16565B92D0964252072ECD9212009343BBC64EB090848024D0044EECE0E0149A0D9E1E59ED6067922096410905E552309E4D5C81BE4B7249041407A558D24905723';
wwv_flow_imp.g_varchar2_table(40) := '6F90DF92400601E9553592405E8DBC417E4B021904A477D48CF75412683C1E726F96084802CD1230D97C3C02FF070000FFFFDE2D5AC0000000064944415403000914378A4D2FE5420000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(31310414395742049368)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC9D596F1BD715C70F57911425D992B5D9966C79932539715DC7A91324765C2469B37449DB34408AF6A9CF05DAF73E14FD00E907E85B9B144D';
wwv_flow_imp.g_varchar2_table(2) := '8BD46D9300498D2209D234A8613B7122DBB2565B9664594BAC8512172DBD67C4B91C4AA4389267C819DEBFA0CB39779973EFF99DF99333438AF24EFDE6CC2A0A18A87A0C78093F20A030010840E1E423742208004781D2042000A5D38FE0151600920F02';
wwv_flow_imp.g_varchar2_table(3) := '3805C231A03801BC02287E00A81E3E04A0FA11A078FC1080E20780EAE143002A1E018859128000240A182A12800054CC3A62960420008902868A04200015B38E9825010840A280A10281F5314200EB89A0AE14010840A97423D8F5042080F54450578A00';
wwv_flow_imp.g_varchar2_table(4) := '04A054BA11EC7A0210C07A22A82B45402101289557046B9200046012148695270108A03CF38AA84C1280004C82C2B0F224000194675E1195490210804950AE1E86C5E7250001E445830E150840002A641931E6250001E445830E150840002A641931E625';
wwv_flow_imp.g_varchar2_table(5) := '0001E445838E722050280608A01021F497350108A0ACD38BE00A1180000A11427F59138000CA3ABD08AE100108A01021F497358132164059E70DC159440002B00824DCB8930004E0CEBC61D5161180002C020937EE240001B8336F58B5450420008B403A';
wwv_flow_imp.g_varchar2_table(6) := 'CA0D16639A0004601A150696230108A01CB38A984C1380004CA3C2C072240001946356119369021080695418E806025B5D2304B05562DB189F5C5EA1C9588A46661234F4559CFA2617E8FABD187D3136AF15B6B98DFB780C8FE57DB6311576D922010860';
wwv_flow_imp.g_varchar2_table(7) := '8BC0CC0C5F1583E693CB343A9BA01BF716E8FAF88276F0F3813DB3B844B1E40A25975669450CE4C236B7711F8F6111F03EBC2FFB88095F62A8F08A5FAB09400016139D5E4889033E46FD938B34319FA2C4D2CAB667E07DD9479FF0757D3C46EC7BDBCEB0';
wwv_flow_imp.g_varchar2_table(8) := '634E0210404E2C5B6FBC2F9ED96F88D39AE1FB094A2D6F7CBEAE6D6CA6FD471FA6C3274E53E763E7E8F853CFD323DFFEA156D8E6B6C3A28FC7D436346F5800FB64DFFCAA30135FDAD08F86ED118000B6C74DEEB5B2BA4A83D38B744B9CDB27C4698DDE51';
wwv_flow_imp.g_varchar2_table(9) := '110ED3DE8347A9F3F45374EAF957E8E0C933547FA0837634EFA3CA9D0D148C5491C7EBD70ADBDCC67D3CE6E02367B47D3ABE7196F61C6C27F6A5FB4D885794A1E9B8762DC173EBEDD86E8F401909607B001E64AFA438186F4E2CD06C7C59BA09042BE8C0';
wwv_flow_imp.g_varchar2_table(10) := 'B113F4D0D917A9B9FD3855D636CABEAD1AD1BA26DADDFE35CDD781AE13C4BE751F7CBDD02B4E8D70B1AC13D9DE1602D81E379A4B2C538FB89B93483FEBFB7C3EDAD77E8C8E9F7B91EA5A8F886776EBD07ABC5EAADB7744F87E41CCD1453EBF4F5B753CB5';
wwv_flow_imp.g_varchar2_table(11) := '422CC079B116AD010F5B26605D96B63CB57B77189F4FD2C0D422ADA4AF6FC3D1283D7CF6396A38D8451E9FDFB6C03CBE8098E3183D74E6398A545569F3883BACD42FD6724FAC496BC0C3960840005BC24574772E4977679372AF9DF50DD4F9F8B3E40F55';
wwv_flow_imp.g_varchar2_table(12) := 'CA36BB8D8098ABE3B16768C7AE0639D5985813AF4D36C0304500023085696DD0ACB8FB322E04B056236ADE77800E9D7A8ABCFE80DE54B42DCF7948CCDDD4DA26E7E4B5E10E91C461CA80004C61225A14E7DBFC4EAD3EBCA9753FEDED3A25AA1E514AF3EB';
wwv_flow_imp.g_varchar2_table(13) := 'F178A8E5D8A3D4641001DF8D8A8B8BF3D2ACC87DB342002672B624DEAE1D10B73AC51D4F6DF48EBA5DE2E07F54B39DF0C042ACAEADD396C26BE4EB135EB3D680874D0940009BE259EBBC3393A0A5F49B5BA148251DF8FA93E4F16CED997F652949B3E377';
wwv_flow_imp.g_varchar2_table(14) := 'E84EF745EAF9F4027DF1C1DB74E9BDBF6A856D6E1BB97E591BC363D76636F7E8F178E8D0C927291489683BF09B66FC710AAD82874D0940009BE2593BF5E17BEE3CCCE7F753FBA367C8170872D554595D4ED168CF6774E9C279EAB9F41F1ABB3540B3D353';
wwv_flow_imp.g_varchar2_table(15) := '145F88D1CAF2B256D8E6B6D1C15E6D0C8F1DBBF919F1BEA62611837C810A6A3F7596BC3E9FA811F13BD37C9B54ABE0212F0108202F9AB58E91D9C49A211E5BC57DFE60A45A58E67EE72646E8F30FDEA191FE1E22711A656E2F314A8CBDD3D743573F7C97';
wwv_flow_imp.g_varchar2_table(16) := 'E627C74483B9DF606535B51EE99283470D6B978D30B20840005938B22BFC66572CFD265350BCC35BD772387BC026B5C9A11B74E3E2C7944A6404E415B46B237E6AAB0DD1D186083DD45CA9957661731BF7793D19A7C9789CAEFFEF239ABA7D33D358C0DA';
wwv_flow_imp.g_varchar2_table(17) := 'B5EF30F9836BAF50BCFE727F93AC008E82DD222505C7283B60CCF00CBAF74827F13BB26660F0B9FCE0B5CFE550BFCF43BB6B8274AC314A2D3B42541DF25385DF4B5E8F472B2161731BF775354569777590781F4AFF0C7C7985466F7C96AE6DBEE1CF17B5';
wwv_flow_imp.g_varchar2_table(18) := '1CEA9083F02A2051E434BC395BD14871712B916F7D328A6045886AF71E62B36099BAD5437C2EAF0FAC0EF9A8433CC3D75706C585B3DE9A7FEBF510D54783DA2B4495D8571F3932D043D3C37D7A75D36D5DEB610A88572C1EC431702C6CA36C2400016C64';
wwv_flow_imp.g_varchar2_table(19) := 'A2B518DF50DAB57B2F79F8FC45EBC9FF109B1EA781EECC337F7D34204E77C2E4F588A33AFF6E397B7C629F03B561DA55997993ADFF8BCBB4F0D544CEF1C6468FD747F57B5A6413BF81272B30B208400059383215E34153D3B027D391C75A5D59A2DECBFF';
wwv_flow_imp.g_varchar2_table(20) := '15BD6B7F0BB0539CEBEFAEAE10F507FBDD5353413BC2FEB49355EABDF209ADEA1F424AB7E6DAD4D4EF96CD4631CB46181A010840C390FDC06F222D24D73EE9E613B715A3B599CFDC648FCCD4A66EF7522AB976C11B0A78A9559CEB677A1FCCDAB733447C';
wwv_flow_imp.g_varchar2_table(21) := 'CDC05EF8C2786AB897CD4D4B655D2379D3AF5A1C0BC7B4E90E8A76BA5800F665CCF88C59DBB49BC85318D3C840E64E4D535590ACFE31FAE4EB8142FE3D62CDFC5768FA38E32B9ADE862D51E1CC2A48892F1CF5B0A335B5BA99771B9F9B267E66E6017CF7';
wwv_flow_imp.g_varchar2_table(22) := 'A646DCE561DBCAC2A741BE74B6928B8B9498BB5FD07DB4A64E8E31C6241B614000B98E81147FC83EDD110885D356FECDFDBB7764E70E1B0E7EDDF98E70E682F8FEF8B0DE9C776B5C7B4ABCB99677A0C21DE9E7148509E408DD78BE1CA888E41891DD3477';
wwv_flow_imp.g_varchar2_table(23) := '7F5A36EC9017ACB2C932C3E8DB3867BE098C02D03FCB946FACAAED10408ECC670B2094634476536271413684C505B0AC586C84C51B66BA4BE39C7ADBFA6DA022F3EA953271E768FDFE2AD421801C594EA53FF9C95DFE50E15700E3C1B89D7BFE3C8F9922';
wwv_flow_imp.g_varchar2_table(24) := '7D8BC189784674A29AF3D76F10005E017222C235402E2CFC997ABDDDE3F5E966DE2D7FAA336FA7851D1E4FC6D972AAF07703F15F8DE97BE012402791BDC52B40360FD414230001289670849B4D0002C8E6819A62042000C512EEF670AD5E3F04603551F8';
wwv_flow_imp.g_varchar2_table(25) := '73150108C055E9C262AD260001584D14FE5C4500027055BAB058AB0940005613853F57117091005CC5158B75090108C02589C232ED21A0AC00F80F44F83BF5F90B6FBBC763F4F9E8BC2C46D417DFFD33152AC6F1463F76D8C6B90AAD8BFB8DE38DEBE198';
wwv_flow_imp.g_varchar2_table(26) := '397666A0F2B746282700FEA01B7F570EFF6795B1D924F1D71EAAF849498E996367063D130B343697246663148C0AB65202482CADD0CDC905EDDF97AA905CD331AE12DD13026036CCC8F47E6530502901F07F73347E61EC9EA3C7A9EB5B3FA6533FF9259D';
wwv_flow_imp.g_varchar2_table(27) := 'FEF9AF9D5B6C581BC7CCB1EF39FAB03C8C99CDE0745CD655309411C0E86C8212E97F68575119A5E3DFF919B53CF15DAA6A69275F38AA42AEB362E49839F69627BE470FBFF85362263C20215E259915DB2A142504104B2E679DF6743CFD32851BF7A9905F';
wwv_flow_imp.g_varchar2_table(28) := '5331469AF6D3D1732FC9B113F3295A4865FEF5ABEC28434309014CC65232757B3B4F50A87EAFACC35823101622D8D3717CAD221E8DCC44B56C7F951000BFACEB19AC6DEBD44D6CD711A8DD9FF9566923B375C3CAAAAA86000CDFF313AADB535609B43298';
wwv_flow_imp.g_varchar2_table(29) := 'D0CE26E92E91BE5E920D2532EC9E56090118BF11C41B7CF02FACB53B29A5F2EF8B54C9A99715F92B7A250420B30A0304D6118000D60141552D0210805AF946B4EB084000EB80A0AA1601070B40AD4420DAD21080004AC31DB33A840004E090446019A521';
wwv_flow_imp.g_varchar2_table(30) := '000194863B6675080108C02189C0324A430002280DF7CD67456FD108400045438D899C4800022841566687BEA4A10FDFA22B7F7A4D2B6CCF0E7597602598120228E231B01C8F51DF7BAFD3B50B7FA3BBBDDD9488CD6B85ED6B17DEA2BEF7DF201E53C425';
wwv_flow_imp.g_varchar2_table(31) := '293F150450C443A0FFDF7FA1C9E181BC334EDEEEA7C10FCFE7ED4787F5042000EB99E6F438D37785A647D7FEB76F3014A223274ED3D79FF9BE56D8E636DE910532DB7F954D254BB18386008A447C72F0869CA9ADEB24D534EF235FA0422B6CB7759E90FD';
wwv_flow_imp.g_varchar2_table(32) := '5343D7A50DC35E021080BD7CA5F799F13BD2AEAACFFCE595DE585997699B9918D39BB1B5990004603360DD7D329EF9BE1D8FD7AF37CBAD2F1094767C7E4EDA30EC250001D8CB17DE1D4E0002707882B03C7B09384800F6065A6AEFFA37AFF13A969792BC';
wwv_flow_imp.g_varchar2_table(33) := 'C92AC6B68A68E68FD3B306A162390108C072A4B91D56D735CA8ED8D43D69EB466C6A5C37A9A6BE59DA30EC250001D8CB577A6FEC3829EDC1EE4B34333E4CCBA9042D25133433768B06BB2FCBFEC6CE53D286612F0108C05EBED27BB4A59D76B5B46975BE';
wwv_flow_imp.g_varchar2_table(34) := '2374F3D22774F95FE7E9CA85F374F3CAA7C46DDCD978E02855361F6013A5080420802240D6A7683BFB12ED6A3DA857376CB9AFF5F11736B4A3C13E0210807D6C3778F6852AE9D0B3AF52E7D33F207EA6AF885452B8AA861A0F76686DDCE70B4536EC8706';
wwv_flow_imp.g_varchar2_table(35) := 'FB084000F6B1CDEBB97A7F17B57DF3653AF1EAAFE8F82BBFA0B6733F226ECBBB033A6C230001D886168EDD400002704396B046DB084000B6A1856337108000DC90A5325E63A94383004A9D01CC5F5202104049F163F2521380004A9D01CC5F5202104049';
wwv_flow_imp.g_varchar2_table(36) := 'F163F2521380004A9D01CC5F520225144049E3C6E420A0118000340C785095801202F0FB3C32BFF8E635896283B1BC382FDB8CCC6463191A4A08201CC88419FFEA6E19A6D19A90E2D319361103336BBC3BD34BE6C870E6FA2C595538E0937EEE5DCFFCE5';
wwv_flow_imp.g_varchar2_table(37) := '956C84A111B87BEDA2B6E5072333AE976B51420075113F79D26741E303372836D65FDA7C3A70F6F93BBD3471AB4F5B19B3AA15CCB44A993F282180A0CF4B4D55992F9EBAF9C13F68E1EE5099A7D67C780B6383D4FBD13FE50ECC8A99C9863236941000E7';
wwv_flow_imp.g_varchar2_table(38) := 'AF211AA450FABC96BF96FCEADB7FA0E18FFF4E73C33D64BCF8E3B12A94E585399ABBDDA331B8FACE1F29B110D3C26646CC4AAB28F0E055204619E2FE9D2129026E1CB97195BADF7B932EBEFE1A7DFAFBDF2A552EBEF13BEA7EFF4D6206CC820B1FFCCC88';
wwv_flow_imp.g_varchar2_table(39) := '6D558A5202A8F07BE9C8AE08354403AAE4D75C9C1ED298301B66646EA7F218A5940038657C81D75C5D41ED0D116AAE0E524DD84FAADCF3E6F8F5C23173ECCCA0BD3E225854C81B05FA183BB64EF3A99C00F40484C4AB019FEBF24B7E5763251DDF1D55AA';
wwv_flow_imp.g_varchar2_table(40) := '70CC1C3B3360163A17D5B6CA0A40B54423DEDC042080DC5CD0AA08010840914423CCDC042080DC5CD0AA0881220A4011A208D35504200057A50B8BB59A0004603551F873150108C055E9C262AD260001584D14FE5C4500022846BA3087630940008E4D0D';
wwv_flow_imp.g_varchar2_table(41) := '16560C0210403128630EC71280001C9B1A2CAC180420806250C61C8E250001383635E5B130A7470101383D43589FAD0420005BF1C2B9D30940004ECF10D6672B0108C056BC70EE74021080D33384F5D94AC04601D8BA6E3807014B08400096608413B712';
wwv_flow_imp.g_varchar2_table(42) := '8000DC9A39ACDB120210802518E1C4AD042000B7660EEBB68400046009C6754E50750D010863175DD1000000BB49444154C035A9C242ED200001D841153E5D430002704DAAB0503B0840007650854FD71080005C932A772CD46DAB8400DC9631ACD75202';
wwv_flow_imp.g_varchar2_table(43) := '1080A538E1CC6D042000B7650CEBB594000460294E38731B0108C06D19C37A2D2560A1002C5D179C81405108400045C18C499C4A0002706A66B0AEA21080008A82199338950004E0D4CC605D452100015881193E5C4B0002706DEAB0702B084000565084';
wwv_flow_imp.g_varchar2_table(44) := '0FD71280005C9B3A2CDC0A0210801514E1C3B5042000D7A6CE190B77FB2AFE0F0000FFFFCF5E33FB00000006494441540300E462342AC4BD986E0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(31310414697571049368)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D0B741C5779C7BF3BBB5ABDFC9056929F388AE247623B769C380F37B16425A190404E20D0D2F6340DD0F61C4ECB392D2D70686922ADECB4';
wwv_flow_imp.g_varchar2_table(2) := '4D5BDAD2F694D273DA064239700A0468C8810025B29C1721C1CF248E5FB19DD88EF5B6A3E74A3BB7F79BD5CE8EA5D5EAE1993BB33B7F9DB93B77EEDCB9F7FB7EDFBDFF9DC76AD720FC8100088496000420B4A187E320400401C0280081101380008438F8';
wwv_flow_imp.g_varchar2_table(3) := '703DDC04D87B080053400281901280008434F0701B04980004802920814048094000421A78B81D6E0219EF2100191258834008094000421874B80C02190210800C09AC412084042000210C3A5C0E3701A7F71000270DE4412064042000210B38DC050127';
wwv_flow_imp.g_varchar2_table(4) := '0108809306F220103202108090051CEE869BC064EF21009389601B044244000210A260C35510984C0002309908B6412044042000210A365C0D37815CDE4300725141190884840004202481869B20908B000420171594814048084000421268B8196E02D3';
wwv_flow_imp.g_varchar2_table(5) := '790F01988E0CCA41200404200093822CFFF9EED2BE44735567A27959CFC34DABFA7735355CD8D5B4B627D1B8A137D1B8B92BD17843D7CEED5B9102C840C58663C4B1E29871EC38861C4B8E29C77652B843BF194A01E8DF75C7EAEE44D3877A128D6DBD6D';
wwv_flow_imp.g_varchar2_table(6) := '4DDFEB696BDAABD21995646FDFE08829CCBE8830CF518A4EA74C3A316ED21112E21529C47E4388970D69BC841440062A361C2352B1E29871EC48C59063C931E5D8728C55E258EFB562AFC640B71A0BFD89ED5785510D4221004AFDB7F4B4353EA402BF5B';
wwv_flow_imp.g_varchar2_table(7) := 'A58194397E4C08FA8E1A282D92E8032AF05B545AA112967010E0586FB1622F440B8F8594308EF3D8E86E6B6AEFDED9F460DFCEEDD7150B8A7C7E14A500C8C486586FA2E97DDD6D8D5FEA696B3AADD47F2F91D849444D2A55AA8405047211A814443B84A4';
wwv_flow_imp.g_varchar2_table(8) := '5DA634F6A9B17342A52F76B735DEC9632AD701855E565402A0AEF5D6F4B6EDF8AB5E517B420A7A5290F80315A0552A610181F910685007FDB11A473FE531A5EE2FFC258F315556344BC10B800AC8829E9D4DBFDBD3D6B8475DEB1D9524FF5C4567A54A58';
wwv_flow_imp.g_varchar2_table(9) := '40C04D022BA5109FE731D6D3D6D4D1BDB3F1633CF6DCECC08FB60A5A00BADB76DC1711F20592F49F44623BE10F04F4106814523CAAC65E7B4F5BE37BF57439BF5E663AAA2005A02BD1DCAC54F87941F27122B9712627B11F04BC2120B712891FF158E431';
wwv_flow_imp.g_varchar2_table(10) := '4905F8575002C0A75C3D891DDF3084F9B462BD4D252C20100402DB784C7627767C8DC768100C9AAD0D0523003D89A65B23C2DC4F42FEE66C9D433D10D049400879BF2152FBF843623AFBBD9CBE0A4200D473D9074810BFEB87F2C31A9713601CAB97807A';
wwv_flow_imp.g_varchar2_table(11) := '62B0DA90C673D698D5DBF594DE66531068019092043F7A1192BEAA9C89A98405040A81408CC7AC3A6BDD157463032B00FCC18BDE5D4DDFE6472F418708FB40202701410FF6269ABECA6339E7FE001406520064A239DA63D47D87247D28008C600208CC9B';
wwv_flow_imp.g_varchar2_table(12) := '8014F4409F51FB2D1ED3F36EC4C303032900BD22F59890F21E0FFD46D320A08D80BA94BDB787E4A3DA3A24A2D9F6153801E86E6B7A8448FC16E10F048A88003F21488FED6039152801E8D9D9F82941F4B96021823520E00E011EDB3CC6DD69CD9D560223';
wwv_flow_imp.g_varchar2_table(13) := '00BD3B1B6F2329FEDE1DB7D00A08049480145FE86D6D0ECCC7D60321007C97D44C3FEA0B843D011D3A30AB380844C8301FE531EF953B7369D7984B65AFEAF688DA9D82C46AAFDA47BB2010240292680D8FF920D8E4BB00F4269AAF15449F09020CD80002';
wwv_flow_imp.g_varchar2_table(14) := 'BA08F098EFDDD9B449577FD3F5E3BB0090301F56C64554C202026122102149BE7F52D05701E84934DDAA4E87F83BF9C21478F80A0216011EFB6EDF10B41A9EC38BAF024082FE6E0EB6A22A08141D01D3B0CE807DF3CB3701E84E347E50797DAB4A584020';
wwv_flow_imp.g_varchar2_table(15) := 'B404D4BD801D3D89E6BBFC02E09B0090109FF2CB69F40B0241222085F9677ED9E38B00F43D7C47BD20EB2BBAFDF21BFD82406008F05CE8DFD5C4DF407C5936CDE7605F04C04C8D7F5C19ABFC56AF5840000444CAA48FFA8141BB0048496AE2CB8FF9E12C';
wwv_flow_imp.g_varchar2_table(16) := 'FA0481001378203D37F45AA85D007ADB9A6F2112F5843F100001278186F4DC7016799FD72E00EA8607DFFDF7DE33F4000285464098F37E1A305F57B50B8020A1DDC9F9C2C17120A09980F6B9A15500BA12B7AD20929B35434577205028046EEE7DE4DD8B';
wwv_flow_imp.g_varchar2_table(17) := '751AAB55008461BC47392754C2020220309580A0E4E8DD538BBD2BD12B0052E0D77CBC8B255A2E0202528AE6B9BA7139F5B50A8032748B4A58400004A627A0758E6813009920EE0BD7FFD3071E7B4080096C9A982B9CF73CF1A4F4BC13EEA09F9A79F297';
wwv_flow_imp.g_varchar2_table(18) := '731E090440605A02153DD4BC6EDABD2EEFD02600D248E1FADFE5E0A1B9E2246018A9595F065C2E017D02208536A72E170A8E07013F09981AE78A36015040AF54090B0880C00C04D4A4BC66862AAEED567DB9D6D60C0D89653354C06E100001454092D0F6';
wwv_flow_imp.g_varchar2_table(19) := '66A9510024044005170B08CC4C60767365E67666AEA1450012E9478035339B831A2000028A405CA6E78CCA7ABB6811804F0EDD56A9DC88AA8405044060660225E7686BD9CCD52EBF861601885694E07BFF2F3F5668214404CA69614C87BB7A0480925A9C';
wwv_flow_imp.g_varchar2_table(20) := 'D1010C7D80800E02D119E68C5B36681100A324823300B7228676424140D79CD122002352E0FA3F14C3164EBA4540D79CD12200C6B8813300B74606DA0905015D73468B008808042014A3164EBA4620DF9C71AD13D590160188D0386E022AD8415A922949';
wwv_flow_imp.g_varchar2_table(21) := '4363292B713E48B6C116222395D472D6AC4500461151DF0824C74DEA1C48D2F19E617AAD73900EBE3D40FBCF0ED06BE707E968D7B09538CF65BC8FEB705D3E2699327DB33BEC1D27359D356B1180B00753B7FF236AD2BFFD4E925EEF1A52937E88CE5D4C';
wwv_flow_imp.g_varchar2_table(22) := 'D2C0688A92E392CC3C739AF7711DAECBC7BC767EC86AE3BC6A8BDBD4ED07FAF39E0004C07BC6DA7A181E33E958F730BDDE3944D6A455DB97DBF9886AC31213D5E631751631A42E1B2EB74D1C3F7F026E1F0901709BA80FED8DAA77FC537D237444BDE30F';
wwv_flow_imp.g_varchar2_table(23) := '2653532C8844A3B46CD595D4B0F17ABA7AEBADB4F1D63B69CBEDEFA71BEFFAB09538CF6557AB7D0D1BB7D09277D5131F33B9A1417516C1970D27555FDCE7E4FDD82E3C021080C28B996DF198BA91F766FF081D5613BF7F78DC2EE74CACAC8C5634ACA50D';
wwv_flow_imp.g_varchar2_table(24) := 'DB76D0F5BF7A1FADDA740BD5D6AFA3454B575145552D95942F206144ADC4792EE37DB5F55753FDE66DD6317CEC8A8635C46D91E3EF82EA8BFB7CB37F94D806C72E640B8C0004A0C002963197AFD30FAB9B7ABD436AE2CB4C2951697939ADBDFE16BAEE8E';
wwv_flow_imp.g_varchar2_table(25) := '0FD0CAF53750657C190931F730F3317CECCAF55BADB6D66EB985CA2A2AB21DA93E7B87C694F80CD2408EB38E6C45E4824C60EE2323C8DE84C4B63E35F18EF70E93A92661C6E558AC94AEDAB49536EDB887AA965F9929766D5DB5E24ABAB6E9FD74D5B537';
wwv_flow_imp.g_varchar2_table(26) := '5089EA2BD330DF383CA1EE0DF4A9B3824C19D6DE10F0A255088017543D6CF39CBA237F5A9D7A9363F2572F59469B9ADF4735ABD6A8537AEF422A0C836AAE584B9B555F55754B6C2FA5B2E5B4BA2FC0371EED42640A828077A3A520DC2F2C23CF5C1CA54E';
wwv_flow_imp.g_varchar2_table(27) := '250059AB055DB97E33ADB9710719517D9FB5E2BED6DE743BD55F7D6DD61495E3A70567958D2A8BA5400840000A24507C8ADD3D30665B1B2B2D5377F3EFA0BA86F57699EECC92D51B69C3AFDCAE2E09B2E2D3A56CE47B03BA6D417FF3230001981F37AD47';
wwv_flow_imp.g_varchar2_table(28) := 'F1A33D3EC5CE745AB170A1BA1EBFCBBA9B9F29F36B5D59BD44D97237B14D34F1C74F07D8E6894DAC5C20E055131000AFC8BAD42E3F667B43DDF0CB34172989D2BA9B7650A4A43453E4FB3A1A2B9BB0A9C4B6E564EF081E11DA34829B8100043736EA2EBF';
wwv_flow_imp.g_varchar2_table(29) := 'A4136AF23B3F927FCD8D8D545256396FABC7860768A0FB1CF59F3D49DD270F5BA9FFDC49AB6C6C7870DEEDB24D576FBDCD3E7E5C3DA260DBD5CA2E432678042000C18B896D11DF54E38FE2660A56ABC77C15EA943BB33DDB752A39624DF4C3CFFD84F63D';
wwv_flow_imp.g_varchar2_table(30) := 'FD24BDF662071DDDF7737AE3D5FD563ABAF7E756D9BEA77F405CA7FBD4EB941A9BFBBF7055C6975A8F093376B1EDFC4F45996DAC8347000210BC985816F13B68F760F6A61F3F768BABC77CD6CE59BE48739C3A4FBCAA26FD0FAC89FE4E7FEF8C47729D37';
wwv_flow_imp.g_varchar2_table(31) := '5ED947FB9F7E82BAD4B1D29CFAD1E27C8DF063C2C535B57695AE8124B12F7601327326E0E50110002FE95E46DBFC4C9D9FAF679AA8DFB035939DD57AB8BF9B0EB43F49A70E1F2433357512472382CA4B0C2B717E72A3A9F1149D54C71ED8FD240D5FE899';
wwv_flow_imp.g_varchar2_table(32) := 'BC3BEF76FDC6ACAD7C0980B380BCB87CDD0901F0157FEECEF9C69FF3DD7F79FD1A8A552ECA5D394769EF5BC7E9D0F33FA3E4C888BD5708A2EA8A2835C4CBE8BA150B68E3D24A5A57576125CE7319EFE33A5C3773607278980E3DF77FD4FBD6894CD18CEB';
wwv_flow_imp.g_varchar2_table(33) := 'D20555B4EC8A06BB5E977A34C83ED905C8048600042030A1C81AE27CC78C4422B47CDDC6ECCE19729DC70FD1F1032F114D9C3E182AC2CB17C5AC097F4555192D2A8B4EDB02EFE33A2C08CBD4317CAC5559B575FCC02FA8F3F82BD6E66C5E96AFDB4C4624';
wwv_flow_imp.g_varchar2_table(34) := '625775FA641722E33B01353C7CB701064C22D03F326E97AC5ABB81222565F676BECC85B74FD1A9D7B393B4449DE6AFABADA0250B62143144BE432FD9C77597AA63D6D65490F3F2E0D4EB87E8C2F9372FA93BDD063F1A5CB526FB2125A74FD31D83F2A904';
wwv_flow_imp.g_varchar2_table(35) := 'BC2E8100784D788EED0F2553349E92F651D5EFBACACEE7CBF075FA91BD2FDA556251619DDE9746E71FE232758F800524A68424D3F0D1BD2FD0C8C5BECC66DE757CD56A7B3FFB842F13B171042633FFD11118178ACB900B8E77FF8555D5C4EFA4337B28E9';
wwv_flow_imp.g_varchar2_table(36) := 'D8DEE7D4697FFAFBBEF8CDBE215E4E51CECC7C70DE1A7C16D150534E99FB02D234E9D83ED557DEA3D23BD9F6058BABD21BEAF5C2C8D49B91AA188B8F0420003EC2CFD5B57392C497AECC55654A59FFB9533432346497AF52D7FA6551F742CB6D719B990E';
wwv_flow_imp.g_varchar2_table(37) := '860706882F3732DBF9D6F165591F2E3AC42DDF31D8A78F807BA3449FCD45DB137F0BAFF3ABB6162FC94E9E7C4EBF7DEAA8BDBB2266505579D4DE762B53ADDAE4B633ED9D3F99ED3353966BBDB86E855DCC1F0CC2D3001BC78C191D1520003A28CFB28FA1';
wwv_flow_imp.g_varchar2_table(38) := '64FA149EABC7CACBA97461F6F499CB72A5D4D808BDD39BFD80CFBB1697E5AAE64A99B3ED0BBD3D349ECC3E669CAE83B245712A292DB577E33E808D221019084020C29036628C3F3593CED22275FD3F91CDBBEA3F77DADE5FAE6EDA71B20B5CCE70DB7C63';
wwv_flow_imp.g_varchar2_table(39) := '30D3ECC5F36732D9BCEB858BE3F67E9C01D8280291810004220C6923C61DFFF5139DE57FFB0DF4673FA5B7A034FBDC3DDDA2FBAF0B62D93E06FABB67D541492C7B06808F05CF0A99B64A10006DA867EEC8790610754C9A7C478E0E65FF83AFCCC51B7FD3';
wwv_flow_imp.g_varchar2_table(40) := 'F5E93C03181DCEDE789CAE3E973B7D1973881CEF43CA4D405729044017E959F433EE78FEEF7CD7CC77E8B06312F223BB7C75DDD857E278B4E8149F7C6D97C462F66E9C01D8280291810004220C69239C932332CBEFF84B0E0FA70F56AFFC093EB5F27489';
wwv_flow_imp.g_varchar2_table(41) := '3A0460D871F691AFD388E36CC6E963BE63B04F0F0108801ECE73EFC531D1667BB02031DBAAF3AF378F2E84C81E24B31F729CBF0D38D235021000D750A22110708780CE5620003A69A32F100818010840C00202734040270108804EDAE80B040246000210';
wwv_flow_imp.g_varchar2_table(42) := 'B080C09C7013D0ED3D04403771F4070201220001085030600A08E8260001D04D1CFD814080B006FE8A00000F234944415408400002140C98126E027E780F01F0833AFA048180108000042410300304FC200001F083BAEA7378CCA49EA131E2DFFFCB24E7';
wwv_flow_imp.g_varchar2_table(43) := 'BF03F79F3F63FDAC57E78957F3AE5553F632B9BD4CBB6EAE7B06B35F59CE1DCF641FEFEFEFCC7E7108FBE8B4876D6616DC16927E0210008DCC0793293AD63D44FBCF0ED091AE217AAB7F94F827C032C9F9EFC0DDE7CE10FFACD74CC9697ECFE0D825ED65';
wwv_flow_imp.g_varchar2_table(44) := 'DA7573DDAB44CBD9E74CF6F1FEEE7367ED43D847A73DCC8059309363DDC3C48CECCA21CAF8E52A04400379534A7AEBC2A89AFCC36A8067BFF74F43D705D5054F7E1681338A15332B28E30BD4580880C7814BA9C9FFBA7AB7E7776767578B97ACA055D7DE';
wwv_flow_imp.g_varchar2_table(45) := '48AB6F6E0E7562068B972C77A221FE5D4466C6EC2ED9810DD70940005C477A698367D4697E723CFB4FF0F115F574D36FFF09ADBFF7F768E5B6BBA96E7363A81333587FEFEF5B4C984D861E33E33381CC36D6DE10800078C3D56AF5C2C838F50D676F9AD5';
wwv_flow_imp.g_varchar2_table(46) := '6FD946EBDEF70045CA1758FBF19225C04C984DFD75DBECC2BEA1710AC38F89D80EFB9081007808BD732069B7CEA7FCCBB7BEDBDE46263781E537BE9BAA1CBF26D4393096BB224A5D2100017005E3D446D4A53F0DA9477DBCC7884669ED1D1F22727C3516';
wwv_flow_imp.g_varchar2_table(47) := 'E12F3701C5684DF37D644422D6FEC1B114652FA0AC22BCB8480002E0224C67533C703323B7465DF74717543B77239F8700B38AAFB8225D43CD7EFEC5E4F4065EDD260001709BE8447B83A3D95FC28D55544E9462355B0231C77D127E3C38DBE30AAD9EDF';
wwv_flow_imp.g_varchar2_table(48) := 'F642003C8A40D2F11DFFC62CBFE2DB23530AB259C3F1CB484E9605E94C808D8600043838300D04BC260001F09A30DA07810013800004383830ADB80904C13B084010A2001B40C0270210009FC0A35B10080201084010A2001B40C0270210009FC0A3DB70';
wwv_flow_imp.g_varchar2_table(49) := '13088AF71080A044027680800F0420003E404797201014021080A044027680800F0420003E404797E1261024EF21005AA221B5F432D74EC62EF612A7B91EA7A77E3099E9F15D5F2F10007DAC03D1536A64884EEE7E9C5E7AEC6FE8E5FFF9572B71FE54C7';
wwv_flow_imp.g_varchar2_table(50) := '7729353A1C081B61843E0210007DAC7DEF69B8F3341D78FCDFE9EDA3AFD07832FB6D459C3F77E490DAF7651AE97AD3773B61803E0210002DAC85965EF275921A1EA0579EFA268D0E0D4C5B6D7470800EFDE81BC475A7ADA46D87FFCCBC7035686D420082';
wwv_flow_imp.g_varchar2_table(51) := '16118FEC7963F7F7687C74D46ABD62E122BAE6A6ED74C37BEEB312E72B162EB4F6719D937BBE6FE5F152FC042000C51F631A1FE8A3EEB7DEB03D5DB7753B2DAC5B499168CC4A9C5F7BC3767B7FD7E913343E78C1DE46A6780940008A37B6B667A3EA6E7F';
wwv_flow_imp.g_varchar2_table(52) := '66A3ACBC824A2AD2EFF699325EC72A1751ACB48CB3564A3A8EB10AF052940420005AC2EAEF23ADB1A18BB697258E496E174E644ACBCA27724463BE9F01F8CBCC06E16226884D4100B444254037B4F29922B23BFD9F7E595BB48428A49D4000421A78B80D';
wwv_flow_imp.g_varchar2_table(53) := '024C0002C0148A3C0991FE910DCB4DFEC5122B33F545CAEC2F170BC371CCD4AA2829120210802209643E37CAAA6AEDDD23C343767E7266D8F11901E73193EB617BEE04827A841154C360977B0462D5CB8826AEEFC7464769A8AF8B26FFBDD37D965263E3';
wwv_flow_imp.g_varchar2_table(54) := 'E962553756B5349DC76B51138000147578D3CE09C3A0FA4D37A737D4EB6B2FEEA63387F752E78957AD74E6F02FE9C8CBCFA93DE9A57EF3CDC4C7A4B7F05ACC042000C51C5D876FCBB6DE419555E9DF273453293A7BE2089D3A7CD04A674F1C252EE3EA0B';
wwv_flow_imp.g_varchar2_table(55) := 'AA6B68D90D7772162904042000210832BB282251DA70CFC7A97655036FE64CBC6FFDFB3F4A2212C9B91F85F32310E4A320005AA2E3FF537576335256496BDE7B3F5DDD740FADBAF6465AD2B08E965E7535ADDA749355C6FBB80ED7F53F058399FF1CBCB5';
wwv_flow_imp.g_varchar2_table(56) := '0002E02DDF89D683F5A196EA75D7D3CA6D77D35577FE0635DCF1115A79CB5DC46513C60664152C660181E2BA191000D791A24110281C021080C289152C2D40024137190210F408C13E10F0900004C043B8681A04824E000210F408C13E10F0900004C043';
wwv_flow_imp.g_varchar2_table(57) := 'B8683ADC040AC17B0840214409368280470420001E8145B3205008042000851025D808021E118000780416CD869B40A1780F01289448C14E10F0800004C003A8DCA4E1F828BB4C4D7CD106EF409A15016966993950CEEA58549A3D0108C0EC59CDA96659';
wwv_flow_imp.g_varchar2_table(58) := '348B7630C737F0CCA9B110561EE8E9B4BD2E2BC9B2B40B91718500C8BA82716A23E58E417BA1EB1C519E2FE39C7A74B84BA469D23B3D6FDB109C2CEDC200670AC934088047D12A2FC97EA9869932A9EFC82F3DEAA9F89AED3BF21231B38C67E5D12CCB4C';
wwv_flow_imp.g_varchar2_table(59) := '19D6EE108000B8C3714A2B425DB8565744EDF2A3CFFF98F837FAEC0264721218BBD84BC79EFFA9BD2FAE18324BBB0019570940005CC57969632B1695526482B0393E4E079FF80A0D9F3F7569256CD90498CDA127BFAADEFD535619B36386D6065E3C2130';
wwv_flow_imp.g_varchar2_table(60) := '313C3D693BF48D46D5A380E54A04322046070768FF138FD1D9179FA2C133C728353298D915DA756A788006CE1CB598301B669481C1933FA21866B60B615D683642003C8E584D45092D2ABBF41AF6F48117E9E00FBF41BFF8EF7FA017FE6357A8D32FBEFE';
wwv_flow_imp.g_varchar2_table(61) := '8F74E887DF2466E20CC5E2F228C5153B6719F2EE1330DC6F122D4E26D0102FA75555A56480F6643453B69911B3BAB2BA6CCA3E14B84F0043D27DA6395BE477B36BEA2A6941E9A56703392B87B4B052B16146CC2AA408B4BB0D01D088BC242268754D396D';
wwv_flow_imp.g_varchar2_table(62) := '5A5E49EB9756D0DABA725A5D1BEEC40C98053359A3D830238D2171B5AB426C4C8B00C45266FAB66E2112F2C066433DD78A450CAA2889D08258B813336016CCC403D405DB6494A2491DC66B110033128300E88826FA281A0252D39BA61601D0E54CD1441F';
wwv_flow_imp.g_varchar2_table(63) := '8E849E8019D573D6AC4500743913FA510300BE1170BBE33221B3FF0EE976E38EF6B408802E671C7E210B02054DC01C4B69B96CD62200C9B1C870414703C683806602E3142B9E9B80555437A4991FBA03818226A06BCE68390310896F2525D168414704C6';
wwv_flow_imp.g_varchar2_table(64) := '83C03404DC2EE6B9C273C6ED7673B5A74500B8634132FB0D0F5C80040220909380CEB9A24D0088040480F00702331390244ECE5CCB9D1ADA0440104100DC89195A2972023AE78A360130890E1779DCE05E080978E1B2242ABE330043C87D843F10008119';
wwv_flow_imp.g_varchar2_table(65) := '09E89C2BFACE00CC080460C6D0A3020810991AE78A3601A8A1F6232AB8EA4A40BD62010110988EC0D0C45C996EBFABE5DA044024484D7E71D455EBD11808F848C0A3AE0FA6E78A47AD4F6A569B00A4FB95B80C4883C02B084C4740EB1CD12A0042C8F6E9';
wwv_flow_imp.g_varchar2_table(66) := 'BC4639088000919A23C52B00D28CFC8088A44A58400004A6129029D3FCDFA9C5DE95683D03A849B4BF45240E10FE40A0C0097863BE38509778F6AC376DE76E55AB00B00992E48F788D0402207029013FE6867E01900604E0D2B8630B042C02421ADFB332';
wwv_flow_imp.g_varchar2_table(67) := '1A5F0C8D7D595DD52E7FE759751B003F9067D1C00B08D8044EC7895EB2B73465B40B80F8C4CB6344E22B843F102850021E99FDA848B46BF91E40A7FDDA05803B3722D147D51A4F0314042C20A0088C0B33F55F6AAD7DF14500AA1FFC195F02FC58BBB7E8';
wwv_flow_imp.g_varchar2_table(68) := '1004024840103D196F7BF6B41FA6F92200ECA8298D47788D040261279092C617FD6260F8D5715DA2BD5DF5FD944A5840A060087860E8531373C183A6676ED2370160D30C617E8ED7482010560242D067FDF4DD5701A86E7966BFBAFEF9BE9F00D03708F8';
wwv_flow_imp.g_varchar2_table(69) := '4580C77EBCA5E3A05FFD73BFBE0A001B302E8DCFA8F5804A5840204C04060D23FA69BF1DF65D009624DA8F91900FF90D02FD83C04C04DCDC2F84FC4CD5433F3BEE669BF369CB770160A3E3D72CFB1722F90CE791402004049E8DB7ECF97210FC0C840088';
wwv_flow_imp.g_varchar2_table(70) := '8F7C2B9592918F2B20B8145010B0143581C18811FD68503C0C8400300CEB5280E4C754DE54090B081423015392F89D209CFA67E0064600D8A09AD63DDF518F45FE82F34820102402AED822E4A76B5B777FD795B65C6A245002C03EC55B3A1E51F703F87F';
wwv_flow_imp.g_varchar2_table(71) := '05781309048A85C03FD5B4ECF1ED137FD3410C9C00B0A1F165439F50EB9FA88405048A81C077E3B2E34F83E848200580FF6578540E7E90043D1E4468B00904664B803FECA3C6F2FD224181BCB715480160B82B122F0FC51FEAF83592F4306F2381805F04';
wwv_flow_imp.g_varchar2_table(72) := 'E6DBAF20F1D7D52D1DF7F1589E6F1B5E1F17580160C7D50D415993E878480AE2C726292E4302810220901444F7C75B777F9EC77090ED0DB40064C0D5B6743C2685791B91789DF00702C12670D094C66DF1D68EAF07DBCCB4750521006C6A6DCB333FBF28';
wwv_flow_imp.g_varchar2_table(73) := 'C516956F53694C252C201024026A4C8A5DF165835BEB12EDDABFDB6FBE200A4600D8C18644FB484D6B47C294E6B592E8092E4302012F09CCA26D49427C3B258D0D35ADBB5BF806F62C8E094C958212800CB5BAC433476A5B3BEE15426E5765CFAA840504';
wwv_flow_imp.g_varchar2_table(74) := 'B41350E3AFDD10B4B5A665F7AFA73FC9AADD84CBEEB0200520E375BC65CFB3EA8C603B49E35704C9AF49A2D1CC3EAC41C00B023CC654FABA9AFCDBD5F8BB5DDDE5DFEB453FBADA2C6801C840AA49B4BF106FDDF3404C1AEF22419F95247DFF37CB8C6D58';
wwv_flow_imp.g_varchar2_table(75) := '170D81134288CFF118AB6DEDB85F4DFEA238F32C0A01C80CB14589F6EE9A968E2FD4B6EE594324EF9292BEA4F6BDA912161098330175C09BEACDE4DF88C47BD499E6EA78CBEEBFE5314645F4575402E08C4B4DEB9EA76A131D9FAC69EDB8C210E6162988';
wwv_flow_imp.g_varchar2_table(76) := 'BF74A443D51954090B08E422C063438D11D96248E37A1E3BEACDE40F6B5A7717EDC7D28B56009CD1AD6E79667F6D4BC7C32AA03B545A1091E66A7576F0619272A720E2EF24DCA7EA9F55094B380870ACF759B1576380C742C488AEE1B1A1921A237B7655';
wwv_flow_imp.g_varchar2_table(77) := '27DA794C143D8D5008C0E42856259E39A1CE0E1EAF49EC698DB7767C50059DD57EA55A8B7875659952FF6AF558673945E88A884157450D5AA7C462A390F23A53CAADA6306F440A2003151B8E11C78A63C6B1E318722C39A61C5B8EB14A1CEBEBADD8AB31';
wwv_flow_imp.g_varchar2_table(78) := 'C0632148FFA33F79BC7AB91D4A01C80754FCD10F4795FAF7ABC73A6FD73CD8F166D5431D6F2C7EA8E3A8128B57E3893D07EA127B7E59D7F2CCCB480164A062C331E25871CC38761C438E25C794639B2FF6CE7D61C94300C21269F8090239084000724041';
wwv_flow_imp.g_varchar2_table(79) := '110884850004202C91869F209083000420071414859B4098BC87008429DAF01504261180004C02824D10081301084098A20D5F4160120108C02420D80C3781B0790F01085BC4E12F08380840001C30900581B0118000842DE2F017041C0420000E18C886';
wwv_flow_imp.g_varchar2_table(80) := '9B4018BD87008431EAF01904260840002640600502612400010863D4E133084C1080004C80C02ADC04C2EA3D0420AC9187DF20A008400014042C201056021080B0461E7E83802200015010B0849B4098BD87008439FAF03DF4042000A11F020010660210';
wwv_flow_imp.g_varchar2_table(81) := '8030471FBE879E000420F44320DC00C2EEFDFF030000FFFFAA64286200000006494441540300A503F9B5B0E421F70000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(31310414939317049368)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000001B6494441547801EC943B4FC25018865F5A08949BC080A0C680F14A82CE46E42FE862985CFD0B266EFE217173979838383918594C34041003844B01A1A59E7306';
wwv_flow_imp.g_varchar2_table(2) := '1226BE82A44B9BBCCDD7EFD687970352FD366B582909165F3680ED80EDC05C0EA8431D7569054DDF86108F7B2C37CF2FDA3480AACBF0A6B2881F66B0BA7324C463E5E014AA667A1D4C4D686303526C176E7F08F5CF777C3D3F08F1D81D08435ADB83CE7A';
wwv_flow_imp.g_varchar2_table(3) := 'CC38610A805BEF8D44D16D54A1578A8879C6427AB908B5F10D6F380ADEB33480C1680C97E243BFDD44D0ED9CBC27E871A2D76E88DA401B4FF294C0940386D8E880C16C961CE241DC78CC738003AC04331719A0F3ABA1CB4E7AEDE30DAD7A0DD5CE704A3C';
wwv_flow_imp.g_varchar2_table(4) := 'C76BBC87F752214800AD8186C0490EE9CB1BC433E7D83FBB4232773D259EE335DE1338BE409BCD502048007DF6DD2BD14DCA3ED1A3C412E8B119F130E3460298B163A1F24200A5421EA5C7BC75004E49865396AD03082452086EA5AD03F0AD6FC31B4F2E';
wwv_flow_imp.g_varchar2_table(5) := '1F40FCD16823F28B0C6D08D9416B271DC2B0E242F5E91E3FAF0592CA853B84D80C058104E0621F27A496E02FBD9014E957C067FE0D80B268DE1E9203F32EA7CCD900B6034B7760D641FC030000FFFFF023D62D000000064944415403002F6A16B0DC8A9C';
wwv_flow_imp.g_varchar2_table(6) := 'AB0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(31310414033534049367)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDDF9931CE779D8F1A7E7D8FBC65E589CC44510040F912045F1B46851B125DBA9C851524ED98E934AB92ABFFB1FC81F90DF921F524EC5492A';
wwv_flow_imp.g_varchar2_table(2) := '4795135955B224C79275523C2591E2011004711137B00BEC62177BCC9DF719103CC0EDB77B76BB67BAFBFD6E6116BBF3BEFDF6F37CDE9EE967BA7B6673D7FFDDB30D6E18B00DB00DB00DB00DB00DB8B50DE4842F04104000010410704C408402C0B92927';
wwv_flow_imp.g_varchar2_table(3) := '610410400001042800D806104000010410704E4013E608802A70430001041040C031010A00C7269C7411400001045C17B89D3F05C06D07BE238000020820E09400058053D34DB20820800002AE0BDCC99F02E08E04FF238000020820E09000058043934D';
wwv_flow_imp.g_varchar2_table(4) := 'AA0820800002AE0B7C923F05C02716FC8400020820808033021400CE4C35892280000208B82EF0E9FC29003EADC1CF08208000020838224001E0C84493260208208080EB029FCD9F02E0B31EFC86000208208080130214004E4C33492280000208B82E70';
wwv_flow_imp.g_varchar2_table(5) := '77FE1400778BF03B0208208000020E0850003830C9A48800020820E0BAC0E7F3A700F8BC09F72080000208209079010A80CC4F31092280000208B82EB05EFE1400EBA9701F0208208000021917A000C8F804931E0208208080EB02EBE74F01B0BE0BF722';
wwv_flow_imp.g_varchar2_table(6) := '80000208209069010A804C4F2FC92180000208B82EE0973F05809F0CF72380000208209061010A800C4F2EA92180000208B82EE09F3F0580BF0D2D0820800002086456800220B3534B620820800002AE0BD8F2A700B0E9D0860002082080404605280032';
wwv_flow_imp.g_varchar2_table(7) := '3AB1A48500020820E0BA803D7F0A00BB0FAD082080000208645280022093D34A520820800002AE0B04E54F011024443B0208208000021914A000C8E0A492120208208080EB02C1F95300041BD103010410400081CC095000646E4A490801041040C07581';
wwv_flow_imp.g_varchar2_table(8) := '30F953008451A20F0208208000021913A000C8D884920E0208208080EB02E1F2A70008E7442F0410400001043225400190A9E924190410400001D705C2E64F0110568A7E08208000020864488002204393492A0820800002AE0B84CF9F0220BC153D1140';
wwv_flow_imp.g_varchar2_table(9) := '00010410C88C00054066A6924410400001045C1768257F0A8056B4E88B00020820804046042800323291A48100020820E0BA406BF95300B4E6456F0410400001043221400190896924090410400001D7055ACD9F02A05531FA2380000208209001010A80';
wwv_flow_imp.g_varchar2_table(10) := '0C4C22292080000208B82ED07AFE1400AD9BB104020820800002A917A00048FD1492000208208080EB021BC99F0260236A2C83000208208040CA052800523E81848F00020820E0BAC0C6F2A700D8981B4B218000020820906A010A80544F1FC123800002';
wwv_flow_imp.g_varchar2_table(11) := '08B82EB0D1FC2900362AC772082080000208A458800220C59347E80820800002AE0B6C3C7F0A808DDBB124020820800002A915A00048EDD411380208208080EB029BC99F0260337A2C8B0002082080404A052800523A71848D00020820E0BAC0E6F2A700';
wwv_flow_imp.g_varchar2_table(12) := 'D89C1F4B238000020820904A010A80544E1B412380000208B82EB0D9FC2900362BC8F2082080000208A450800220859346C80820800002AE0B6C3E7F0A80CD1B3202020820800002A913A00048DD9411300208208080EB0251E44F011085226320800002';
wwv_flow_imp.g_varchar2_table(13) := '08209032010A80944D18E12280000208B82E104DFE1400D138320A020820800002A912A00048D574112C0208208080EB0251E54F01109524E32080000208209022010A80144D16A12280000208B82E105DFE1400D1593212020820800002A911A00048CD';
wwv_flow_imp.g_varchar2_table(14) := '5411280208208080EB0251E64F0110A526632180000208209012010A80944C14612280000208B82E106DFE1400D17A321A020820800002A910A00048C53411240208208080EB0251E74F0110B528E32180000208209002010A80144C12212280000208B8';
wwv_flow_imp.g_varchar2_table(15) := '2E107DFE1400D19B32220208208000028917A00048FC1411200208208080EB0271E44F0110872A632280000208209070010A80844F10E12180000208B82E104FFE1400F1B8322A0208208000028916A00048F4F4101C0208208080EB0271E54F0110972C';
wwv_flow_imp.g_varchar2_table(16) := 'E32280000208209060010A80044F0EA12180000208B82E105FFE1400F1D932320208208000028915A00048ECD410180208208080EB0271E64F0110A72E632380000208209050010A80844E0C612180000208B82E106FFE1400F1FA323A02082080000289';
wwv_flow_imp.g_varchar2_table(17) := '14A00048E4B410140208208080EB0271E74F0110B730E32380000208209040010A80044E0A212180000208B82E107FFE1400F11BB3060410400001041227400190B82921200410400001D705DA913F05403B9459070208208000020913A00048D884100E';
wwv_flow_imp.g_varchar2_table(18) := '0208208080EB02EDC99F02A03DCEAC0501041040008144095000246A3A080601041040C0758176E54F01D02E69D68300020820804082042800123419848200020820E0BA40FBF2A700689F356B420001041040203102140089990A024100010410705DA0';
wwv_flow_imp.g_varchar2_table(19) := '9DF95300B4539B752180000208209010010A80844C04612080000208B82ED0DEFC2900DAEBCDDA104000010410488400054022A6812010400001045C176877FE1400ED16677D0820800002082440800220019340080820800002AE0BB43F7F0A80F69BB3';
wwv_flow_imp.g_varchar2_table(20) := '460410400001043A2E4001D0F12920000410400001D7053A913F054027D459270208208000021D16A000E8F004B07A0410400001D7053A933F054067DC592B0208208000021D15A000E8283F2B4700010410705DA053F95300744A9EF5228000020820D0';
wwv_flow_imp.g_varchar2_table(21) := '41010A800EE2B36A0410400001D7053A973F0540E7EC59330208208000021D13A000E8183D2B4600010410705DA093F9530074529F75238000020820D021010A800EC1B35A0410400001D7053A9B3F054067FD593B0208208000021D11A000E8083B2B45';
wwv_flow_imp.g_varchar2_table(22) := '00010410705DA0D3F95300747A06583F02110954EB0D592ED76461B52A73CB15B9BC549673F36B72FAFAAA7C30B722EFCFAEC87BD796E5D8D56579E7CA2D79FBF2ED9BFEACF7699BF6D1BEBA8C2EAB63E8583AA68EADEB88285C864100810E0B50007478';
wwv_flow_imp.g_varchar2_table(23) := '02583D021B11A8999DFD6AA5DEDCD19F5FB8BD936FEEB4CDCF17174B72F16649AE990260DE14034BA59AAC94EBB266FA97AB0DA9D41A52AF8B341AB76FFAB3DEA76DDA47FBEA32BAAC8EA163E998E7CCD8BA0EBDE97D37562AA231682C1BC9816510705B';
wwv_flow_imp.g_varchar2_table(24) := 'A0F3D95300747E0E8800815002BAC35EA9D4E4AAD9B19FBEB1DA7C557F7B475C15DD61AF7EB483AF9A1D7CA8015BE8A4636A81A0EBD075E95181F30BA5660C1A8BC6B46262D3185B1896AE0820D041010A800EE2B36A048204CA6667AEAFC43F3487F2F5';
wwv_flow_imp.g_varchar2_table(25) := '10FD0773AB72C51400FA2A3D093B5B8D4163D19834368D514F1DE829034E1704CD2EED2E0B2421770A8024CC023120F02981E64ED5BC9AD6C3EE67CD2BFD3B3B543D4C2FE6B0FDA7BA26EB47139BC678A760396362D76B0856CD9109CD2959C1120D0208';
wwv_flow_imp.g_varchar2_table(26) := '5000B00D209010013D97AE87D28FCF2ECB07B3AB3277EBF639F68484D772187A6440AF213831BB229A93E6A639B63C100B2090398164244401908C79200A8705D6AA75B9B45812DD51EAA1743DD79E350ECD4973D31C35D792C9396B39920F026913A000';
wwv_flow_imp.g_varchar2_table(27) := '48DB8C116F6604F41CB9BE2AD6ABEA67CDAB7D3DDF1F5B729E19D9DCBC8F6EB9BC27857C5E0A85BCE8CF77EE17EF763FF33D967F9AA3E6AA170E5EBB5516358865450C8A40820592125A2E2981100702AE08E84EEFC2CD52F3FDF8FAAA58CF9B47957BA1';
wwv_flow_imp.g_varchar2_table(28) := 'A757FAC626647466976CDD7B9FEC3AFCA8EC7BF41939F8C4F372FF977E5B1E78EA0579E89917E4E1A7BF2A0F3D6B6ECF7CD5FCFC8FCC7D5F6DB6DDFFE457E4E017BF2C7B1F7DBAB9AC8EA163E998C5BEC1A8C2143D227079B1DC34B8648E7E706A20325A';
wwv_flow_imp.g_varchar2_table(29) := '064220B4000540682A3A22B03901DDF1EBDBE73E985B91EBCB95E6FBF03735A279B5DE33382413DB77C9DE078EC8A12F7D590E3DFE9C1C78F809B9E7A12764E6C08332B1739F8C4ECDC8E0E884F48D8C4BF7D0981407C624DF3F22B9DEA1E62DDF3F6CEE';
wwv_flow_imp.g_varchar2_table(30) := '1B6DB6F50D6F91C1B149199BDAD65C56C7D0B10E3CF445B9EFC85372FF93CFCB9EFB1F92896D3BA56770589A470C64E35F7A71A01E115013B551A38D8FC69208A441203931520024672E8824C302FADE79BD2A5EDFB7AFAF7E379A6AAED82D5D43A332BE';
wwv_flow_imp.g_varchar2_table(31) := '73BFECFBC29372AF79A5BEFBC12FCAD88EBDD23F3A29DD036667DED327E608BFE44C8160FE6D7455A2CBEA183A56B1B7BF3976DFC8846CD97550763FF425B3EEA79A318CEFBED7C43426B9425136FA55AA369A1F5E74F6C65AF3D30C373A0ECB21804078';
wwv_flow_imp.g_varchar2_table(32) := '010A80F056F444A0658195724D74C7AFE7F9F5AAF89607300BE88EB5BB6FA07948FFC0A34F360FD5DF73F811199DDE215DCDC3F2BAAB96B67FE9BA35867B0E3D2C879FF82D3970E4E9668C3DA608F1F2850DC5A31F377C726EB569A6761B1A84851048B0';
wwv_flow_imp.g_varchar2_table(33) := '409242A30048D26C104B6604F49CB69EE73F6D5ED12EAED5369457D19CCF9F36E7F1F71F7946EE7BE66BB2EDDE079B87E7737AC5DE86468C6FA1BC79F5AFA70E34C6834FBE20071E7B56A6F6DC2B7AE4409AC712A4A52F35533B3554CB9616A633020884';
wwv_flow_imp.g_varchar2_table(34) := '12A00008C5442704C20BE8457D27AFAF36CFF3B7BEF3F2A438382A3BCD61FD079EFBBAEC303BFDA1B109299AE3F09D799D1F3E6FEDA931160B79D198771E3447069EFD9AEC78F07193D38836B774533BBD56422DD5B4A585E98C4022059215140540B2E6';
wwv_flow_imp.g_varchar2_table(35) := '8368522EB0B8566D7E3EBEFE519D5653E91B9B945D479E3587F8BF2253DB774B3E9F6F7588C4F52FE473326D7279E0A9AF9ADC9E93BE2D532DC7A8967A91A0DAB6BC300B208080AF0005802F0D0D088417A8371ACD3FD273767EADF9D7F6C22F29D23D3A';
wwv_flow_imp.g_varchar2_table(36) := '253B8F7C59F61E794E2627A7259FCBDEC3329FF39AB9ED7DF459D9F1E86F49D7F0442B444D53B5D5CF0E30D42D2D4B6704922290B438B2F74C933461E2C9BC801EAA3E63CEF5EB7BFA5BD93915FB8765FAD06372EF63CFC8D4E4A4F414B2FF70D41CA7A7';
wwv_flow_imp.g_varchar2_table(37) := 'A6E4E0E3CFC9F4FD8F4BA1791163B84D446D2F2F96E5ECFCAAA879B8A5E88500027E02D97FC6F1CB9CFB11884040FFD08D7EAADDAD52F80BFD725DDD32B9E790DCFBF8B3B27DF71EE936E7CC23082555437417F3B27DD73DA6F87956268C859A844D6071';
wwv_flow_imp.g_varchar2_table(38) := 'AD266AAEF66197A11F029D17485E041400C99B13224A8980BE65EDDCC29AB4F2F6BE818919D9F785A764D7C107A4B7B76F03D7C7A7042744987AC1605FFF80EC3616FB1E794A06C6A7432C75BB8B9AABBDCEC1ED7BF88E0002AD0A5000B42A467F048CC0';
wwv_flow_imp.g_varchar2_table(39) := 'CDB5AA9CBABE2A7A819AF935F09F97CB37DFC677F0912FC9F096D6CE7F070E9E810EC36313CD0F169AD97F58BC909F21A0F63A073A17192020858C0B24313D0A8024CE0A31255A6076B92C1FCEAF85FE28DF424F9F1C78F42999D97B5FE89D5BA201620A';
wwv_flow_imp.g_varchar2_table(40) := '2E6776FCDBF6DF2F071E79520ADD3DA1D6A2D705E85CE8C708875A804E0820F0B10005C0C714FC8040B0805E857EE96639F4CEBF777CAB1C78E22B3234B13578707A3405D4EADE27BF2ABDE333CDDF83BE6911A01FB14C111024457BE70492B9660A8064';
wwv_flow_imp.g_varchar2_table(41) := 'CE0B512550E0C64A45F42AF4B0A18DED3A680E6B3F23FD7DBD6117A1DF47027DBDBDC6EE2919DB7D50C4D3AB0524F04B8B80793347811DE98000024D010A802603DF10B00B2CAC56E5E262C9DEE94EABD9614D1D7C54761F7A508AF9703BAF3B8BF2FF27';
wwv_flow_imp.g_varchar2_table(42) := '02C57CAE79B1E4D48187C50BF9D90817CC1CE95C7D320A3F21D07981A446400190D49921AEA1CF57160000100049444154C408E8DBCDF48AF37A3D38A45CA128BB1E7E4A76EED927798F9D7FB098BD47C1ECF877EE3D20BB1E7C42C25C1CA873A473A573';
wwv_flow_imp.g_varchar2_table(43) := '661F99560410C841800002FE02FA3633BDD25CCF33FBF7BADDD2D5D72F7B1F7D5A26B76EBB7D07DF23139898D921FB1F7B568ADDDD8163EA5CE9E704AC54C27F3643E0A0744060C302C95D900220B97343641D162855EBA2E795C37CEA5CB7D9F9EFF9C2';
wwv_flow_imp.g_varchar2_table(44) := '5332B265B2C3516777F5C36313B2EFF1E7A5BBB73F30C96AADD19C3B9DC3C0CE7440C051010A0047279EB48305C21E4AF6CC61FFFD8F3C2583C3A3C183D2635302038343B2FFF1E724DFDD1B388E7E58D0F99B256904F6A40302F1092479640A8024CF0E';
wwv_flow_imp.g_varchar2_table(45) := 'B1754C60F65639D427FCE5F2397368FA39E91D62E7DFAEC9EAED1F947B1E7A42C27C7CF072A9263A97ED8A8DF5209026010A8034CD16B1B64540CF1D5F5E2A07AECBF372B2E3A1A76478744B605F3A442B303A3E29DBEEFB8278F962E0C0FA479A744E03';
wwv_flow_imp.g_varchar2_table(46) := '3BD20181C805923D200540B2E787E8DA2CA0E7FBCF2F98C3C641C78D3D4FB61D7E4C26A667DA1C21ABBB233039B34BB61E7C48BC5CFECE5DEBFEAF1705EA9CEADCAEDB813B1170548002C0D18927EDF505CECEAF85FA7CFF2D7B1F90A9EDBB256D6FF4D3';
wwv_flow_imp.g_varchar2_table(47) := 'BAA66EBE556B35A994CBE656925ABD2E7A9FB97B7D9484DE9B33F8D33BF6C8C8CE038111EADF0D08FD390E81A3D10181700249EF450190F41922BEB6092CAC55E59639671CB4C2FE89EDB263CF7ED11D5050DF4EB6372A2529CD5D90C50BEFCBDC8937E5';
wwv_flow_imp.g_varchar2_table(48) := 'F2BBAFC887BFFAB17CF08BEFCB7B3FFF9E1C7DF1FB72ECA5BF97E32F7E4F4EBEFC7D3967DA2EBFF372B3AF2E53BA7E491A95B54EA610B8EEBC99849DFB0E4AEF58F0BB2FE657AAB25CE6AD8181A87470468002C099A926519B40D5BC04D6CFF9B7F5D1B6';
wwv_flow_imp.g_varchar2_table(49) := '42DF90DCA39FF05728E8AFC9BAD5AB525A9895EBA78FCAE95FFE44DEFEC5DFCBD1375E9313EFBC25674E9E900BE7CEC9ECB559595C5A92B5D555A9944A5236FFAF2CAFC8CD9B4B72CDB45D387FBED9F7C43BBF91A3BF7ED58CF10339F5FA8FE4FA996352';
wwv_flow_imp.g_varchar2_table(50) := '9ABF2652AB242B67134D575797EC3DFCA8E47B82DF1E7865A92C353D276096E31F02F10A247F740A80E4CF1111B641E0FA724556CBF68FFAF3F205D97DE821D1ABD0DB1052B85554CB529EBF22D74FBD25677FFDA29C78F32539FDFEBB727DF65A73E75E';
wwv_flow_imp.g_varchar2_table(51) := 'AB56A5B1811D9E2E52AB569A63DC989B93D3C7DF3163BF2C67DFF8B9DC38F5B69417AE8A54437E3472B84C36D5AB776048F63CF44511CFFE94A6477874AE852F041010FBA30520041C1058ABD6E5EAADE0ABFEF54FD58E4E26E4A23FF34A7C65F6BC9C7C';
wwv_flow_imp.g_varchar2_table(52) := 'E34579FBF517E5F4FBC765D6ECF4D756CD4E398E93F966CCB5B59259C79C9C7AFF3D79EB959F9A75BF24CB57CE4A528E0A8C6C99906D07EE0FDC62AF9AA300E59ABDD80B1C840E080408A4A19902200DB3448CB10998FD9A5CD20F8BD11F2C6B199DDE26';
wwv_flow_imp.g_varchar2_table(53) := '93BBF65B7AB4A9A9519735736EFEC3B75E9263BF7A59E6CDABF346277666C66B7E6E568EBDF99A7CF8D6CB26A6CBE64843E777AA93BB0FC89029046CB361CEF6C8A5C5E082CF36066D0864418002200BB3480E1B16D08BC296022EFCD343FF5BF73F20F9';
wwv_flow_imp.g_varchar2_table(54) := 'BCFDED661B0E22E48295C539B9F8CE2B72F4972FCAB52B57CD0E37E48271763385C0B52B57E4D82F7F2E174C215036318A983BE35CA765EC82394DB3FDD06312742AE0E66A950B0285AFF804D2313205403AE689286310D0F3DC612EFC9BD87D50FA0787';
wwv_flow_imp.g_varchar2_table(55) := '638820DC9095959B72E19D57E5AD977E24972E5C907AE75F687F2E703D0871E5D24579FBE51F9B22E555A9AC2C7EAE4FBBEEE81F1C94F11D7B0257A773AFDB4060473A209051010A808C4E2C69050B2C95AB816FFB2BF6F6CAF4DE7B83078BA9C7F58B67';
wwv_flow_imp.g_varchar2_table(56) := 'E5E88B3F94CBE73F8CE4157FCE1329E43DE92E78D25BCC356FFAB3DEA76D9B4DA3618EAF5F3A7F4E8EBEF40F72FDC2A9CD0EB7E1E5B7EEBF5FF2DD3DD6E5F5C88F6E03D64E3422B00181B42C924B4BA0C48940D4020BE63070D02BC0E9035F303BCBCEBC';
wwv_flow_imp.g_varchar2_table(57) := 'E5EFF289B7E5F45BAF4BA5B6F1F7AE7B6687DF5DC8C9486F4126078AB275A85B768C74CB9E2DBDB26FBCAF79D39FF53E6DD33EDA5797D165376A5EA954E4CCBB6FC8E50FDE3543B4FF94408FD9F94FED3964D6EDFF4FE75EB701FF1EB420906D010A806C';
wwv_flow_imp.g_varchar2_table(58) := 'CF2FD9F90894CD316B3D0FECD3DCBCBB6F6C42C6A6B7357F6EE7B746BD2A1FBEF39A5C38F99E596D6B3BCF8279193FD09D97E9C12EB373EF95C3D3FD7270B24F768DF63477FEE3FD4519EA2E48573E27A66BF3A63FEB7DDAA64580F6D565EE9FEA6F160A';
wwv_flow_imp.g_varchar2_table(59) := '53662C1D53C7360185FED730E72A2E9C3C26E7DE795DF4E7D00B46D4717CFB3DD23B366D1D4DB701FD0C086B271A116849203D9D73E909954811884E60F65645CCD16ADF01BD5C4EB6EE7BA0B9A3F4ED144343A3BC2667DF7A55AE9D3FDBD2E879B3379F';
wwv_flow_imp.g_varchar2_table(60) := '30AFF0EFD9D2D3DCD9EB4EBBBF2B2FB94DBC8CD73107BB6F17135A14E8D8BA0EBD3F7470E665F65593CBD9375F9446B5BD57DE77170BB2F59E03E259FE60906E03B321DE021A3A5F3A229022815C8A622554042211D0577CF3ABF64FB4EB1919177D5F79';
wwv_flow_imp.g_varchar2_table(61) := '242B0C3948A3B42227DE7849E62E5F0CB98488BE2ADF36DC2DFA6A7DC61CDEEF2BE69BF7851E2064475D8F8EADEBD075E93AF5BE908BCBDCD52BF2FE6B3F9146A514769148FA8D4E6E95BE71FB5180EB2B15D16D2292153288F3026902C8A52958624520';
wwv_flow_imp.g_varchar2_table(62) := '0A013DEF6BCE00F80EE5E50B3273CFBDE6D5B36F97C81BF410F91973D87FF1C65CA8B1BB0B399919EA6A1EDED743F79E176AB1483AE9BA749D7A9A4063D058C20CBC7473414EFDEAA7D2A855C3748FA44FCEB84CEFDC2B3AA77E03EAB6A0DB845F3BF723';
wwv_flow_imp.g_varchar2_table(63) := '9055010A80ACCE2C79AD2B503787A4839EEC074646455F39AE3B404C779E7BFB55B97EED5AA8D147FB0AE6DC7C8F4C0C74494B87E3438D1EBE93AE5B63B867AC47467B0B12E66B7E7E41CE1FFD9548A37DEF651C1D9F94C1B1096B78FA87A0F47480B513';
wwv_flow_imp.g_varchar2_table(64) := '8D08040AA4AB432E5DE1122D029B13D0CF825FADFA5F55EFE5F2B275F73EF13CF3D27173AB0ABDF4B553EFCAB54BE743F5DFD25F949D233D6DBF36C1169C1E01D839DA231A9BADDF9DB6AB173E94B9B3C7CDAFAD5DE06816D8D03FCFF3647AE73DD665D7';
wwv_flow_imp.g_varchar2_table(65) := '2A3559E12F055A8D68CC9E000540F6E6948C2C02CD577A96179F7D43C332303A651921DAA6854B67E5DC89A3A1069D31E7FAB79B5BA8CE1DE8A4B16D35A725C2ACFAC313C764F1DAA5305D23E9D33F362503235B7CC7D2D30041D785F82E4C03021F09A4';
wwv_flow_imp.g_varchar2_table(66) := 'ED3F0A80B4CD18F16E58405F6FEA1100DB0013D3DB24DFD56DEB12595B69F1869C7DEF4D31672502C7D4F7E94F9857FF811D3BDC61D29C96D00B0483C2A8D76A72E6E8AFA5B4783DA86B24ED8562978C4FCF58C7D20F06D26DC4DA8946043224400190A1';
wwv_flow_imp.g_varchar2_table(67) := 'C92415BB807EEE7FA5E6FF14EF99C3FF4301578CDBD710BEB5BABA24A7DE7E4D2A25FB5BE3CCD16BD1C3EB637DC5F08377B8A75E20B87DA4DB9C46B107525E5D3506AF4B7575D9DE31A2D6A1E91DE2E5FC9FF274DB5835A702225A1DC3382790BE84FD1F';
wwv_flow_imp.g_varchar2_table(68) := '0DE9CB858811F015D0DDFECD35FBD5E77DA393D2D53FE43B46540D8D7A4DAE9E7A4F9617833F2F7FDB5077E80BECA28A2F8A71B6988265C6C41E34961A5C39F19BA06E91B477F5F44BEFC88475ACC535FFEB43AC0BD288400A05280052386984DCBA40D5';
wwv_flow_imp.g_varchar2_table(69) := 'BCF25F0A280086A766C4CB87BB9ABDF5083E59E2D6F52B72F9FC994FEEF0F949AFF60F7B619DCF101DBD5B8F04680E41415CBD725996AE5D08EAB6E9767DF53FBA7587759C45B38DF0990056221A7D04D2783705401A678D985B1628D5EA52AAEA7180F5';
wwv_flow_imp.g_varchar2_table(70) := '17F5F4F07FC05BC5D65FB2C57BEB55B972F664E0797FFDE8DD1DC33D2D0E9EBCEE9A83E6628BAC5EABC9E533276C5D226B1BDC322D9EE534C06AA52EE5AAE52AD1C8226120043A2F4001D0F93920823608AC06BCC56B6872467AFBFA638F6465F6A22CCC';
wwv_flow_imp.g_varchar2_table(71) := '5DB1AEA7ABE0891E3EF73C6BB754346A0E9A8BE6640BF8E6FC9CAC5C3B67EB12495B4F6FAFF407147A2BA6088864650CE290403A53A50048E7BC11758B02B7020A80812D535228C47BF8BF51ABC8457DA5EB7F20A299D5D6C16EE92D66E7A1A9B9684ECD';
wwv_flow_imp.g_varchar2_table(72) := 'E4FCBED51BB7FFF85198B744F88D11E2FE623E27C393DBAD3D974AF66B45AC0BD388408A04B2F32C932274426DAF80D9B748B966DFEB0E59DE231E55B4B7AE7E280B376E5887D39DE5704FBC85883580981A3527CDCD36FCCD8505593646B63E51B40D8E';
wwv_flow_imp.g_varchar2_table(73) := '8E9B61FC0FAFE8B6A2DB8CE9C43F044209A4B51305405A678EB8430BDC7EFB9FFF79DD424FBF749B43C3A107DC60C76BA7DFB72EA9A7A6B70E7507BE7DCE3A48421BF55480E6A69FCD6F0BF1DA99F76CCD91B4F50C0E4BAED8E53B56A55617DD667C3BD0';
wwv_flow_imp.g_varchar2_table(74) := '804046042800323291A4E12F70CB1CD235CFE9BE1D0647C7623FFCBF3A7F4D9656D77C63D08611F3CA5FFFFCAEFE9CC59BE6366472B4E5B6B0B8246B8BF6A324B6E5C3B4154C15323432E2DB55B715DD667C3BD080C06704D2FB0B05407AE78EC8430A2C';
wwv_flow_imp.g_varchar2_table(75) := '97FD5FFDEB1063137A65785E7F8CED76F3DA45A954FCCF2DEB4E69BCBF2BB6F52765607D6B60DEEC80FDE2D1B76B2ECEC6FB11C17AF07F747C4A6C875AB81050F872408002C08149763945BDA6AC64795B971E9A1E18198B9D6821E073EFF5FDFE41E7C8';
wwv_flow_imp.g_varchar2_table(76) := '630FB20D2BE8EFCA8B1601B655CD5FBD28528FF7037906C6262597F37FFAD36D46B71D5B9CB421A00269BEF93F02D29C15B123F09140431A52B53C93E773392974F7499C5FB5B565B9B56CFFB8DB91DEEC5DF8E7671A94EBD2CD05A99557FD168FE4FEAE';
wwv_flow_imp.g_varchar2_table(77) := 'FE4173DAC7FFA88F7E18906E3B91AC8C411048A8000540422786B0A211D027725303F80E56E82A4A2EEFBF23F05DB085865BB317A561B9ACBC98F7A43B9F6B61C47477D55C3567BF2CB45E5B5D98F36B8EE4FE5CA1CB3AEF1A835E0B10C9CA1824C302E9';
wwv_flow_imp.g_varchar2_table(78) := '4ECD9D679D74CF13D16F50A06CF9F43F1DB2AB67406CE78265B35F664F327FE5BC759481EE7CAC215857DE81C6E6691793B36DD50BD72E9BA229DED300F962B72D04D17703583BD08840CA052800523E81846F17A8585E79EB92B7FFF88F5E16A6BF457F';
wwv_flow_imp.g_varchar2_table(79) := 'AB56CBB2383FEF3BB0390321FA1E79DF0E196D18EC2E588B9EF9B9AB528DFB3440AFFD931FF5F30032CA4F5A1109A47D180A80B4CF20F15B05AAB6E3B8E6A568B12FDE2300A5E5252955FD5FC9EAE1707D7B9C35890C360E992300DD05FFA79FB5B59254';
wwv_flow_imp.g_varchar2_table(80) := '4AE55833EFEA35736F590347002C38346542C0FF119889F448C27581E63500168462DFA0A575F34DA535FB7BFFFBBAF2923385C8E6D794AE11F2392FF0E38ECBA5782F042C9AE2CFD343303E7441DB8ECF62DCED8C40FA13CDA53F053240C05FC0F609C0';
wwv_flow_imp.g_varchar2_table(81) := '9EE749A1BBD77FE1085AAA657B01D06379151CC1EA133D4450EE9592DD6EB3C915BABAC52BF87FF6826DDBD9ECBA591E8124085000246116882136817AC3F237004C01908FF90F0055D656ACB9D9AE86B72E9881C6AEBCFDE9A75A2EC59A65A1BB4F3CCF';
wwv_flow_imp.g_varchar2_table(82) := 'FFFA0FEBB6136B640C9E06812CC4687F04662143727056400FE1D6AC17017A92CF1724B6AF7A4D6A0187B173961D506C71256460CBD1F76684B54ABCD700E49B7F0FC0BF00B0D58ECD00F98640CA052800523E8184EF2FA03BFFA027F17C9C9F01D0A84B';
wwv_flow_imp.g_varchar2_table(83) := 'D011809CFFFEC73FB18CB4E4028A9F6A25DE2300B95C5EC4E2AF470082B61FE1CB51816CA44D01908D79248B75DC95DC72000010004944415404F4E0BF3E89AFD3F4D15D9E34770212D357880220601F185360C9183667D9F96A84B572591A31BE15306F';
wwv_flow_imp.g_varchar2_table(84) := '8A3FCFF37F0AD4834725DBBB4834486E08A458C07FEB4F7152848E800AD4CD33F89AE5838074E7EB79017B211D6883B78679F958AF567C978E71D5BEEB4C5A83CD403F07A051F3F7DB6C2EB97C4E6CEF02A8E9FC99DB66D7C3F2D913C84A46B9AC24421E';
wwv_flow_imp.g_varchar2_table(85) := '08DC2D107804C0ECFB3DCF7CBB7BC1887E6FD4EB12F479F29E7811AD2D7DC37801B957D796458C615C9935D76F99FF6ACDCC9E6E447105C0B80874588002A0C313C0EA3B2B10F7F3BBD7D9F452BDF6B8ED82E65E2F224D3520C1C724909D612900B23397';
wwv_flow_imp.g_varchar2_table(86) := '648200020820804068010A80D054744400010410705D204BF95300646936C9050104104000819002140021A1E88600020820E0BA40B6F2A700C8D67C920D020820800002A10428004231D10901041040C07581ACE54F0190B519251F0410400001044208';
wwv_flow_imp.g_varchar2_table(87) := '50008440A20B0208208080EB02D9CB9F02207B734A46082080000208040A50000412D10101041040C075812CE64F0190C5592527041040000104020428000280684600010410705D209BF9530064735EC90A010410400001AB0005809587460410400001';
wwv_flow_imp.g_varchar2_table(88) := 'D705B29A3F0540566796BC104000010410B00850005870684200010410705D20BBF9530064776EC90C0104104000015F010A005F1A1A10400001045C17C872FE1400599E5D72430001041040C0478002C00786BB11400001045C17C876FE1400D99E5FB2';
wwv_flow_imp.g_varchar2_table(89) := '430001041040605D010A807559B81301041040C07581ACE74F0190F519263F041040000104D611A000580785BB10400001045C17C87EFE1400D99F6332440001041040E0730214009F23E10E0410400001D7055CC89F02C0855926475F01CFB78586AC0B';
wwv_flow_imp.g_varchar2_table(90) := '30F7599F61F20B12A0000812A23DB502F95CF053BCE705F7D90C402360E1BCC38FC0A0DC83EC0268039B3D2F78EEF321B6A1C015D12185026E84ECF0D38F1B13EC7296D59A7D17D2A8D7A5DEB0F7D98C5FCD2B48500C95801837B3FEA42F1B94BBDAD5BC';
wwv_flow_imp.g_varchar2_table(91) := 'F89EA26AB5AA34CCCDE65475787E6C2EB4654320BE4757367CC822A102BADFAED51B525DE7A63B9672B52ECBE59A683FBF141AB59AACDE5A94CAEA9254571623BD95D796656579492AD5AADFEA9BF7DF2AD5A45CAB8BC6BC5E2E59BC4F73D59C35F72682';
wwv_flow_imp.g_varchar2_table(92) := 'CFB74AA52AB7166F4A796D25D2B969CE756955566E5C955AB9E4B376696E3BBA0D95CDB6A431AF371735B3FDD9B631DFC16948B4802BC15100B832D329CC539F584BE6C97761B52A97164B72726E554ECCADC8FBB32B727C76B9F9F307E6F7F56EEF9BFB';
wwv_flow_imp.g_varchar2_table(93) := 'AF2C9503B33EF9FA4FE4DD177F20475FFAA11C7B399A9B8EF5EECFFE4E4EBCFA6369981D845F109A9FC6F8BEC967BD1CB27C9FE6ACB9AB81BF4F434EBEF98ABCFBB3EF473E3FEF98314FFFE6B5C023001AA36E4B7E73A1DBE371B32DBE6FE6507FD66DF4';
wwv_flow_imp.g_varchar2_table(94) := 'B2D9566FAE5545B75D5B7E7E79733F02ED12A000689734EB694960C13C815EB8B926A76FACCA87F36B327BABD27C45BF5AAECB5AA52EE56AC3F7A6AFD6CCD1FD50EB6B9843C055F32ABD6C5E6D96CAE6493B829B8E55334717CCDE3F540C1AABC66CCB29';
wwv_flow_imp.g_varchar2_table(95) := '4B6D9AABE61C0AC7EC41D5524DA39C1F9DF346A31E2A048D5563B6CD816E93BA6DEA11836B665B3D7B634DCE986DF7A2290696CC519E502BA2534204DC098302C09DB94E45A6FA04AAAFB63E344FA03756AACD9D7C2A02274804EE12289922F5FA72454E';
wwv_flow_imp.g_varchar2_table(96) := '5F5F9593E6A6DBF65D5DF815818E0A500074949F95DF11D05758176E969AAF9A56CCABFC3BF7F33F02591058364701F488806EE3BAAD6721A7ACE6E0525E14002ECD7642735D3587F4F5C9515F2DD5C21D954D6826848580BF806EDBBA8DEBB6AEDBBC7F';
wwv_flow_imp.g_varchar2_table(97) := '4F5A10688F0005407B9C598B8F805E2CA587FC7942F401E2EECC09E8B67EF2FA8AE8B69FB9E4529F905B095000B835DF89CA56AFEED70BFC1AF1BD153F51F9120C027704F4C242DDF6F53170E73EFE47A0DD021400ED16677D4D81F9D56AF3EAFECDECFC';
wwv_flow_imp.g_varchar2_table(98) := 'F33DFDD2B365467AC6B771C3A0FDDB80D9F6741B6C6ED01BF8A6DBBE1601FA58D8C0E22C1283806B435200B836E309C8573F00E6DCC25AF848BC9C1407466464D7BDB2E389DF917DCFFFA1DCF73B7F2487BFFA4D39F4DCEFCAA1E7FF400E7FFD4FB861D0';
wwv_flow_imp.g_varchar2_table(99) := 'B66D40B739DDF6741BD46D71DFF3DF90ED8FBF20233B0F34B75531DBAC84FCD2C702EF10088945B74805280022E564B020013DFFA94F7812F2B07FD7D098EC3AF25B72E8F7FF95EC7DFE9BB2F5D01119DF734886B7EF93DEC91DD23536235D43E3522816';
wwv_flow_imp.g_varchar2_table(100) := 'B961D0B66D40B739DDF67ACD36A8DBE2F89EFB65E6F01765EF6FFFB3E6B6AADBAC6EBB418F8766BB792C9C9B5F137D6C347FE75B8704DC5B2D05807B73DEB18CF5635375E71FF66D50D3E609F5817FF2E7B2F5A1A7A4B77F408A794F72FC7116E12B9902';
wwv_flow_imp.g_varchar2_table(101) := 'BA6DEA36AADBAA6EB387FFE05F8B6EC361A22DD71AA28F0D7D8C84E94F1F04A210A0008842913142095C5E2A373FC52FA8734F5FBFDCFF7BFF52767DF105299A57B541FD69472089025D3DBDCD6DF8D0EFFE0BE9E9EB0B0C513F4D501F23811DE9108B80';
wwv_flow_imp.g_varchar2_table(102) := '8B835200B838EB1DC8595FD9DC58A904AE796872460E7DFD4F65707AA7789E17D89F0E082459C0F33C19DAB6570EFDEE9FC8D0E4D6C050F53152D3AB03037BD20181CD0B50006CDE90114208E81F55097A5EEB191E93FDCF7C5DBA86C7852F04B224D035';
wwv_flow_imp.g_varchar2_table(103) := '3A29FB9FFE9AF40C0E5BD3D2C7C83573A4CCDA89C61804DC1C9202C0CD796F6BD67A7153D0879E14CCE1D2BD4F9843FEA3D36D8D8D9521D02E81E2D88CEC79E22B92EBEAB6AE52FF10D65A958FC4B422D11889000540248C0C6213582A5525E8C2BF9987';
wwv_flow_imp.g_varchar2_table(104) := '9E92C11D076CC3D08640EA0586761D12DDD66D89E85F1D5C2AD56C5D688B58C0D5E128005C9DF936E6BDB8667F321B99D92D53071F696344AC0A81CE094CDF774486B6EEB4061074C4CCBA308D088414A000080945B78D09E8C57FA580C39933871F937C';
wwv_flow_imp.g_varchar2_table(105) := 'D17E5874636B67290492275030A70066EE7BD41A983E66B818D04A1461A3BB435100B83BF76DC95C0F65DA9EC88A7D033230BDBB2DB1B012049222A0EF0CC815BA7CC3D1C2994F07F4E5A12122010A80882019667D81954A4DF4CAE6F55B450667EE11CF';
wwv_flow_imp.g_varchar2_table(106) := 'F244E8B71CF723906601CF1CF11A32A7BEFC72D0C7CC32D701F8F1447ABFCB835100B83CFB6DC85D3FDCC4B69AC1A91D223936439B116D1914D0CF07B014009AF16A857702A803B7F80478E68DCF96918D40B5DE30DF7DFE9927C1BE9109F1842F04DC12';
wwv_flow_imp.g_varchar2_table(107) := 'F03C4FFA462744CCFFE2F3657DECF82CC3DDAD0AB8DD9F02C0EDF98F3D7BDB93583EEF4977FF60EC31B002049228D0DD3F24FA18F08BCD76ED8CDF32DC8F402B02B9563AD3178156056C4F62792F27859E3EE10B0117058A3DFDA28F01BFDCEB9C01F0A3';
wwv_flow_imp.g_varchar2_table(108) := '89EC7ED707A200707D0B883B7FCB19809C39F7AFB7B843607C049228902B14C4B6FDD7F54AC024064E4C9911A000C8CC54263311CBFEBF79FAD3132F9981131502310B7866DBB75C0220B6C74ECCA139323C695200B00D744CC0EBD89A593102C910E031';
wwv_flow_imp.g_varchar2_table(109) := '908C7970350A0A0057679EBC114000018705485D840280AD00010410400001070528001C9C745246000104DC16207B15A00050056E08208000020838264001E0D884932E020820E0BA00F9DF16A000B8EDC0770410400001049C12A000706ABA49160104';
wwv_flow_imp.g_varchar2_table(110) := '10705D80FCEF085000DC91E07F0410400001041C12A0007068B24915010410705D80FC3F11A000F8C4829F10400001041070468002C099A92651041040C07501F2FFB40005C0A735F819010410400001470428001C9968D2440001045C1720FFCF0A5000';
wwv_flow_imp.g_varchar2_table(111) := '7CD683DF10400001041070428002C089692649041040C07501F2BF5B8002E06E117E470001041040C001010A000726991411400001D705C8FFF30214009F37E11E041040000104322F400190F9292641041040C07501F25F4F8002603D15EE4300010410';
wwv_flow_imp.g_varchar2_table(112) := '4020E3021400199F60D2430001045C1720FFF5052800D677E15E041040000104322D400190E9E92539041040C07501F2F713A000F093E17E041040000104322C400190E1C92535041040C07501F2F717A000F0B7A105010410400081CC0A500064766A49';
wwv_flow_imp.g_varchar2_table(113) := '0C010410705D80FC6D021400361DDA104000010410C8A8000540462796B410F015683444EA7573AB7D74333FEB7DBE0BD080403A0588DA2E400160F7A115814C0834CA6B72EBFC7139FFF2F7E4F877FF4ADEFABFFF517EF93FFE7DF3A63FEB7DE75FF99E';
wwv_flow_imp.g_varchar2_table(114) := '2C9B3EDA3713499304020858052800AC3C3422906E81DAC255B9F4CA77E58DBFFE0F72F487DF928BC7DE9085AB17657571416AE552F3A63FEB7D178FBE21EF9A3EDA5797A92DCEA53B79A2775C80F483042800828468472085028DCA9ACCBDFD73F9CD77';
wwv_flow_imp.g_varchar2_table(115) := 'FFBB9C3BFAA654D656A5A187FD0372D13EDA579779EB3BFF556EBCFB9234AAE580A568460081340A5000A471D68819018B40EDD6BC9C7EF16FE5E4EB3F333BFE354B4F7B53D9140D275EFDB19C7DE97B525BB969EF4C2B020913209C60010A8060237A20';
wwv_flow_imp.g_varchar2_table(116) := '901A81CAFC1539FEE36FC9ECE9E391C57CF58377E5C48FBF2D959BD7221B93811040A0F30214009D9F0322402012817A69C5ECFCBF2D4BD72E4732DEA707B979E5BC1CFFD1DF48BDB4FAE9BBF91981840A105618010A80304AF44120E1027AEEFE831FFD';
wwv_flow_imp.g_varchar2_table(117) := '1F599E8FEFC2BDE51BB372EAA77F230DDE3298F0AD81F0100827400110CE895E08245AE0FA7BAFCAFCA5732DC5E8E5F2E2E50B2D2D73FDFC69B971FC972D2D436704DA2DC0FAC20950008473A217028915A82EDD90336FBC142ABEE1F149D9F7D06372FF';
wwv_flow_imp.g_varchar2_table(118) := '53BF2D0F3FFB823CFCCC579A3FEF7BE449D1B630839C7DF345A92D735160182BFA209064010A8024CF0EB121104260F6E43B522BD9AFF6CFE573B2FBDE4372E0D1A76574DB1EE91B1E9742DF70F3A63F8F4EEF9003479E95DD07EE935C3E6F5D6B656545';
wwv_flow_imp.g_varchar2_table(119) := 'E64EBD6BED4323029D1360CD61052800C24AD10F81040AD45797E4F2C9F7EC91799EDCF7F06332B1F701917CD1BF6F2E2F13FB1E94FB1EFC82E8E901FF8E22974E1E93FADAB2AD0B6D08209070010A80844F10E1216013585D989372C027F6EDBCC7BCE2';
wwv_flow_imp.g_varchar2_table(120) := '9FDA6D1BE6336D7D5BF7CA8E5DF6FEA5F9ABB266D6FD9905F905810408104278010A80F056F4442071020BE74E8858AECA1F181890A9FD0FB61CF7D4BEC3D23F34E4BF9C59E7C2850FFCDB69410081C40B5000247E8A0810017F8195A545FF46D332B56D';
wwv_flow_imp.g_varchar2_table(121) := '8739ECDF657E6AF15FB1479ACB5A165BB9396F69A509814E08B0CE560428005AD1A22F02491230AFC22BE5927F449E273D039657F1FE4B365B7A06869BFFFB7DAB542B7E4DDC8F00022910A00048C124112202EB0A34EA52A9F8FFA19E7C578F74F70DAC';
wwv_flow_imp.g_varchar2_table(122) := 'BB68983BBB7BFAACDDAA5A7C84F80343D6416844204201866A4D8002A0352F7A23901801FD44BE46BDE11B4FAED025F9DE41DFF6A0867C3E2F9EE7FF1451ABD6A5618A90A07168470081640AF83FBA93192F512180C0A705CC61FE4FFFFA999F75E7DDE2';
wwv_flow_imp.g_varchar2_table(123) := '27FD7D6679FDC53ABEA73DB821901001C268558002A05531FA23E08C80FFD10567084814810C0B5000647872490D0104107045803C5B17A00068DD8C2510400001041048BD000540EAA7900410400001D705C87F230214001B516319041040000104522E';
wwv_flow_imp.g_varchar2_table(124) := '400190F209247C770582AFC1DFEC457CC16B08EEE1EEFC9079FB0458D3C604280036E6C65208745EC0CB493EE7FF10AE57CB525D5BE605D4B50000100049444154D9709CB55A4D1AF59AEFF2F99C59B789C1B7030D0820906801F3084E747C048700027E';
wwv_flow_imp.g_varchar2_table(125) := '0266E75BE82AFAB54ABD5296B5C51BBEED410D6BA5356B97624F8F881601D65E342210B700E36F54800260A3722C8740A7053C9162D1FF0FFD346A555959B8BEE1285716ECC5836DDD1B5E290B228040DB04726D5B132B420081C805FA8646AC635EBB7C';
wwv_flow_imp.g_varchar2_table(126) := '511AA5D64F03D45797E4EA850FAD63F70DDAFF589075611A1188488061362E4001B0713B9644A0E30243533BAC31ACAEACC8955347AD7DD66BBC72F67D595B595EAFE9E3FB86A6B77FFC333F208040FA042800D23767448CC0C7027D13DBA46B68ECE3DF';
wwv_flow_imp.g_varchar2_table(127) := 'D7FBE1C2D9D3B2BA706DBDA675EF5BBD7E492E7D7866DDB63B77760D6D91BEF16D777EE57F043A24C06A37234001B0193D9645A0C302B9DE41D9BAFF706014475FF989CC9E7E57C47255BF346A327BF21D39FAFA2FA451AF5BC79C39F890783D03D63E34';
wwv_flow_imp.g_varchar2_table(128) := '228040B2052800923D3F448740A0C0E4C14725D7D563EDD768889C3D7E54DE7FEDC772DD1402CBB317A4B67A4B6AE555D19FAF9F3926EFBFF223397BE29834B4B365B4426F9F4C1CF882F08540A70558FFE604280036E7C7D208745C20DFD32F3B0F1F09';
wwv_flow_imp.g_varchar2_table(129) := '15C7E2FC0D396D0A81F7DE7C5DDE7AF927F2D62F7E24EFBDF19A9C7EEF1D595C980F35C6CEC38F4BBEBB2F545F3A21804072052800923B374486403801CF93A9079F96A189E970FD4DAF46B522B5D28AD4D696CD91FFAAB927DCBF91A96D3271F84B229E';
wwv_flow_imp.g_varchar2_table(130) := 'F08540870558FD66052800362BC8F2082440C02B14E5E0D7FE54FAB74CC616CDC0F85639F03B7F2C5EBE10DB3A18180104DA274001D03E6BD68440AC02B962B71CFCF23764603CFC9180B0010D4CCCC8BDCF7F4372960F1E0A3B16FD1088428031362F40';
wwv_flow_imp.g_varchar2_table(131) := '01B079434640203102C59109B9EF856FCA969D7B238B697CD77E33E63F95E290FDED8691AD90811040A02D0214006D61662508B44F20DF3F22FB5EF823D97FE4692976DBDF1D608BAACB2C7BE08BCFC9BEAFFC73C9F70DDBBAD286409B05585D1402B928';
wwv_flow_imp.g_varchar2_table(132) := '06610C0410489680E779B2E5E12FCBC37FF8E7B2E3E0835268E1D07DA1AB4B761D7E541EFEE6BF95B1079E153163095F08209039010A80CC4D290921F08980BE72DFF6F43F96237FF217F2E01FFC99EC78E41919DBB157FA864725DFD52D859E5EF3F358';
wwv_flow_imp.g_varchar2_table(133) := 'F33E6DD33E47FEF82F64EB135F931C1FF4F309243F254A8060A211A00088C691511048B6402E2F7D933B64DBC3CFCAFEE7FF501EF8FD3F9323E6E8C0A3DFF837F2C0EFFDA9ECFFF2379A6DDA474CDF6427437408201085000540148A8C81405A047239F1';
wwv_flow_imp.g_varchar2_table(134) := '8ADDCD8FF1F5FA47C4EB33B7DE41F1BA7A444C5B5AD2204E9705C83D2A815C5403310E02082080000208A4478002203D7345A408208080F3020044274001109D2523218000020820901A010A80D44C158122800002AE0B907F94021400516A3216020820';
wwv_flow_imp.g_varchar2_table(135) := '8000022911A00048C9441126020820E0BA00F9472B400110AD27A3218000020820900A010A80544C134122800002AE0B907FD4021400518B321E0208208000022910A00048C1241122020820E0BA00F9472F400110BD29232280000208209078010A80C4';
wwv_flow_imp.g_varchar2_table(136) := '4F110122800002AE0B907F1C02140071A832260208208000020917A00048F804111E020820E0BA00F9C7234001108F2BA32280000208209068010A80444F0FC121800002AE0B907F5C02140071C9322E0208208000020916A00048F0E4101A020820E0BA';
wwv_flow_imp.g_varchar2_table(137) := '00F9C7274001109F2D232380000208209058010A80C44E0D8121800002AE0B907F9C02140071EA32360208208000020915A00048E8C41016020820E0BA00F9C72B400110AF2FA32380000208209048010A80444E0B4121800002AE0B907FDC021400710B';
wwv_flow_imp.g_varchar2_table(138) := '333E0208208000020914A00048E0A41012020820E0BA00F9C72F400110BF316B4000010410402071021400899B1202420001045C1720FF76085000B44399752080000208209030010A80844D884BE1345C4A965C11584780C7C03A2822C2BDED11A00068';
wwv_flow_imp.g_varchar2_table(139) := '8FB3B36BC979FEA9D76A75A9D5AAFE1D684120C302BAEDEB63C02F45DB63C76F19EE47A015010A8056B4E8DBB240DEF3AF006AF5BA54CAA596C7640104B2205029AD4AD514C17EB9D81E3B7ECB64E37EB26897000540BBA41D5D4F3E6F2B001A525A5E74';
wwv_flow_imp.g_varchar2_table(140) := '5486B45D1758BB7553EAA608F673B03D76FC96E17E045A11A00068458BBE2D0B146DC7311B0DB9357B49CC7F2D8FCB0208A459A06136FAE5EB57AC29581F3BD625D3DD48F4ED13A000689FB5936BEACADB37B1C54B67441A35276D48DA6101F3CAFFE6F9';
wwv_flow_imp.g_varchar2_table(141) := '0FAC00DD05FB63C7BA308D088410600B0B8144978D0BF475E545FCCF02C8ADABE744EA1400C29753028D7A556E5D39EF9BB35E3A33A08F1DDF1E596D20AF760A5000B453DBC1750D76E7A5A0CF663EB9D7CB2559BE78CAA795BB11C8A6C0D2F913D2B014';
wwv_flow_imp.g_varchar2_table(142) := 'BE7973EAAC9F02209B939FA0AC2800123419590CA5609EC8BA0A9E35B5F36FBF22B5B5156B1F1A11C88A406D75592EBEF3AA359D9E424EB408B076CA602329B5578002A0BDDE4EAE6DA8BB60CDFBE6D58B72EDC46F441A7C2C8A158AC6F40B986DFCCAF1';
wwv_flow_imp.g_varchar2_table(143) := '376471D67E01E090397296FE64C920E9021400499FA10CC437D45390A2E5ED809AE2B95FFF446E5DE254805A70CBAEC0A239F47FFE8D9F5913D42366FA98B176CA642349B55B8002A0DDE20EAEAFB79893615304D8526FD4EA72E2A7DF91EACD595B37DA';
wwv_flow_imp.g_varchar2_table(144) := '1048AD4079FE8A7CF0B3BF0D3CD235DA5B946E730A20B58912786A042800523355E90E746AB04B72015B5BD99C1B3DF10F7F2DE59B73E94E96E811B84BA0B4302B1FFCE85BA29FFE7757D3677ECD9BC7C8787FF133F7B9F20B79B65FC06C6EED5F296B74';
wwv_flow_imp.g_varchar2_table(145) := '4FA090F364EB60B758DE10D044599CBF2147BFF35FE4D6C553C215014D12BEA558C09CF29745B32D1FFBDBBF92A5851BD64CF4B1316D1E23FA58B176A41181880428002282649860812DE695CD48AFFD82401DA5542AC9D11FFCB55CFCF5CFA4BAC24705';
wwv_flow_imp.g_varchar2_table(146) := 'AB09B7F40954961745CFF7BF67B665DDA68332D0C786BBAFFE8374688F438002200E55C65C5740DF0C386D4E0584797F73A356950B6FFE5C8EFDDDFF94D9A3AF4AE9E675D1BF9CA61FA1BAEEE0DC8940870574DBD46DB4B47843E68EBD26EF996DF792D9';
wwv_flow_imp.g_varchar2_table(147) := '86755B0E0AADAF2B27FAD808EA473B02510A500044A9C95881025DE624E7F691EEC0EB01EE0CB4323F27A75EF9A1BCFBFFFEB79CFAF977E4DA076FCBD2957352BA71456A8B73525FBA6E6EFA3FB7FA1206ED35B8DEDC06755BD46DF2EA89DF34B7D177FF';
wwv_flow_imp.g_varchar2_table(148) := 'EE7FC9C9977F202B0BE1AE65D16B63768CF4883E36EE6CF7AEFD4FBE9D11A000E88CBBD36BED29E464C7704FE0F5009F46AA2CCDCB8D53EFC81953041CFDEE7F9337BFFD97F2EB6FFD2779E36FFED2FCFC9FB97D1B8337DB6CA0DB9E6E83BA2DEA3679F6';
wwv_flow_imp.g_varchar2_table(149) := 'C5EF36B751DD563FBDEDDA7ED6F3FEFA58D0C784AD1F6D08C421400110872A63060AE8F9CE99A1EEC07EBE1D1A22F55A5DAA958A54CADC3068FF36A0DB9E6E839BB95A551F03FA58F0DDCE9D6820C94E095000744A9EF58A5EF07460A24F0A011F120415';
wwv_flow_imp.g_varchar2_table(150) := '025913D06D5EB77D7D0C642D37F2498F0005407AE62A9391EA8704ED1DEB95A19E7C26F3232904EE1618EE2D886EF3BAEDDFDDE6E2EFE4DC39010A80CED9B3E68F047A8A39D939D22333C35D811F19FCD122FC8740EA04BA0A9EE805B03B46BA45B7F9D4';
wwv_flow_imp.g_varchar2_table(151) := '2540C09913A000C8DC94A633A17CCE9389FE2EB96FAA5F768EF20499CE5924EAF5047467AFDBF4C1C97ED9D25794BC5EF9B75E4727EF23E94E0AE43AB972D68DC0DD02FA5901FA59E8FBC67B65D7588FE8E1527DE5C473E6DD52FC9E5401DD56BB0B3919';
wwv_flow_imp.g_varchar2_table(152) := '3187FA779B6D58B765DDA675DB4E6ACCC4E5A60005809BF39EF8ACF555D2484F41768FF6C8BE2D7DA2574BEB1F14EAEFCA35FF508A5E44A5EF9FD6275B6ED27C4B250EED77D06D50B745DDE1EBB6A9DBE8F6E16ED19DFE2EB3EDEAEFBA2D0B5FEB0A7067';
wwv_flow_imp.g_varchar2_table(153) := '670528003AEBCFDA430814F35EF31D03B75F4DF5C9C1C93EB9DF9C2A78607A401EDCCA0D83CE6D03BA0DEAB6A8DBE4BEF13ED16D74CC1CE62F98535A21366DBA20D051010A808EF2B372041040C05501F2EEB4000540A76780F5238000020820D001010A';
wwv_flow_imp.g_varchar2_table(154) := '800EA0B34A041040C07501F2EFBC000540E7E7800810400001041068BB000540DBC95921020820E0BA00F9274180022009B3400C082080000208B4598002A0CDE0AC0E010410705D80FC93214001908C79200A041040000104DA2A4001D0566E56860002';
wwv_flow_imp.g_varchar2_table(155) := '08B82E40FE4911A00048CA4C10070208208000026D14A000682336AB420001045C1720FFE408500024672E8804010410400081B6095000B48D9A1521800002AE0B907F9204280092341BC4820002082080409B042800DA04CD6A10400001D705C83F5902';
wwv_flow_imp.g_varchar2_table(156) := '1400C99A0FA2410001041040A02D0214006D61662508208080EB02E49F34010A80A4CD08F1208000020820D006010A803620B30A041040C07501F24F9E000540F2E68488104000010410885D80022076625680000208B82E40FE4914A00048E2AC101302';
wwv_flow_imp.g_varchar2_table(157) := '0820800002310B5000C40CCCF008208080EB02E49F4C010A8064CE0B5121800002082010AB000540ACBC0C8E000208B82E40FE4915A00048EACC1017020820800002310A5000C488CBD008208080EB02E49F5C010A80E4CE0D91218000020820109B0005';
wwv_flow_imp.g_varchar2_table(158) := '406CB40C8C000208B82E40FE4916A00048F2EC101B02082080000231095000C404CBB008208080EB02E49F6C010A8064CF0FD1218000020820108B0005402CAC0C8A000208B82E40FE4917A00048FA0C111F02082080000231085000C480CA9008208080';
wwv_flow_imp.g_varchar2_table(159) := 'EB02E49F7C010A80E4CF111122800002082010B9000540E4A40C88000208B82E40FE6910A00048C32C1123020820800002110B5000440CCA7008208080EB02E49F0E010A8074CC135122800002082010A9000540A49C0C86000208B82E40FE6911A00048';
wwv_flow_imp.g_varchar2_table(160) := 'CB4C1127020820800002110A50004488C95008208080EB02E49F1E010A80F4CC1591228000020820109900054064940C84000208B82E40FE6912A00048D36C112B020820800002110950004404C93008208080EB02E49F2E010A8074CD17D12280000208';
wwv_flow_imp.g_varchar2_table(161) := '201089000540248C0C82000208B82E40FE6913A00048DB8C112F020820800002110850004480C81008208080EB02E49F3E010A80F4CD1911238000020820B069010A804D133200020820E0BA00F9A7518002208DB346CC0820800002086C528002609380';
wwv_flow_imp.g_varchar2_table(162) := '2C8E000208B82E40FEE914A00048E7BC11350208208000029B12A000D8141F0B23800002AE0B907F5A052800D23A73C48D0002082080C0260428003681C7A208208080EB02E49F5E010A80F4CE1D91238000020820B061010A800DD3B120020820E0BA00';
wwv_flow_imp.g_varchar2_table(163) := 'F9A759800220CDB347EC0820800002086C5080026083702C86000208B82E40FEE916A00048F7FC113D0208208000021B12A000D8101B0B21800002AE0B907FDA052800D23E83C48F0002082080C0060428003680C62208208080EB02E49F7E010A80F4CF';
wwv_flow_imp.g_varchar2_table(164) := '2119208000020820D0B2000540CB642C80000208B82E40FE5910A000C8C22C92030208208000022D0A5000B4084677041040C07501F2CF8600054036E6912C10400001041068498002A0252E3A23800002AE0B907F56042800B23293E481000208208040';
wwv_flow_imp.g_varchar2_table(165) := '0B0214002D60D115010410705D80FCB3234001909DB92413041040000104420B500084A6A223020820E0BA00F967498002204BB3492E08208000020884214F1FA9000002DB4944415414A00008094537041040C07501F2CF96000540B6E6936C10400001';
wwv_flow_imp.g_varchar2_table(166) := '041008254001108A894E08208080EB02E49F35010A80ACCD28F9208000020820104280022004125D10400001D705C83F7B021400D99B5332420001041040205080022090880E08208080EB02E49F45010A802CCE2A392180000208201020400110004433';
wwv_flow_imp.g_varchar2_table(167) := '020820E0BA00F967538002209BF34A5608208000020858052800AC3C3422800002AE0B907F56052800B23AB3E485000208208080458002C0824313020820E0BA00F96757800220BB734B66082080000208F80A5000F8D2D080000208B82E40FE5916A000';
wwv_flow_imp.g_varchar2_table(168) := 'C8F2EC921B0208208000023E0214003E30DC8D000208B82E40FED916A000C8F6FC921D020820800002EB0A5000ACCBC29D08208080EB02E49F75010A80ACCF30F9218000020820B08E0005C03A28DC85000208B82E40FED917A000C8FE1C932102082080';
wwv_flow_imp.g_varchar2_table(169) := '00029F13A000F81C097720800002AE0B90BF0B0214002ECC323922800002082070970005C05D20FC8A000208B82E40FE6E085000B831CF64890002082080C0670428003EC3C12F08208080EB02E4EF8A0005802B334D9E0820800002087C4A8002E05318';
wwv_flow_imp.g_varchar2_table(170) := 'FC88000208B82E40FEEE085000B833D7648A0002082080C0C70214001F53F003020820E0BA00F9BB244001E0D26C932B0208208000021F0950007C04C17F08208080EB02E4EF960005805BF34DB6082080000208340528009A0C7C430001045C17207FD7';
wwv_flow_imp.g_varchar2_table(171) := '0428005C9B71F2450001041040C00850001804FE21800002AE0B90BF7B021400EECD39192380000208202014006C0408208080F30200B8284001E0E2AC93330208208080F3021400CE6F0200208080EB02E4EFA60005809BF34ED608208000028E0B5000';
wwv_flow_imp.g_varchar2_table(172) := '38BE01903E0208B82E40FEAE0A5000B83AF3E48D00020820E0B4000580D3D34FF20820E0BA00F9BB2B4001E0EEDC93390208208080C30214000E4F3EA9238080EB02E4EFB2000580CBB34FEE0820800002CE0A5000383BF5248E0002AE0B90BFDB02FF1F';
wwv_flow_imp.g_varchar2_table(173) := '0000FFFFA319606900000006494441540300A9D46EA55143B1430000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(31310415248816049369)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(31310416516112049371)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/tolu_is_employee
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(32395557731228415778)
,p_name=>'TOLU_IS_EMPLOYEE'
,p_static_id=>'tolu-is-employee'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'Declare',
    '    v_count number;',
    'Begin',
    '    Select count(*) into v_count',
    '    from TOLU_users',
    '    where upper(username) = upper(:APP_USER)',
    '    and upper(role) = ''EMPLOYEE''',
    '    and upper(account_status) = ''ACTIVE'';',
    '',
    '    Return v_count > 0;',
    'End;')))).to_clob
,p_version_scn=>'SH256:ET4k27zQG9ITiFjYY351rkvUDqhtCJ9KLnj3TNkzsew'
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20260828070128Z')
,p_updated_on=>wwv_flow_imp.dz('20260828070128Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/tolu_is_hr
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(32395475308312409544)
,p_name=>'TOLU_IS_HR'
,p_static_id=>'tolu-is-hr'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'Declare',
    '    v_count number;',
    'Begin',
    '    Select count(*) into v_count',
    '    from TOLU_users',
    '    where upper(username) = upper(:APP_USER)',
    '    and upper(role) = ''HR''',
    '    and upper(account_status) = ''ACTIVE'';',
    '',
    '    Return v_count > 0;',
    'End;')))).to_clob
,p_version_scn=>'SH256:BeE8FGpk7hM8S5kBEbpF0gwCTTvj07zOVmIjlbZs5fs'
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20260828070025Z')
,p_updated_on=>wwv_flow_imp.dz('20260828070025Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(31310448883974049829)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(31310448883974049829)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(31310449529713049831)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(31310449122894049830)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tolu_employees_department_department_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(31320305704110711529)
,p_lov_name=>'TOLU_EMPLOYEES_DEPARTMENT.DEPARTMENT_NAME'
,p_static_id=>'tolu-employees-department-department-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TOLU_EMPLOYEES_DEPARTMENT'
,p_return_column_name=>'DEPARTMENT_ID'
,p_display_column_name=>'DEPARTMENT_NAME'
,p_default_sort_column_name=>'DEPARTMENT_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:Vh_OjaAm-7lx7_A0AUATUMRmlH2r9unUakR1Y5Lj-oU'
,p_created_on=>wwv_flow_imp.dz('20260823221725Z')
,p_updated_on=>wwv_flow_imp.dz('20260823221725Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tolu_employees_first_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(31528226439073109258)
,p_lov_name=>'TOLU_EMPLOYEES.FIRST_NAME'
,p_static_id=>'tolu-employees-first-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TOLU_EMPLOYEES'
,p_return_column_name=>'EMPLOYEE_ID'
,p_display_column_name=>'FIRST_NAME'
,p_default_sort_column_name=>'FIRST_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:qT-ncOS-SajBO3M3M45l3yIKXGgKK8M076Y_rY7E4W0'
,p_created_on=>wwv_flow_imp.dz('20260824140847Z')
,p_updated_on=>wwv_flow_imp.dz('20260824140847Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tolu_leave_type_leave_type_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(31528226662235109259)
,p_lov_name=>'TOLU_LEAVE_TYPE.LEAVE_TYPE_NAME'
,p_static_id=>'tolu-leave-type-leave-type-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TOLU_LEAVE_TYPE'
,p_return_column_name=>'LEAVE_TYPE_ID'
,p_display_column_name=>'LEAVE_TYPE_NAME'
,p_default_sort_column_name=>'LEAVE_TYPE_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:qLd4DY2L36xXQRP5oaI_n9kVy-3vH1rZHW9WXwk0SuQ'
,p_created_on=>wwv_flow_imp.dz('20260824140847Z')
,p_updated_on=>wwv_flow_imp.dz('20260824140847Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tolu_payroll_runs_payroll_month
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(32317262013306904943)
,p_lov_name=>'TOLU_PAYROLL_RUNS.PAYROLL_MONTH'
,p_static_id=>'tolu-payroll-runs-payroll-month'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TOLU_PAYROLL_RUNS'
,p_return_column_name=>'PAYROLL_ID'
,p_display_column_name=>'PAYROLL_MONTH'
,p_default_sort_column_name=>'PAYROLL_MONTH'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:jHQ1VY869DHISZnAMJjyyC_l8mMErRNfbKuVxSXX8U0'
,p_created_on=>wwv_flow_imp.dz('20260827192124Z')
,p_updated_on=>wwv_flow_imp.dz('20260827192124Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tolu_positions_position_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(32405385723696717124)
,p_lov_name=>'TOLU_POSITIONS.POSITION_NAME'
,p_static_id=>'tolu-positions-position-name'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select position_name d, position_id r',
'from tolu_employees_position',
'order by position_name;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>'SH256:oXqS5ELATc1l-cv0lxsjS_gAOD21A_ZCM9FamuI0K4o'
,p_created_on=>wwv_flow_imp.dz('20260828084326Z')
,p_updated_on=>wwv_flow_imp.dz('20260828084326Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(31310416850646049372)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(31310411607187049356)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260828092150Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31530577965199523937)
,p_short_name=>'Approve leave request'
,p_static_id=>'approve-leave-request'
,p_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11
,p_created_on=>wwv_flow_imp.dz('20260824142609Z')
,p_updated_on=>wwv_flow_imp.dz('20260824142609Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(32398332518563300212)
,p_short_name=>'Change password'
,p_static_id=>'change-password'
,p_link=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>19
,p_created_on=>wwv_flow_imp.dz('20260828073357Z')
,p_updated_on=>wwv_flow_imp.dz('20260828073357Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(32297793362780100302)
,p_short_name=>'Clock-out'
,p_static_id=>'clock-out'
,p_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>15
,p_created_on=>wwv_flow_imp.dz('20260827170718Z')
,p_updated_on=>wwv_flow_imp.dz('20260827170718Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31322948436635440535)
,p_short_name=>'Create department'
,p_static_id=>'create-department'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
,p_created_on=>wwv_flow_imp.dz('20260823222400Z')
,p_updated_on=>wwv_flow_imp.dz('20260823222400Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(32257516177327802254)
,p_short_name=>'Daily attendance summary report'
,p_static_id=>'daily-attendance-summary-report'
,p_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13
,p_created_on=>wwv_flow_imp.dz('20260827123913Z')
,p_updated_on=>wwv_flow_imp.dz('20260827123913Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(32409385557230258024)
,p_short_name=>'Dashboard'
,p_static_id=>'dashboard'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
,p_created_on=>wwv_flow_imp.dz('20260828092150Z')
,p_updated_on=>wwv_flow_imp.dz('20260828092150Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31322443144204391648)
,p_short_name=>'Department'
,p_static_id=>'department'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20260823221551Z')
,p_updated_on=>wwv_flow_imp.dz('20260823221551Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31310438976509049816)
,p_short_name=>'Employee form'
,p_static_id=>'employee-form'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31310437103197049812)
,p_short_name=>'Employee List'
,p_static_id=>'employee-list'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31310411868121049356)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31520860165693850851)
,p_short_name=>'Leave form'
,p_static_id=>'leave-form'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20260824132543Z')
,p_updated_on=>wwv_flow_imp.dz('20260824132543Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(32058808249068360784)
,p_short_name=>'Leave requests'
,p_static_id=>'leave-requests'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20260826184538Z')
,p_updated_on=>wwv_flow_imp.dz('20260826184538Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(32317261156899904573)
,p_short_name=>'Payslips Report'
,p_static_id=>'payslips-report'
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
,p_created_on=>wwv_flow_imp.dz('20260827192120Z')
,p_updated_on=>wwv_flow_imp.dz('20260827192120Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31320305223031711125)
,p_short_name=>'Position'
,p_static_id=>'position'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20260823221721Z')
,p_updated_on=>wwv_flow_imp.dz('20260823221721Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31533908079898677370)
,p_short_name=>'Reject leave request'
,p_static_id=>'reject-leave-request'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
,p_created_on=>wwv_flow_imp.dz('20260824145144Z')
,p_updated_on=>wwv_flow_imp.dz('20260824145144Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(32320200855154309761)
,p_short_name=>'Run Payroll'
,p_static_id=>'run-payroll'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
,p_created_on=>wwv_flow_imp.dz('20260827193708Z')
,p_updated_on=>wwv_flow_imp.dz('20260827193708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(31310412511678049358)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>2243014446517417
,p_default_page_template=>4073832297226169690
,p_default_dialog_template=>2101883943284197310
,p_error_template=>2102634289808461002
,p_printer_friendly_template=>4073832297226169690
,p_login_template=>2102634289808461002
,p_default_button_template=>4073839297780169708
,p_default_region_template=>4073835273271169698
,p_default_chart_template=>4073835273271169698
,p_default_form_template=>4073835273271169698
,p_default_reportr_template=>4073835273271169698
,p_default_wizard_template=>4073835273271169698
,p_default_menur_template=>2532939663579242476
,p_default_listr_template=>4073835273271169698
,p_default_irr_template=>2102002977963900996
,p_default_report_template=>2540130677583398057
,p_default_label_template=>1610598304472262251
,p_default_menu_template=>4073839682315169711
,p_default_list_template=>4073837480889169704
,p_default_top_nav_list_temp=>2528231041045349458
,p_default_side_nav_list_temp=>2469215554099805162
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2127905476394690047
,p_default_dialogr_template=>4502917002193490937
,p_default_option_label=>1610598304472262251
,p_default_required_label=>1610598484065263269
,p_default_navbar_list_template=>2849019392706229583
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4073840274158169736,2000,'universal-theme',8842.261)
,p_version_scn=>'SH256:RQZ7_KKNFF7leXIrwskeQw4WaazlZwly2sNGWk8hwQo'
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(31310410969137049355)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(31310411222412049355)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authentications/tolu_custom_authenthication
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(32382465198852010689)
,p_name=>'TOLU_custom_authenthication'
,p_static_id=>'tolu-custom-authenthication'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'authentication_function', 'TOLU_authenticate_user',
  'enable_legacy_attributes', 'N')).to_clob
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:2G8ikdGjrP-7gvFKcWPeHgDlTpuuwd4e7u0aYDA2gZg'
,p_created_on=>wwv_flow_imp.dz('20260828055357Z')
,p_updated_on=>wwv_flow_imp.dz('20260828065209Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Mini-HCM Suite'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31310425663760049386)
,p_plug_name=>'Mini-HCM Suite'
,p_static_id=>'mini-hcm-suite'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31310448434767049828)
,p_plug_name=>'Page Navigation'
,p_static_id=>'page-navigation'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(31310446924031049826)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2888245825625742894
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Employee List'
,p_alias=>'EMPLOYEE-LIST'
,p_step_title=>'Employee List'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260828084352Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31310436508330049812)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31310411607187049356)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31310428863470049675)
,p_plug_name=>'Tolu Employees'
,p_static_id=>'employee-list'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPLOYEE_ID,',
'       FIRST_NAME,',
'       LAST_NAME,',
'       DOB,',
'       GENDER,',
'       PHONE,',
'       EMAIL,',
'       DEPARTMENT_ID,',
'       POSITION_ID,',
'       HIRE_DATE,',
'       STATUS',
'  from TOLU_EMPLOYEES',
'  Where Employee_id = (',
'    Select employee_id from TOLU_USERS',
'    Where upper(username) = upper(:APP_USER)',
'    And Account_status = ''Active''',
'  );'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260828084352Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(31310428987577049675)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:P3_EMPLOYEE_ID:#EMPLOYEE_ID#'
,p_internal_uid=>31310428987577049675
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260828084352Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31310434194577049802)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Department ID'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(31320305704110711529)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260828083310Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31310432501187049797)
,p_db_column_name=>'DOB'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Dob'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31310433734546049801)
,p_db_column_name=>'EMAIL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31310431327070049792)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Employee ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31310431750488049794)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31310432914675049798)
,p_db_column_name=>'GENDER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31310434904103049805)
,p_db_column_name=>'HIRE_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Hire Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31310432118696049796)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31310433351343049800)
,p_db_column_name=>'PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Phone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31310434550090049804)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Position ID'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(32405385723696717124)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260828084352Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31310435305410049806)
,p_db_column_name=>'STATUS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(31310439684737049817)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLOYEE_ID:FIRST_NAME:LAST_NAME:DOB:GENDER:PHONE:EMAIL:DEPARTMENT_ID:POSITION_ID:HIRE_DATE:STATUS:'
,p_sort_column_1=>'EMPLOYEE_ID'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31312637096455243140)
,p_button_sequence=>20
,p_button_name=>'New_employee_form'
,p_static_id=>'new-employee-form_1'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'New Employee Form'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260823230012Z')
,p_updated_on=>wwv_flow_imp.dz('20260823230012Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31310435895171049807)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31310428863470049675)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Employee form'
,p_alias=>'EMPLOYEE-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Employee form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(32395475308312409544)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260828192107Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31310438319164049815)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31310411607187049356)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260823202708Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23422920413620016437)
,p_plug_name=>'Employee form'
,p_static_id=>'employee-form'
,p_title=>'Employee_form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'TOLU_EMPLOYEES'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260823204316Z')
,p_updated_on=>wwv_flow_imp.dz('20260823211827Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31526136468392341427)
,p_button_sequence=>30
,p_button_name=>'Save'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Submit'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260825130938Z')
,p_updated_on=>wwv_flow_imp.dz('20260825130938Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(31312634792371243117)
,p_branch_name=>'Redirect to report'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(31526136468392341427)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260823211827Z')
,p_updated_on=>wwv_flow_imp.dz('20260825130939Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23422921161495016444)
,p_name=>'P3_DEPARTMENT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_item_source_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_prompt=>'Department'
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select department_name AS d, department_id AS r',
'From TOLU_employees_department',
'ORDER BY department_name;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823204316Z')
,p_updated_on=>wwv_flow_imp.dz('20260825132512Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23422920769479016440)
,p_name=>'P3_DOB'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_item_source_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_prompt=>'DOB'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'DOB'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823204316Z')
,p_updated_on=>wwv_flow_imp.dz('20260825132512Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23422921069735016443)
,p_name=>'P3_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_item_source_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823204316Z')
,p_updated_on=>wwv_flow_imp.dz('20260825132512Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31312633539376243105)
,p_name=>'P3_EMPLOYEE_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_item_source_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_source=>'EMPLOYEE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823211826Z')
,p_updated_on=>wwv_flow_imp.dz('20260823211826Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23422920515149016438)
,p_name=>'P3_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_item_source_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823204316Z')
,p_updated_on=>wwv_flow_imp.dz('20260825132512Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23422920800658016441)
,p_name=>'P3_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_item_source_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_prompt=>'Gender'
,p_source=>'GENDER'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Male;M,Female;F'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823204316Z')
,p_updated_on=>wwv_flow_imp.dz('20260825132512Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23422921335000016446)
,p_name=>'P3_HIRE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_item_source_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_prompt=>'Hire date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'HIRE_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823204316Z')
,p_updated_on=>wwv_flow_imp.dz('20260825132512Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23422920615925016439)
,p_name=>'P3_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_item_source_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_prompt=>'Last name'
,p_source=>'LAST_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823204316Z')
,p_updated_on=>wwv_flow_imp.dz('20260825132512Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23422920915361016442)
,p_name=>'P3_PHONE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_item_source_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_prompt=>'Phone no'
,p_source=>'PHONE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823204316Z')
,p_updated_on=>wwv_flow_imp.dz('20260825132512Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23422921239343016445)
,p_name=>'P3_POSITION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_item_source_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_prompt=>'Position'
,p_source=>'POSITION_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select position_name AS d, position_id AS r',
'From TOLU_employees_position',
'ORDER BY position_name;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823204316Z')
,p_updated_on=>wwv_flow_imp.dz('20260825132512Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23422921496275016447)
,p_name=>'P3_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_item_source_plug_id=>wwv_flow_imp.id(23422920413620016437)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Active;Active,Inactive;Inactive'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823204316Z')
,p_updated_on=>wwv_flow_imp.dz('20260825132512Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(23422921572493016448)
,p_validation_name=>'DOB'
,p_static_id=>'dob'
,p_validation_sequence=>10
,p_validation=>'TO_DATE(:P3_DOB, ''DD-MON-YYYY'') <= ADD_MONTHS(TRUNC(SYSDATE), -18 * 12)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Date of birth cannot be in the future'
,p_when_button_pressed=>wwv_flow_imp.id(31526136468392341427)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260823205653Z')
,p_updated_on=>wwv_flow_imp.dz('20260825132214Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(32292291786911908534)
,p_validation_name=>'Email'
,p_static_id=>'email'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NOT REGEXP_LIKE(:P5_EMAIL, ''^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'') THEN',
'    RETURN ''Please enter a valid email address.'';',
'END IF;',
'',
'RETURN NULL;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>'Invalid email'
,p_when_button_pressed=>wwv_flow_imp.id(31526136468392341427)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260828192107Z')
,p_updated_on=>wwv_flow_imp.dz('20260828192107Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(23422921669816016449)
,p_validation_name=>'Hire date'
,p_static_id=>'hire-date'
,p_validation_sequence=>20
,p_validation=>'TO_DATE(:P3_HIRE_DATE, ''DD-MON-YYYY'') <= TRUNC(SYSDATE)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Hire date cannot be in the future'
,p_when_button_pressed=>wwv_flow_imp.id(31526136468392341427)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260823205653Z')
,p_updated_on=>wwv_flow_imp.dz('20260825132214Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31312634670725243116)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear cache form'
,p_static_id=>'clear-cache-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31312634670725243116
,p_created_on=>wwv_flow_imp.dz('20260823211827Z')
,p_updated_on=>wwv_flow_imp.dz('20260825130939Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31312633459581243104)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(23422920413620016437)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Employee form'
,p_static_id=>'initialize-form-employee-form'
,p_internal_uid=>31312633459581243104
,p_created_on=>wwv_flow_imp.dz('20260823211827Z')
,p_updated_on=>wwv_flow_imp.dz('20260823211827Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31312633255728243102)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(23422920413620016437)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Submit employee form'
,p_static_id=>'submit-employee-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31526136468392341427)
,p_process_success_message=>'Employee saved successfully.'
,p_internal_uid=>31312633255728243102
,p_created_on=>wwv_flow_imp.dz('20260823211827Z')
,p_updated_on=>wwv_flow_imp.dz('20260825130939Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Department'
,p_alias=>'DEPARTMENT'
,p_step_title=>'Department'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(32395475308312409544)
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260823221551Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260828071111Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31322441679748391638)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31310411607187049356)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260823221551Z')
,p_updated_on=>wwv_flow_imp.dz('20260823221551Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31322447003464391794)
,p_plug_name=>'Department'
,p_static_id=>'department'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'TOLU_EMPLOYEES_DEPARTMENT'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260823221554Z')
,p_updated_on=>wwv_flow_imp.dz('20260827121019Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31526137070632341433)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260827121019Z')
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31526137150972341434)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260827121019Z')
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31526136885516341431)
,p_name=>'DEPARTMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPARTMENT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260827121019Z')
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31526136979482341432)
,p_name=>'DEPARTMENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPARTMENT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Department Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260827121019Z')
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(31526136718790341430)
,p_internal_uid=>31526136718790341430
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20260827121019Z')
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(32251959309571628892)
,p_interactive_grid_id=>wwv_flow_imp.id(31526136718790341430)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260827121019Z')
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(32251959692049628892)
,p_report_id=>wwv_flow_imp.id(32251959309571628892)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32251962178379628896)
,p_view_id=>wwv_flow_imp.id(32251959692049628892)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(31526136885516341431)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32251963114186628900)
,p_view_id=>wwv_flow_imp.id(32251959692049628892)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(31526136979482341432)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32251964086750628903)
,p_view_id=>wwv_flow_imp.id(32251959692049628892)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(31526137070632341433)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31312636903642243139)
,p_button_sequence=>20
,p_button_name=>'Create_department'
,p_static_id=>'create-department_1'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Create Department'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260823225844Z')
,p_updated_on=>wwv_flow_imp.dz('20260823225844Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31526137207491341435)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(31322447003464391794)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Department - Save Interactive Grid Data'
,p_static_id=>'department-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31526137207491341435
,p_created_on=>wwv_flow_imp.dz('20260827121019Z')
,p_updated_on=>wwv_flow_imp.dz('20260827121019Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Create department'
,p_alias=>'CREATE-DEPARTMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Create department'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(32395475308312409544)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260823222400Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260828071138Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31322947887783440525)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31310411607187049356)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260823222400Z')
,p_updated_on=>wwv_flow_imp.dz('20260823222400Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31312634959123243119)
,p_plug_name=>'New department form'
,p_static_id=>'create-department-form'
,p_title=>'New department form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'TOLU_EMPLOYEES_DEPARTMENT'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260823223002Z')
,p_updated_on=>wwv_flow_imp.dz('20260823231635Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31526135920159341422)
,p_button_sequence=>20
,p_button_name=>'Save'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Submit'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260825124906Z')
,p_updated_on=>wwv_flow_imp.dz('20260825124906Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31312635101433243121)
,p_name=>'P5_DEPARTMENT_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31312634959123243119)
,p_item_source_plug_id=>wwv_flow_imp.id(31312634959123243119)
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823223002Z')
,p_updated_on=>wwv_flow_imp.dz('20260823225418Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31312635368429243123)
,p_name=>'P5_DEPARTMENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31312634959123243119)
,p_item_source_plug_id=>wwv_flow_imp.id(31312634959123243119)
,p_prompt=>'Department Name'
,p_source=>'DEPARTMENT_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'Y',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823223002Z')
,p_updated_on=>wwv_flow_imp.dz('20260825124300Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31526136103826341424)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear cache form'
,p_static_id=>'clear-cache-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31526136103826341424
,p_created_on=>wwv_flow_imp.dz('20260825124906Z')
,p_updated_on=>wwv_flow_imp.dz('20260825124906Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31526136281359341425)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close dialog'
,p_static_id=>'close-dialog'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31526136281359341425
,p_created_on=>wwv_flow_imp.dz('20260825124906Z')
,p_updated_on=>wwv_flow_imp.dz('20260825124906Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31312635097480243120)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(31312634959123243119)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Create department'
,p_static_id=>'initialize-form-create-department'
,p_internal_uid=>31312635097480243120
,p_created_on=>wwv_flow_imp.dz('20260823223002Z')
,p_updated_on=>wwv_flow_imp.dz('20260823223002Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31526136083087341423)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(31312634959123243119)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process department form'
,p_static_id=>'process-department-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'table_name', 'TOLU_EMPLOYEES_DEPARTMENT',
  'target_type', 'TABLE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31526135920159341422)
,p_process_success_message=>'Department added.'
,p_internal_uid=>31526136083087341423
,p_created_on=>wwv_flow_imp.dz('20260825124906Z')
,p_updated_on=>wwv_flow_imp.dz('20260825124906Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Position'
,p_alias=>'POSITION'
,p_step_title=>'Position'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(32395475308312409544)
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260823221721Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260828071202Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31320304623437711123)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31310411607187049356)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260823221721Z')
,p_updated_on=>wwv_flow_imp.dz('20260823221721Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31320305595992711421)
,p_plug_name=>'Position'
,p_static_id=>'position'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'TOLU_EMPLOYEES_POSITION'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260823221725Z')
,p_updated_on=>wwv_flow_imp.dz('20260827122232Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31526137755268341440)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260827121639Z')
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31526137833404341441)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260827121639Z')
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31526137672350341439)
,p_name=>'DEPARTMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPARTMENT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Department Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select department_name d, department_id r ',
'from TOLU_employees_department',
'Order by department_name;'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260827122232Z')
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31526137409808341437)
,p_name=>'POSITION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260827121639Z')
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31526137547624341438)
,p_name=>'POSITION_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Position Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260827121639Z')
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(31526137370945341436)
,p_internal_uid=>31526137370945341436
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20260827121639Z')
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(32252929170519666936)
,p_interactive_grid_id=>wwv_flow_imp.id(31526137370945341436)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260827121639Z')
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(32252929207826666936)
,p_report_id=>wwv_flow_imp.id(32252929170519666936)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32252929745508666938)
,p_view_id=>wwv_flow_imp.id(32252929207826666936)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(31526137409808341437)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32252930610572666940)
,p_view_id=>wwv_flow_imp.id(32252929207826666936)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(31526137547624341438)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32252931561429666941)
,p_view_id=>wwv_flow_imp.id(32252929207826666936)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(31526137672350341439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32252932483135666943)
,p_view_id=>wwv_flow_imp.id(32252929207826666936)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(31526137755268341440)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31312637118464243141)
,p_button_sequence=>20
,p_button_name=>'Add_new_position'
,p_static_id=>'add-new-position_1'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Add New Position'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260823230125Z')
,p_updated_on=>wwv_flow_imp.dz('20260823230125Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31526137935637341442)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(31320305595992711421)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Position - Save Interactive Grid Data'
,p_static_id=>'position-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31526137935637341442
,p_created_on=>wwv_flow_imp.dz('20260827121639Z')
,p_updated_on=>wwv_flow_imp.dz('20260827121639Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Add new position'
,p_alias=>'ADD-NEW-POSITION'
,p_page_mode=>'MODAL'
,p_step_title=>'Add new position'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(32395475308312409544)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260823223228Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260828071231Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31312635832377243128)
,p_plug_name=>'New position form'
,p_static_id=>'new-position-form'
,p_title=>'New position form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'TOLU_EMPLOYEES_POSITION'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260823224124Z')
,p_updated_on=>wwv_flow_imp.dz('20260823224124Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31526136378300341426)
,p_button_sequence=>20
,p_button_name=>'Save'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Submit'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260825130536Z')
,p_updated_on=>wwv_flow_imp.dz('20260825130536Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(31312636895413243138)
,p_branch_name=>'Redirect to report'
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(31526136378300341426)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260823224124Z')
,p_updated_on=>wwv_flow_imp.dz('20260825130536Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31312636375517243133)
,p_name=>'P7_DEPARTMENT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31312635832377243128)
,p_item_source_plug_id=>wwv_flow_imp.id(31312635832377243128)
,p_prompt=>'Department Id'
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select department_name AS d, department_id AS r ',
'From TOLU_employees_department',
'ORDER BY department_name;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823224124Z')
,p_updated_on=>wwv_flow_imp.dz('20260825130207Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31312636060750243130)
,p_name=>'P7_POSITION_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31312635832377243128)
,p_item_source_plug_id=>wwv_flow_imp.id(31312635832377243128)
,p_source=>'POSITION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823224124Z')
,p_updated_on=>wwv_flow_imp.dz('20260823224124Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31312636147258243131)
,p_name=>'P7_POSITION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31312635832377243128)
,p_item_source_plug_id=>wwv_flow_imp.id(31312635832377243128)
,p_prompt=>'Position Name'
,p_source=>'POSITION_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823224124Z')
,p_updated_on=>wwv_flow_imp.dz('20260823224124Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31312636723952243137)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear cache form'
,p_static_id=>'clear-cache-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31312636723952243137
,p_created_on=>wwv_flow_imp.dz('20260823224124Z')
,p_updated_on=>wwv_flow_imp.dz('20260825130002Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31312636637812243136)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(31312635832377243128)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Enter new position'
,p_static_id=>'enter-new-position'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'table_name', 'TOLU_EMPLOYEES_POSITION',
  'target_type', 'TABLE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31526136378300341426)
,p_internal_uid=>31312636637812243136
,p_created_on=>wwv_flow_imp.dz('20260823224124Z')
,p_updated_on=>wwv_flow_imp.dz('20260825130536Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31312635952778243129)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(31312635832377243128)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Add new position'
,p_static_id=>'initialize-form-add-new-position'
,p_internal_uid=>31312635952778243129
,p_created_on=>wwv_flow_imp.dz('20260823224124Z')
,p_updated_on=>wwv_flow_imp.dz('20260823224124Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Leave requests'
,p_alias=>'LEAVE-REQUESTS'
,p_step_title=>'Leave requests'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260826184538Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260828082223Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32058807663435360783)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31310411607187049356)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260826184538Z')
,p_updated_on=>wwv_flow_imp.dz('20260826184538Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32058813446937360910)
,p_plug_name=>'Leave requests'
,p_static_id=>'leave-requests'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LEAVE_REQUEST_ID,',
'       EMPLOYEE_ID,',
'       LEAVE_TYPE_ID,',
'       START_DATE,',
'       END_DATE,',
'       DAYS_REQUESTED,',
'       STATUS,',
'       REASON,',
'       DESCISION_DATE',
'  from TOLU_LEAVE_REQUESTS',
'  Where Employee_id = (',
'    Select employee_id from TOLU_USERS',
'    Where upper(username) = upper(:APP_USER)',
'    And Account_status = ''Active''',
'  );',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260826184540Z')
,p_updated_on=>wwv_flow_imp.dz('20260828082223Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(32058813564886360910)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>32058813564886360910
,p_created_on=>wwv_flow_imp.dz('20260826184540Z')
,p_updated_on=>wwv_flow_imp.dz('20260826184559Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32058816707631361023)
,p_db_column_name=>'DAYS_REQUESTED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Days Requested'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260826184540Z')
,p_updated_on=>wwv_flow_imp.dz('20260826184540Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32058817951772361026)
,p_db_column_name=>'DESCISION_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Descision Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260826184540Z')
,p_updated_on=>wwv_flow_imp.dz('20260826184540Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32058815139446361018)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(31528226439073109258)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260826184540Z')
,p_updated_on=>wwv_flow_imp.dz('20260826184540Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32058816354910361022)
,p_db_column_name=>'END_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260826184540Z')
,p_updated_on=>wwv_flow_imp.dz('20260826184540Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32058814736004361016)
,p_db_column_name=>'LEAVE_REQUEST_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Leave Request ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260826184540Z')
,p_updated_on=>wwv_flow_imp.dz('20260826184540Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32058815530275361019)
,p_db_column_name=>'LEAVE_TYPE_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(31528226662235109259)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260826184540Z')
,p_updated_on=>wwv_flow_imp.dz('20260826184540Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32058817531865361025)
,p_db_column_name=>'REASON'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Reason'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260826184540Z')
,p_updated_on=>wwv_flow_imp.dz('20260826184540Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32058815917109361020)
,p_db_column_name=>'START_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260826184540Z')
,p_updated_on=>wwv_flow_imp.dz('20260826184540Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32058817103032361024)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260826184540Z')
,p_updated_on=>wwv_flow_imp.dz('20260826184540Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(32058824733793362931)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LEAVE_REQUEST_ID:EMPLOYEE_ID:LEAVE_TYPE_ID:START_DATE:END_DATE:DAYS_REQUESTED:STATUS:REASON:DESCISION_DATE'
,p_created_on=>wwv_flow_imp.dz('20260826184559Z')
,p_updated_on=>wwv_flow_imp.dz('20260826184559Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Leave form'
,p_alias=>'LEAVE-FORM'
,p_step_title=>'Leave form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260824132543Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260825135312Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31312637264713243142)
,p_plug_name=>'Apply leave form'
,p_static_id=>'apply-leave-form'
,p_title=>'Apply leave'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260824140632Z')
,p_updated_on=>wwv_flow_imp.dz('20260824140632Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31520859514009850850)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31310411607187049356)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260824132543Z')
,p_updated_on=>wwv_flow_imp.dz('20260824132543Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31526136581813341428)
,p_button_sequence=>30
,p_button_name=>'Save'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Submit'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260825134547Z')
,p_updated_on=>wwv_flow_imp.dz('20260825134547Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(31526134274683341405)
,p_branch_name=>'Redirect to report'
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(31526136581813341428)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260824141040Z')
,p_updated_on=>wwv_flow_imp.dz('20260825134547Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31312637304825243143)
,p_name=>'P10_EMPLOYEE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31312637264713243142)
,p_prompt=>'Employee name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select First_name || '' '' || Last_name d, Employee_id r',
'From TOLU_employees',
'ORDER BY First_name, Last_name;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260824140632Z')
,p_updated_on=>wwv_flow_imp.dz('20260825135312Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31312637657534243146)
,p_name=>'P10_END_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31312637264713243142)
,p_prompt=>'End date'
,p_format_mask=>'DD-MON-YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260824140632Z')
,p_updated_on=>wwv_flow_imp.dz('20260825134547Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31312637415064243144)
,p_name=>'P10_LEAVE_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31312637264713243142)
,p_prompt=>'Leave type'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select leave_type_name d, leave_type_id r',
'From TOLU_leave_type',
'ORDER BY leave_type_name;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260824140632Z')
,p_updated_on=>wwv_flow_imp.dz('20260824140632Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31312637938220243149)
,p_name=>'P10_REASON'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(31312637264713243142)
,p_prompt=>'Reason'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260824140632Z')
,p_updated_on=>wwv_flow_imp.dz('20260824140632Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31312637592604243145)
,p_name=>'P10_START_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31312637264713243142)
,p_prompt=>'Start date'
,p_format_mask=>'DD-MON-YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260824140632Z')
,p_updated_on=>wwv_flow_imp.dz('20260825134547Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31526133989625341402)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear cache form'
,p_static_id=>'clear-cache-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31526133989625341402
,p_created_on=>wwv_flow_imp.dz('20260824140632Z')
,p_updated_on=>wwv_flow_imp.dz('20260825134547Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31526133755928341401)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process leave form'
,p_static_id=>'process-leave-form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'    TOLU_leave_pkg.apply_leave(',
'        p_employee_id => :P10_EMPLOYEE_ID,',
'        p_leave_type_id => :P10_LEAVE_TYPE,',
'        p_start_date => TO_DATE(:P10_START_DATE, ''DD-MON-YYYY''),',
'        p_end_date => TO_DATE(:P10_END_DATE, ''DD-MON-YYYY''),',
'        p_reason => :P10_REASON',
'    );',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31526136581813341428)
,p_process_success_message=>'Leave applied successfully.'
,p_internal_uid=>31526133755928341401
,p_created_on=>wwv_flow_imp.dz('20260824140632Z')
,p_updated_on=>wwv_flow_imp.dz('20260825135107Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Approve leave request'
,p_alias=>'APPROVE-LEAVE-REQUEST'
,p_step_title=>'Approve leave request'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(32395475308312409544)
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260824142609Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260828071321Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31526134456083341407)
,p_plug_name=>'Approve leave '
,p_static_id=>'approve-leave'
,p_title=>'Approve leave'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260824144725Z')
,p_updated_on=>wwv_flow_imp.dz('20260824144725Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31530577345128523936)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31310411607187049356)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260824142609Z')
,p_updated_on=>wwv_flow_imp.dz('20260824142609Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31526134687904341409)
,p_button_sequence=>30
,p_button_name=>'Approve'
,p_static_id=>'approve'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Approve'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260824144725Z')
,p_updated_on=>wwv_flow_imp.dz('20260824144725Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(31526134977431341412)
,p_branch_name=>'Redirect to report'
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(31526134687904341409)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260824144725Z')
,p_updated_on=>wwv_flow_imp.dz('20260824144725Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31526134550378341408)
,p_name=>'P11_LEAVE_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31526134456083341407)
,p_prompt=>'Leave Request ID'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select c.first_name || '''' || c.last_name d, leave_request_id as r',
'From TOLU_leave_requests l',
'join TOLU_employees c ON l.employee_id = c.employee_id',
'where l.status = ''Pending''',
'ORDER BY c.First_name, c.Last_name;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260824144725Z')
,p_updated_on=>wwv_flow_imp.dz('20260826145028Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31526134878967341411)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear cache form'
,p_static_id=>'clear-cache-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31526134687904341409)
,p_internal_uid=>31526134878967341411
,p_created_on=>wwv_flow_imp.dz('20260824144725Z')
,p_updated_on=>wwv_flow_imp.dz('20260824144725Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31526134752967341410)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process approve leave'
,p_static_id=>'process-approve-leave'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'    TOLU_leave_pkg.approve_leave(',
'        p_leave_request_id => :P11_LEAVE_REQUEST_ID',
'    );',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31526134687904341409)
,p_process_success_message=>'Leave approved.'
,p_internal_uid=>31526134752967341410
,p_created_on=>wwv_flow_imp.dz('20260824144725Z')
,p_updated_on=>wwv_flow_imp.dz('20260824144725Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Reject leave request'
,p_alias=>'REJECT-LEAVE-REQUEST'
,p_step_title=>'Reject leave request'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(32395475308312409544)
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260824145144Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260828071353Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31533907469881677369)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31310411607187049356)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260824145144Z')
,p_updated_on=>wwv_flow_imp.dz('20260824145144Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31526135262128341415)
,p_plug_name=>'Reject leave'
,p_static_id=>'reject-leave'
,p_title=>'Reject leave'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260824150041Z')
,p_updated_on=>wwv_flow_imp.dz('20260824150041Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31526135596805341418)
,p_button_sequence=>30
,p_button_name=>'Reject'
,p_static_id=>'reject'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Reject'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260824150041Z')
,p_updated_on=>wwv_flow_imp.dz('20260824150041Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(31526135728213341420)
,p_branch_name=>'Redirect to report'
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(31526135596805341418)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260824150041Z')
,p_updated_on=>wwv_flow_imp.dz('20260824150041Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31526135346275341416)
,p_name=>'P12_LEAVE_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31526135262128341415)
,p_prompt=>'Leave Request ID'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select c.first_name || '''' || c.last_name d, leave_request_id as r',
'From TOLU_leave_requests l',
'join TOLU_employees c ON l.employee_id = c.employee_id',
'Where l.status = ''Pending''',
'ORDER BY c.First_name, c.Last_name;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260824150041Z')
,p_updated_on=>wwv_flow_imp.dz('20260826145114Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31526135687423341419)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear cache form'
,p_static_id=>'clear-cache-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31526135596805341418)
,p_internal_uid=>31526135687423341419
,p_created_on=>wwv_flow_imp.dz('20260824150041Z')
,p_updated_on=>wwv_flow_imp.dz('20260824150041Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31526135427092341417)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process leave rejection'
,p_static_id=>'process-leave-rejection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'    TOLU_leave_pkg.reject_leave(',
'        p_leave_request_id => :P12_LEAVE_REQUEST_ID',
'    );',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31526135596805341418)
,p_process_success_message=>'Leave rejected.'
,p_internal_uid=>31526135427092341417
,p_created_on=>wwv_flow_imp.dz('20260824150041Z')
,p_updated_on=>wwv_flow_imp.dz('20260824150041Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Daily attendance summary report'
,p_alias=>'DAILY-ATTENDANCE-SUMMARY-REPORT'
,p_step_title=>'Daily attendance summary report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260827123912Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260828082321Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32257515678296802253)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31310411607187049356)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260827123912Z')
,p_updated_on=>wwv_flow_imp.dz('20260827123912Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32257518066035802382)
,p_plug_name=>'Daily attendance summary report'
,p_static_id=>'daily-attendance-summary-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ATTENDANCE_ID,',
'       EMPLOYEE_ID,',
'       ATTENDANCE_DATE,',
'       CLOCK_IN,',
'       CLOCK_OUT,',
'       STATUS',
'  from TOLU_ATTENDANCE',
'  Where Employee_id = (',
'    Select employee_id from TOLU_USERS',
'    Where upper(username) = upper(:APP_USER)',
'    And Account_status = ''Active''',
'  );'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260827123915Z')
,p_updated_on=>wwv_flow_imp.dz('20260828082321Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(32257518150557802382)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>32257518150557802382
,p_created_on=>wwv_flow_imp.dz('20260827123915Z')
,p_updated_on=>wwv_flow_imp.dz('20260827165412Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32257521758088802483)
,p_db_column_name=>'ATTENDANCE_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Attendance Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827123915Z')
,p_updated_on=>wwv_flow_imp.dz('20260827123915Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32257520935856802479)
,p_db_column_name=>'ATTENDANCE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Attendance ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260827123915Z')
,p_updated_on=>wwv_flow_imp.dz('20260827123915Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32257522149321802484)
,p_db_column_name=>'CLOCK_IN'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Clock In'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827123915Z')
,p_updated_on=>wwv_flow_imp.dz('20260827165348Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32257522565385802486)
,p_db_column_name=>'CLOCK_OUT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Clock Out'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827123915Z')
,p_updated_on=>wwv_flow_imp.dz('20260827165412Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32257521397444802482)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(31528226439073109258)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827123915Z')
,p_updated_on=>wwv_flow_imp.dz('20260827123915Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32257522956112802487)
,p_db_column_name=>'STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827123915Z')
,p_updated_on=>wwv_flow_imp.dz('20260827123915Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(32257828357997814842)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ATTENDANCE_ID:EMPLOYEE_ID:ATTENDANCE_DATE:CLOCK_IN:CLOCK_OUT:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260827124118Z')
,p_updated_on=>wwv_flow_imp.dz('20260827124118Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31526138174365341444)
,p_button_sequence=>20
,p_button_name=>'Clock_in'
,p_static_id=>'clock-in_1'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clock In'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260827124117Z')
,p_updated_on=>wwv_flow_imp.dz('20260827164615Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32292288592771908502)
,p_button_sequence=>30
,p_button_name=>'Clock_out'
,p_static_id=>'clock-out'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clock Out'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column=>12
,p_created_on=>wwv_flow_imp.dz('20260827170146Z')
,p_updated_on=>wwv_flow_imp.dz('20260827172109Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Clock in'
,p_alias=>'CLOCK-IN'
,p_page_mode=>'MODAL'
,p_step_title=>'Clock in'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260827162110Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260827191147Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31526138229842341445)
,p_plug_name=>'Clock_in'
,p_static_id=>'clock-in'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260827162815Z')
,p_updated_on=>wwv_flow_imp.dz('20260827162815Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31526138559809341448)
,p_button_sequence=>30
,p_button_name=>'Save'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Clock-in'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260827163605Z')
,p_updated_on=>wwv_flow_imp.dz('20260827163605Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(32292288410572908501)
,p_branch_name=>'Redirect to report'
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(31526138559809341448)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260827163605Z')
,p_updated_on=>wwv_flow_imp.dz('20260827163605Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31526138376090341446)
,p_name=>'P14_EMPLOYEE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31526138229842341445)
,p_prompt=>'Employee'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Last_name || '' '' || First_name d, Employee_id r',
'From TOLU_employees',
'Order by Last_name, First_name;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260827162815Z')
,p_updated_on=>wwv_flow_imp.dz('20260827191147Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31526138744028341450)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear cache form'
,p_static_id=>'clear-cache-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31526138744028341450
,p_created_on=>wwv_flow_imp.dz('20260827163605Z')
,p_updated_on=>wwv_flow_imp.dz('20260827163605Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31526138640854341449)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process clock-in form'
,p_static_id=>'process-clock-in-form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'    TOLU_attendance_pkg.clock_in(',
'        p_employee_id => :P14_EMPLOYEE',
'    );',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31526138559809341448)
,p_process_success_message=>'Clocked-in'
,p_internal_uid=>31526138640854341449
,p_created_on=>wwv_flow_imp.dz('20260827163605Z')
,p_updated_on=>wwv_flow_imp.dz('20260827163605Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Clock-out'
,p_alias=>'CLOCK-OUT'
,p_page_mode=>'MODAL'
,p_step_title=>'Clock-out'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260827170718Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260827191620Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32297792796057100301)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31310411607187049356)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260827170718Z')
,p_updated_on=>wwv_flow_imp.dz('20260827170718Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32292288695362908503)
,p_plug_name=>'Clock_out'
,p_static_id=>'clock-out'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260827171757Z')
,p_updated_on=>wwv_flow_imp.dz('20260827171757Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32292288880820908505)
,p_button_sequence=>30
,p_button_name=>'Save'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Clock-out'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260827171757Z')
,p_updated_on=>wwv_flow_imp.dz('20260827171757Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(32292289116107908508)
,p_branch_name=>'Redirect to report'
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(32292288880820908505)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260827171757Z')
,p_updated_on=>wwv_flow_imp.dz('20260827171757Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32292288723667908504)
,p_name=>'P15_CLOCK_OUT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(32292288695362908503)
,p_prompt=>'Clock Out'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select e.Last_name || '' '' || e.First_name d, e.Employee_id r',
'from TOLU_employees e',
'JOIN TOLU_attendance c ON e.employee_id = c.employee_id',
'Where Clock_in IS NOT NULL',
'AND Clock_out IS NULL',
'ORDER BY Last_name, First_name;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260827171757Z')
,p_updated_on=>wwv_flow_imp.dz('20260827191620Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32292289022361908507)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear cache form'
,p_static_id=>'clear-cache-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>32292289022361908507
,p_created_on=>wwv_flow_imp.dz('20260827171757Z')
,p_updated_on=>wwv_flow_imp.dz('20260827171757Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32292288958585908506)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process clock-out form'
,p_static_id=>'process-clock-out-form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'    TOLU_attendance_pkg.clock_out(',
'        p_employee_id => :P15_CLOCK_OUT',
'    );',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(32292288880820908505)
,p_internal_uid=>32292288958585908506
,p_created_on=>wwv_flow_imp.dz('20260827171757Z')
,p_updated_on=>wwv_flow_imp.dz('20260827171757Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Payslips Report'
,p_alias=>'PAYSLIPS-REPORT'
,p_step_title=>'Payslips Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260827192120Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260828082431Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32317260519402904572)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31310411607187049356)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260827192120Z')
,p_updated_on=>wwv_flow_imp.dz('20260827192120Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32317261654541904845)
,p_plug_name=>'Payslips Report'
,p_static_id=>'payslips-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PAYSLIP_ID,',
'       PAYROLL_ID,',
'       EMPLOYEE_ID,',
'       PAYROLL_MONTH,',
'       PAYROLL_YEAR,',
'       BASIC,',
'       HOUSING_ALLOWANCE,',
'       TRANSPORT_ALLOWANCE,',
'       GROSS_SALARY,',
'       PENSION,',
'       NET_SALARY,',
'       GENERATED_DATE',
'  from TOLU_PAYSLIPS',
'  Where Employee_id = (',
'    Select employee_id from TOLU_USERS',
'    Where upper(username) = upper(:APP_USER)',
'    And Account_status = ''Active''',
'  );'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260827192124Z')
,p_updated_on=>wwv_flow_imp.dz('20260828082431Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(32317261754740904845)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>32317261754740904845
,p_created_on=>wwv_flow_imp.dz('20260827192124Z')
,p_updated_on=>wwv_flow_imp.dz('20260828082431Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32317265489576904955)
,p_db_column_name=>'BASIC'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Basic'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827192124Z')
,p_updated_on=>wwv_flow_imp.dz('20260828053657Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32317264242543904951)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(31528226439073109258)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827192124Z')
,p_updated_on=>wwv_flow_imp.dz('20260827192124Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32317267830088904962)
,p_db_column_name=>'GENERATED_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Generated Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827192124Z')
,p_updated_on=>wwv_flow_imp.dz('20260827192124Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32317266608437904958)
,p_db_column_name=>'GROSS_SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Gross Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827192124Z')
,p_updated_on=>wwv_flow_imp.dz('20260828053911Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32317265830617904956)
,p_db_column_name=>'HOUSING_ALLOWANCE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Housing Allowance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827192124Z')
,p_updated_on=>wwv_flow_imp.dz('20260828054009Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32317267476258904961)
,p_db_column_name=>'NET_SALARY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Net Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827192124Z')
,p_updated_on=>wwv_flow_imp.dz('20260828053911Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32292290978088908526)
,p_db_column_name=>'PAYROLL_ID'
,p_display_order=>22
,p_column_identifier=>'M'
,p_column_label=>'Payroll Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260828082431Z')
,p_updated_on=>wwv_flow_imp.dz('20260828082431Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32292291051820908527)
,p_db_column_name=>'PAYROLL_MONTH'
,p_display_order=>32
,p_column_identifier=>'N'
,p_column_label=>'Payroll Month'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260828082431Z')
,p_updated_on=>wwv_flow_imp.dz('20260828082431Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32317265054832904954)
,p_db_column_name=>'PAYROLL_YEAR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Payroll Year'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827192124Z')
,p_updated_on=>wwv_flow_imp.dz('20260827192124Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32317263433717904948)
,p_db_column_name=>'PAYSLIP_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Payslip ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260827192124Z')
,p_updated_on=>wwv_flow_imp.dz('20260827192124Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32317267074761904960)
,p_db_column_name=>'PENSION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Pension'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827192124Z')
,p_updated_on=>wwv_flow_imp.dz('20260828053911Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32317266291130904957)
,p_db_column_name=>'TRANSPORT_ALLOWANCE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Transport Allowance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827192124Z')
,p_updated_on=>wwv_flow_imp.dz('20260828053911Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(32335209095369163951)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAYSLIP_ID:EMPLOYEE_ID:PAYROLL_YEAR:BASIC:HOUSING_ALLOWANCE:TRANSPORT_ALLOWANCE:GROSS_SALARY:PENSION:NET_SALARY:GENERATED_DATE'
,p_created_on=>wwv_flow_imp.dz('20260827215929Z')
,p_updated_on=>wwv_flow_imp.dz('20260828082431Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Run Payroll'
,p_alias=>'RUN-PAYROLL'
,p_step_title=>'Run Payroll'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(32395475308312409544)
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260827193708Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260828071440Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32320200249523309759)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31310411607187049356)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260827193708Z')
,p_updated_on=>wwv_flow_imp.dz('20260827193708Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32292289222783908509)
,p_plug_name=>'Run payroll'
,p_static_id=>'run-payroll'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260827194807Z')
,p_updated_on=>wwv_flow_imp.dz('20260827194807Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32292289791160908514)
,p_button_sequence=>40
,p_button_name=>'Save'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Run Payroll'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260827215017Z')
,p_updated_on=>wwv_flow_imp.dz('20260827215017Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(32292290086731908517)
,p_branch_name=>'Redirect to report'
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(32292289791160908514)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260827215017Z')
,p_updated_on=>wwv_flow_imp.dz('20260827215017Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32292289303339908510)
,p_name=>'P18_PR_MONTH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(32292289222783908509)
,p_prompt=>'Month'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''January'' d, ''January'' r FROM dual',
'UNION ALL',
'SELECT ''February'', ''February'' FROM dual',
'UNION ALL',
'SELECT ''March'', ''March'' FROM dual',
'UNION ALL',
'SELECT ''April'', ''April'' FROM dual',
'UNION ALL',
'SELECT ''May'', ''May'' FROM dual',
'UNION ALL',
'SELECT ''June'', ''June'' FROM dual',
'UNION ALL',
'SELECT ''July'', ''July'' FROM dual',
'UNION ALL',
'SELECT ''August'', ''August'' FROM dual',
'UNION ALL',
'SELECT ''September'', ''September'' FROM dual',
'UNION ALL',
'SELECT ''October'', ''October'' FROM dual',
'UNION ALL',
'SELECT ''November'', ''November'' FROM dual',
'UNION ALL',
'SELECT ''December'', ''December'' FROM dual'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260827194807Z')
,p_updated_on=>wwv_flow_imp.dz('20260827221845Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32292289566349908512)
,p_name=>'P18_PR_YEAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(32292289222783908509)
,p_prompt=>'Year'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:2026;2026,2027;2027'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260827215017Z')
,p_updated_on=>wwv_flow_imp.dz('20260827215017Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32292289913242908516)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear cache form'
,p_static_id=>'clear-cache-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>32292289913242908516
,p_created_on=>wwv_flow_imp.dz('20260827215017Z')
,p_updated_on=>wwv_flow_imp.dz('20260827215017Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32292289807069908515)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process payroll form'
,p_static_id=>'process-payroll-form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'    TOLU_payroll_pkg.run_payroll(',
'        p_month => :P18_PR_MONTH,',
'        p_year => :P18_PR_YEAR',
'    );',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(32292289791160908514)
,p_internal_uid=>32292289807069908515
,p_created_on=>wwv_flow_imp.dz('20260827215017Z')
,p_updated_on=>wwv_flow_imp.dz('20260827215017Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>'Change password'
,p_alias=>'CHANGE-PASSWORD'
,p_step_title=>'Change password'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260828073357Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260828075942Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32398331957101300210)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31310411607187049356)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260828073357Z')
,p_updated_on=>wwv_flow_imp.dz('20260828073357Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32292290145708908518)
,p_plug_name=>'Change password'
,p_static_id=>'change-password'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260828074237Z')
,p_updated_on=>wwv_flow_imp.dz('20260828074237Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32292290532817908522)
,p_button_sequence=>50
,p_button_name=>'Change_password'
,p_static_id=>'change-password'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Change Password'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260828074237Z')
,p_updated_on=>wwv_flow_imp.dz('20260828074237Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32292290483114908521)
,p_name=>'P19_CONFIRM_PASSWORD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(32292290145708908518)
,p_prompt=>'Confirm Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260828074237Z')
,p_updated_on=>wwv_flow_imp.dz('20260828074237Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32292290374714908520)
,p_name=>'P19_NEW_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(32292290145708908518)
,p_prompt=>'New'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260828074237Z')
,p_updated_on=>wwv_flow_imp.dz('20260828074237Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32292290219623908519)
,p_name=>'P19_OLD_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(32292290145708908518)
,p_prompt=>'Old Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260828074237Z')
,p_updated_on=>wwv_flow_imp.dz('20260828074237Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(32292290688358908523)
,p_validation_name=>'Validate password'
,p_static_id=>'validate-password'
,p_validation_sequence=>10
,p_validation=>':P19_NEW_PASSWORD = :P19_CONFIRM_PASSWORD;'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'New password and confirm password does not match'
,p_associated_item=>wwv_flow_imp.id(32292290483114908521)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260828074237Z')
,p_updated_on=>wwv_flow_imp.dz('20260828074334Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32292290703875908524)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Change_password'
,p_static_id=>'change-password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'    v_password_hash TOLU_users.password_hash%type;',
'    v_emp_id TOLU_users.employee_id%type;',
'    v_hash varchar2(500);',
'Begin',
'    Select employee_id, password_hash into v_emp_id, v_password_hash',
'    From TOLU_users',
'    where upper(username) = upper(:APP_USER)',
'    and account_status = ''Active'';',
'',
'    Select RAWTOHEX (STANDARD_HASH(:P19_OLD_PASSWORD, ''SHA256''))',
'    Into v_hash',
'    from dual;',
'',
'    IF v_password_hash <> v_hash then',
'    RAISE_APPLICATION_ERROR(-20001, ''Old password is incorrect.'');',
'    END IF;',
'',
'    Update TOLU_users',
'    SET password_hash = STANDARD_HASH(:P19_NEW_PASSWORD, ''SHA256'')',
'    Where employee_id = v_emp_id;',
'',
'End;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(32292290532817908522)
,p_process_success_message=>'Password changed successfully.'
,p_internal_uid=>32292290703875908524
,p_created_on=>wwv_flow_imp.dz('20260828075643Z')
,p_updated_on=>wwv_flow_imp.dz('20260828075942Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32292290847254908525)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear cache form'
,p_static_id=>'clear-cache-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>32292290847254908525
,p_created_on=>wwv_flow_imp.dz('20260828075643Z')
,p_updated_on=>wwv_flow_imp.dz('20260828075643Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20260828092150Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260828100709Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32409384984160258023)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31310411607187049356)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260828092150Z')
,p_updated_on=>wwv_flow_imp.dz('20260828092150Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32292291567820908532)
,p_plug_name=>'Monthly payroll card'
,p_static_id=>'monthly-payroll-card'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select',
'''This months payroll cost'' AS card_title, TOLU_dashboard_pkg.Total_payroll_cost_per_month() AS card_value',
'From dual;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260828095046Z')
,p_updated_on=>wwv_flow_imp.dz('20260828100552Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(32292291667416908533)
,p_region_id=>wwv_flow_imp.id(32292291567820908532)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_badge_column_name=>'CARD_VALUE'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'CARD_TITLE'
,p_updated_on=>wwv_flow_imp.dz('20260828100552Z')
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32292291341292908530)
,p_plug_name=>'Summary PDL'
,p_static_id=>'summary'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select',
'''Pending leave requests'' AS card_title, TOLU_dashboard_pkg.pending_leave_requests() AS card_value',
'From dual;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260828094706Z')
,p_updated_on=>wwv_flow_imp.dz('20260828100709Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(32292291406320908531)
,p_region_id=>wwv_flow_imp.id(32292291341292908530)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_badge_column_name=>'CARD_VALUE'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'CARD_TITLE'
,p_updated_on=>wwv_flow_imp.dz('20260828094706Z')
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32292291149548908528)
,p_plug_name=>'Summary dashboard'
,p_static_id=>'summary-dashboard'
,p_title=>'Total active employees'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select',
'''Active Employees'' AS card_title, TOLU_dashboard_pkg.total_active_employees() AS card_value',
'From dual;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260828093025Z')
,p_updated_on=>wwv_flow_imp.dz('20260828094205Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(32292291202673908529)
,p_region_id=>wwv_flow_imp.id(32292291149548908528)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_badge_column_name=>'CARD_VALUE'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'CARD_TITLE'
,p_updated_on=>wwv_flow_imp.dz('20260828094205Z')
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Mini-HCM Suite - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_last_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31310418682954049375)
,p_plug_name=>'Mini-HCM Suite'
,p_static_id=>'mini-hcm-suite'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31310420296066049379)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(31310418682954049375)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31310419521605049378)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31310418682954049375)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31310419921040049379)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31310418682954049375)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31310419120906049378)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31310418682954049375)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31310424308333049383)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31310424308333049383
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31310423917034049383)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>31310423917034049383
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31310420655567049380)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31310420655567049380
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(31310421608689049381)
,p_page_process_id=>wwv_flow_imp.id(31310420655567049380)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(31310422118476049381)
,p_page_process_id=>wwv_flow_imp.id(31310420655567049380)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(31310421172283049381)
,p_page_process_id=>wwv_flow_imp.id(31310420655567049380)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31310422520334049382)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31310422520334049382
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(31310423579356049382)
,p_page_process_id=>wwv_flow_imp.id(31310422520334049382)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(31310423043996049382)
,p_page_process_id=>wwv_flow_imp.id(31310422520334049382)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260823202704Z')
,p_updated_on=>wwv_flow_imp.dz('20260823202704Z')
,p_created_by=>'OJOKILATOLU@GMAIL.COM'
,p_updated_by=>'OJOKILATOLU@GMAIL.COM'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done

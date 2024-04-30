*** Settings ***
Library    AppiumLibrary



*** Variables ***
${remote_url}    http://localhost:4723/wd/hub
${platformName}    Android
${platformVersion}    12.0
${deviceName}    emulator-5554
${appPackage}     com.android.settings
${appActivity}    com.android.settings.Settings
${locator_setting_search}    xpath=//androidx.cardview.widget.CardView[@resource-id="com.android.settings:id/search_bar"]
${locator_setting_edittext_search}    xpath=//android.widget.EditText[@resource-id="com.google.android.settings.intelligence:id/open_search_view_edit_text"]

# Network & internet Page
${locator_network_page}    xpath=//android.widget.TextView[@resource-id="android:id/title" and @text="Network & internet"]
${locator_airplanemode_button}    xpath=//android.widget.Switch[@resource-id="android:id/switch_widget"]
${locator_network_layout}    xpath=//android.widget.FrameLayout[@content-desc="Network & internet"]
${locator_network_text_wifi_status}    xpath=//android.widget.TextView[@resource-id="android:id/summary" and @text="Airplane mode is on"]

${locator_back_button_navigate}    	xpath=//android.widget.ImageButton[@content-desc="Navigate up"]
${locator_back_button_back}    xpath=//android.widget.ImageButton[@content-desc="Back"]
	

# Battery Page
${locator_battery_page}    xpath=//android.widget.TextView[@resource-id="android:id/title" and @text="Battery"]
${locator_battery_layout}    xpath=//android.widget.FrameLayout[@content-desc="Battery"]
${locator_battery_percentage_button}    xpath=//android.widget.Switch[@resource-id="android:id/switch_widget"]



# System Page
${locator_system_page}    xpath=//android.widget.TextView[@resource-id="android:id/title" and @text="System"]
${locator_system_layout}    xpath=//android.widget.FrameLayout[@content-desc="System"]
${locator_language&input}    xpath=//androidx.recyclerview.widget.RecyclerView[@resource-id="com.android.settings:id/recycler_view"]/android.widget.LinearLayout[1]/android.widget.RelativeLayout
${locator_language$input_layout}    xpath=//android.widget.LinearLayout[@resource-id="com.android.settings:id/app_bar"]
${locator_language}    xpath=//android.widget.TextView[@resource-id="android:id/title" and @text="Languages"]
${locator_languages_layout}    xpath=//android.widget.FrameLayout[@content-desc="Languages"]
${locator_add_language}    xpath=//android.widget.Button[@resource-id="com.android.settings:id/add_language"]
${locator_add_language_layout}    xpath=//android.widget.TextView[@text="Add a language"]
${locator_search_button_language_page}    xpath=//android.widget.TextView[@content-desc="Search"]
${locator_edit_text_language_page}    xpath=//android.widget.AutoCompleteTextView[@resource-id="android:id/search_src_text"]
${locator_thai_language_add}    xpath=//android.widget.TextView[@content-desc="Thai"]
${locator_thai_language}    xpath=//android.widget.TextView[@content-desc="Thai (Thailand)"]
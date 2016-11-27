function Controller() {
	installer.autoRejectMessageBoxes();
	installer.installationFinished.connect(function() {
		gui.clickButton(buttons.NextButton);
	})
}

Controller.prototype.WelcomePageCallback = function() {
	gui.clickButton(buttons.NextButton);
}

Controller.prototype.CredentialsPageCallback = function() {
	gui.clickButton(buttons.NextButton);
}

Controller.prototype.IntroductionPageCallback = function() {
	gui.clickButton(buttons.NextButton);
}

Controller.prototype.TargetDirectoryPageCallback = function() {
	gui.currentPageWidget().TargetDirectoryLineEdit.setText(installer.value("HomeDir") + "/qt");
	gui.clickButton(buttons.NextButton);
}

Controller.prototype.ComponentSelectionPageCallback = function() {
	var widget = gui.currentPageWidget();
	var qt = "qt.57";
	
	widget.deselectAll();
	widget.selectComponent(qt);
	widget.deselectComponent(qt + ".src");
	widget.deselectComponent(qt + ".doc");
	widget.deselectComponent(qt + ".examples");

	gui.clickButton(buttons.NextButton);
}

Controller.prototype.LicenseAgreementPageCallback = function() {
	gui.currentPageWidget().AcceptLicenseRadioButton.setChecked(true);
	gui.clickButton(buttons.NextButton);
}

Controller.prototype.StartMenuDirectoryPageCallback = function() {
	gui.clickButton(buttons.NextButton);
}

Controller.prototype.ReadyForInstallationPageCallback = function() {
	gui.clickButton(buttons.NextButton);
}

Controller.prototype.FinishedPageCallback = function() {
	var checkBoxForm = gui.currentPageWidget().LaunchQtCreatorCheckBoxForm
	if (checkBoxForm && checkBoxForm.launchQtCreatorCheckBox) {
		checkBoxForm.launchQtCreatorCheckBox.checked = false;
	}
	gui.clickButton(buttons.FinishButton);
}

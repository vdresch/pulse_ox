using Toybox.Application as App;
import Toybox.Activity;
import Toybox.Graphics;
import Toybox.Lang;
import Toybox.WatchUi;

import Toybox.System; //Para debug apenas

var zones = new Array<Number>[22];
var animals = new Array<String>[22];

class pulse_oxView extends WatchUi.DataField {

    hidden var heart_rate as Numeric;

    function initialize() {
        DataField.initialize();
        heart_rate = 0.0f;
    }

    // Set your layout here. Anytime the size of obscurity of
    // the draw context is changed this will be called.
    function onLayout(dc as Dc) as Void {

        for (var i = 0; i < 22; ++i) {
            var propertyValue = App.getApp().getProperty(Lang.format("col$1$", [ i+1 ]));
            
            // Check if the property is null before casting
            if (propertyValue != null) {
                zones[i] = (propertyValue as Number);
            } else {
                zones[i] = 0; // Default to a safe value if the property is not available
            }
        }

        for (var i = 0; i < 22; ++i) {
            var propertyValue = App.getApp().getProperty(Lang.format("animal$1$", [ i+1 ]));
            
            // Check if the property is null before casting
            if (propertyValue != null) {
                animals[i] = (propertyValue as String);
            } else {
                animals[i] = "OX"; // Default to a safe value if the property is not available
            }
        }

        var obscurityFlags = DataField.getObscurityFlags();

        // Top left quadrant so we'll use the top left layout
        if (obscurityFlags == (OBSCURE_TOP | OBSCURE_LEFT)) {
            View.setLayout(Rez.Layouts.TopLeftLayout(dc));

        // Top right quadrant so we'll use the top right layout
        } else if (obscurityFlags == (OBSCURE_TOP | OBSCURE_RIGHT)) {
            View.setLayout(Rez.Layouts.TopRightLayout(dc));

        // Bottom left quadrant so we'll use the bottom left layout
        } else if (obscurityFlags == (OBSCURE_BOTTOM | OBSCURE_LEFT)) {
            View.setLayout(Rez.Layouts.BottomLeftLayout(dc));

        // Bottom right quadrant so we'll use the bottom right layout
        } else if (obscurityFlags == (OBSCURE_BOTTOM | OBSCURE_RIGHT)) {
            View.setLayout(Rez.Layouts.BottomRightLayout(dc));

        // Use the generic, centered layout
        } else {
            View.setLayout(Rez.Layouts.MainLayout(dc));
            var labelView = View.findDrawableById("label") as Text;
            labelView.locY = labelView.locY - 30;
            var valueView = View.findDrawableById("value") as Text;
            valueView.locY = valueView.locY + 10;
        }

        (View.findDrawableById("label") as Text).setText(Rez.Strings.label);
    }

    // The given info object contains all the current workout information.
    // Calculate a value and save it locally in this method.
    // Note that compute() and onUpdate() are asynchronous, and there is no
    // guarantee that compute() will be called before onUpdate().
    function compute(info as Activity.Info) as Void {
        // See Activity.Info in the documentation for available information.
        if(info has :currentHeartRate){
            if(info.currentHeartRate != null){
                heart_rate = info.currentHeartRate as Number;
            } else {
                heart_rate = 0.0f;
            }
        }
    }

    // Display the value you computed here. This will be called
    // once a second when the data field is visible.
    function onUpdate(dc as Dc) as Void {

        // Set the background color
        (View.findDrawableById("Background") as Text).setColor(getBackgroundColor());

        // Set the foreground color and value
        var value = View.findDrawableById("value") as Text;
        if (getBackgroundColor() == Graphics.COLOR_BLACK) {
            value.setColor(Graphics.COLOR_WHITE);
        } else {
            value.setColor(Graphics.COLOR_BLACK);
        }


        if (heart_rate > zones[0] && heart_rate <= zones[1]) {
            value.setText(animals[0]);
        } else if (heart_rate > zones[1] && heart_rate <= zones[2]) {
            value.setText(animals[1]);
        } else if (heart_rate > zones[2] && heart_rate <= zones[3]) {
            value.setText(animals[2]);
        } else if (heart_rate > zones[3] && heart_rate <= zones[4]) {
            value.setText(animals[3]);
        } else if (heart_rate > zones[4] && heart_rate <= zones[5]) {
            value.setText(animals[4]);
        } else if (heart_rate > zones[5] && heart_rate <= zones[6]) {
            value.setText(animals[5]);
        } else if (heart_rate > zones[6] && heart_rate <= zones[7]) {
            value.setText(animals[6]);
        } else if (heart_rate > zones[7] && heart_rate <= zones[8]) {
            value.setText(animals[7]);
        } else if (heart_rate > zones[8] && heart_rate <= zones[9]) {
            value.setText(animals[8]);
        } else if (heart_rate > zones[9] && heart_rate <= zones[10]) {
            value.setText(animals[9]);
        } else if (heart_rate > zones[10] && heart_rate <= zones[11]) {
            value.setText(animals[10]);
        } else if (heart_rate > zones[11] && heart_rate <= zones[12]) {
            value.setText(animals[11]);
        } else if (heart_rate > zones[12] && heart_rate <= zones[13]) {
            value.setText(animals[12]);
        } else if (heart_rate > zones[13] && heart_rate <= zones[14]) {
            value.setText(animals[13]);
        } else if (heart_rate > zones[14] && heart_rate <= zones[15]) {
            value.setText(animals[14]);
        } else if (heart_rate > zones[15] && heart_rate <= zones[16]) {
            value.setText(animals[15]);
        } else if (heart_rate > zones[16] && heart_rate <= zones[17]) {
            value.setText(animals[16]);
        } else if (heart_rate > zones[17] && heart_rate <= zones[18]) {
            value.setText(animals[17]);
        } else if (heart_rate > zones[18] && heart_rate <= zones[19]) {
            value.setText(animals[18]);
        } else if (heart_rate > zones[19] && heart_rate <= zones[20]) {
            value.setText(animals[19]);
        } else if (heart_rate > zones[20] && heart_rate <= zones[21]) {
            value.setText(animals[20]);
        } else if (heart_rate > zones[21]) {
            value.setText(animals[21]);
        } 

        // Call parent's onUpdate(dc) to redraw the layout
        View.onUpdate(dc);
    }

}

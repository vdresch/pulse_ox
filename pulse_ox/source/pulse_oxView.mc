using Toybox.Application as App;
import Toybox.Activity;
import Toybox.Graphics;
import Toybox.Lang;
import Toybox.WatchUi;

import Toybox.System; //Para debug apenas

var zones = new Array<Number>[10];

class pulse_oxView extends WatchUi.DataField {

    hidden var heart_rate as Numeric;

    function initialize() {
        DataField.initialize();
        heart_rate = 0.0f;
    }

    // Set your layout here. Anytime the size of obscurity of
    // the draw context is changed this will be called.
    function onLayout(dc as Dc) as Void {

        for (var i = 0; i < 10; ++i) {
            var propertyValue = App.getApp().getProperty(Lang.format("col$1$", [ i ]));
            
            // Check if the property is null before casting
            if (propertyValue != null) {
                zones[i] = (propertyValue as Number);
            } else {
                zones[i] = 0; // Default to a safe value if the property is not available
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

        System.println(heart_rate);


        if (heart_rate > zones[0] && heart_rate <= zones[1]) {
            value.setText("OX1");
        } else if (heart_rate > zones[1] && heart_rate <= zones[2]) {
            value.setText("OX2");
        } else if (heart_rate > zones[2] && heart_rate <= zones[3]) {
            value.setText("OX3");
        } else if (heart_rate > zones[3] && heart_rate <= zones[4]) {
            value.setText("OX4");
        } else if (heart_rate > zones[4] && heart_rate <= zones[5]) {
            value.setText("OX5");
        } else if (heart_rate > zones[5] && heart_rate <= zones[6]) {
            value.setText("OX6");
        } else if (heart_rate > zones[6] && heart_rate <= zones[7]) {
            value.setText("OX7");
        } else if (heart_rate > zones[7] && heart_rate <= zones[8]) {
            value.setText("OX8");
        } else if (heart_rate > zones[8] && heart_rate <= zones[9]) {
            value.setText("OX9");
        } else if (heart_rate > zones[9]) {
            value.setText("OX10");
        } 

        // Call parent's onUpdate(dc) to redraw the layout
        View.onUpdate(dc);
    }

}

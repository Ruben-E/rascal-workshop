package nl.han.mad.rascal.rascal_android_example_project;

//@@IntentTemplate ZipCity ThirdActivity [zipcode:String city:String]
//@@IntentTemplate NameAddr ThirdActivity [name:String address:String]


import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

/**
 * Created by rubenernst on 16-04-14.
 */
public class ThirdActivity extends SuperThirdActivity {
    TextView headerText;
    TextView subText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.third_activity);

        headerText = (TextView) findViewById(R.id.header_text);
        subText = (TextView) findViewById(R.id.sub_text);

        Intent intent = getIntent();
        Integer intentCode = intent.getIntExtra("intentCode", -1);

        if (intentCode == 0) {
            String name = intent.getStringExtra("name");
            String address = intent.getStringExtra("address");

            headerText.setText(name);
            subText.setText(address);
        } else if (intentCode == 1) {
            String zipcode = intent.getStringExtra("zipcode");
            String city = intent.getStringExtra("city");

            headerText.setText(zipcode);
            subText.setText(city);
        }
    }
}

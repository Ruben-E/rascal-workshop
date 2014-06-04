package nl.han.mad.rascal.rascal_android_example_project;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

/**
 * Created by rubenernst on 16-04-14.
 */
public class SecondActivity extends Activity {
    private Button mFirstActivityButton;
    private Button mThirdActivityButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.second_activity);

        mFirstActivityButton = (Button) findViewById(R.id.first_activity_button);
        mThirdActivityButton = (Button) findViewById(R.id.third_activity_button);

        mFirstActivityButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(SecondActivity.this, FirstActivity.class);
                
                startActivity(intent);
            }
        });

        mThirdActivityButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                int intentCode = 2;
                String zipcode = "1111 AA";
                String city = "Arnhem";

                Intent intent = new Intent(SecondActivity.this, ThirdActivity.class);
                intent.putExtra("intentCode", intentCode);
                intent.putExtra("zipcode", zipcode);
                intent.putExtra("city", city);
                
                startActivity(intent);
            }
        });
    }
}

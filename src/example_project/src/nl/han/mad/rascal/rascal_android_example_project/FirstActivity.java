package nl.han.mad.rascal.rascal_android_example_project;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class FirstActivity extends Activity {
    private Button mSecondActivityButton;
    private Button mThirdActivityButton;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.first_activity);

        mSecondActivityButton = (Button) findViewById(R.id.second_activity_button);
        mThirdActivityButton = (Button) findViewById(R.id.third_activity_button);

        mSecondActivityButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(FirstActivity.this, SecondActivity.class);
                
                startActivity(intent);
            }
        });

        mThirdActivityButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                int intentCode = 1;
                String name = "Test Name";
                String address = "Test address 11";

                Intent intent = new Intent(FirstActivity.this, ThirdActivity.class);
                intent.putExtra("intentCode", intentCode);
                intent.putExtra("name", name);
                intent.putExtra("address", address);
                
                startActivity(intent);
            }
        });
    }


}

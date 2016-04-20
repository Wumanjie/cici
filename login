/*loginActivity.java*/
import java.util.Timer;
import java.util.TimerTask;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

public class LoginActivity extends Activity {
	//账号输入框
	EditText accountEdit;
	//密码输入框
	EditText pwdEdit;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		setContentView(R.layout.login);
		
		//获取账号控件，并自动弹出软键盘
		accountEdit = (EditText)findViewById(R.id.accountEdittext);
		accountEdit.setFocusable(true);
		accountEdit.setFocusableInTouchMode(true);
		accountEdit.requestFocus();
		Timer timer = new Timer();
		timer.schedule(new TimerTask() {
			public void run() {
				InputMethodManager inputManager = (InputMethodManager) accountEdit
						.getContext().getSystemService(
								Context.INPUT_METHOD_SERVICE);
				inputManager.showSoftInput(accountEdit, 0);
			}
		},
		998);
	}

}
/*login.xml*/
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="fill_parent"
    android:layout_height="fill_parent"
    android:background="@drawable/bkcolor"
    android:orientation="vertical" >

    <LinearLayout
        android:layout_width="fill_parent"
        android:layout_height="50dp"
        android:background="@drawable/topbg2"
        android:gravity="center_vertical"
        android:orientation="horizontal" >

        <Button
            android:id="@+id/cancel"
            android:layout_width="65.83dp"
            android:layout_height="30.5dp"
            android:layout_marginLeft="10dp"
            android:background="@drawable/normal_btn"
            android:text="@string/cancel"
            android:textColor="#ffffff" />

        <TextView
            android:id="@+id/tv_friend_title"
            android:layout_width="wrap_content"
            android:layout_height="50dip"
            android:layout_weight="1"
            android:gravity="center"
            android:text="AppName"
            android:textColor="#ffffff"
            android:textSize="20dip" />

        <Button
            android:id="@+id/login_in"
            android:layout_width="65.83dp"
            android:layout_height="30.5dp"
            android:layout_marginRight="10dp"
            android:background="@drawable/normal_btn"
            android:text="@string/login_in"
            android:textColor="#ffffff" />
    </LinearLayout>

    <RelativeLayout
        android:id="@+id/editRel"
        android:layout_width="fill_parent"
        android:layout_height="wrap_content" >

        <RelativeLayout
            android:id="@+id/accountRel"
            android:layout_width="fill_parent"
            android:layout_height="wrap_content"
            android:layout_marginTop="14dp"
            android:background="@drawable/preference_first_item"
            android:clickable="true"
            android:gravity="center_vertical" >

            <TextView
                android:id="@+id/account"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:padding="8dp"
                android:text="@string/account"
                android:textColor="#000"
                android:textSize="17sp" />

            <EditText
                android:id="@+id/accountEdittext"
                android:layout_width="fill_parent"
                android:layout_height="wrap_content"
                android:layout_centerVertical="true"
                android:layout_marginLeft="20dip"
                android:layout_toRightOf="@id/account"
                android:background="@null"
                android:hint="@string/account"
                android:textSize="15sp" />
        </RelativeLayout>

        <RelativeLayout
            android:id="@+id/pwdRel"
            android:layout_width="fill_parent"
            android:layout_height="wrap_content"
            android:layout_below="@id/accountRel"
            android:background="@drawable/preference_last_item"
            android:clickable="true"
            android:gravity="center_vertical" >

            <TextView
                android:id="@+id/pwd"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:padding="8dp"
                android:text="@string/pwd"
                android:textColor="#000"
                android:textSize="17sp" />

            <EditText
                android:id="@+id/pwdEdittext"
                android:layout_width="fill_parent"
                android:layout_height="wrap_content"
                android:layout_centerVertical="true"
                android:layout_marginLeft="20dip"
                android:layout_toRightOf="@id/pwd"
                android:background="@null"
                android:hint="@string/pwd"
                android:textSize="15sp" />
        </RelativeLayout>
    </RelativeLayout>

    <TextView
        android:id="@+id/sound_help"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="15dip"
        android:layout_marginLeft="15dip"
        android:text="@string/forget_pwd"
        android:textColor="#29981A" />

</LinearLayout>
/* @res/drawable/normal_btn.xml*/
<?xml version="1.0" encoding="utf-8"?>
<selector
  xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:state_pressed="true" android:drawable="@drawable/button_on"/>
    <item android:state_focused="true" android:drawable="@drawable/button_on" />
    <item android:state_selected="true" android:drawable="@drawable/button_on" />
    <item android:drawable="@drawable/button"/>
</selector>

/* @res/drawable/preference_first_item.xml*/
<?xml version="1.0" encoding="utf-8"?>
<selector
  xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:state_pressed="true" android:drawable="@drawable/button_on"/>
    <item android:state_focused="true" android:drawable="@drawable/button_on" />
    <item android:state_selected="true" android:drawable="@drawable/button_on" />
    <item android:drawable="@drawable/button"/>
</selector>
/* @res/drawable/preference_last_item.xml*/
<?xml version="1.0" encoding="utf-8"?>
<selector
  xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:state_pressed="true" android:drawable="@drawable/button_on"/>
    <item android:state_focused="true" android:drawable="@drawable/button_on" />
    <item android:state_selected="true" android:drawable="@drawable/button_on" />
    <item android:drawable="@drawable/button"/>
</selector>

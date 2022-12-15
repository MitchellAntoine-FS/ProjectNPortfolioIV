package com.fullsail.mitchellantoine_smoothanxiety

import android.os.Bundle
import androidx.activity.result.ActivityResultLauncher
import androidx.appcompat.app.AppCompatActivity
import com.fullsail.mitchellantoine_smoothanxiety.databinding.ActivityHeartRateBinding

class SmoothAnxietyMainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityHeartRateBinding

    private lateinit var permissionLauncher: ActivityResultLauncher<String>

//    private val viewModel: SmoothAnxietyViewModel by viewModels()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_heart_rate)

    }


}
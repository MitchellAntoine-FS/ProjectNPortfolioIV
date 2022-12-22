package com.fullsail.mitchellantoine_smooth_anxiety

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import com.fullsail.mitchellantoine_smooth_anxiety.databinding.ActivityStressLevelBinding

class StressLevelActivity : AppCompatActivity() {

    private lateinit var binding: ActivityStressLevelBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityStressLevelBinding.inflate(layoutInflater)
        setContentView(binding.root)



    }



}
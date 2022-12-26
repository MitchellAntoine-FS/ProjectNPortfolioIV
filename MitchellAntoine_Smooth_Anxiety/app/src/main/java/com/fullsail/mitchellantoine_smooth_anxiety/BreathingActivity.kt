package com.fullsail.mitchellantoine_smooth_anxiety

import android.content.Intent
import android.os.Bundle
import android.os.Handler
import android.util.Log
import android.widget.ImageButton
import android.widget.ImageView
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.fullsail.mitchellantoine_smooth_anxiety.databinding.ActivityBreathingBinding

class BreathingActivity : AppCompatActivity() {
    private val TAG = "BreathingActivity"

    private lateinit var binding: ActivityBreathingBinding
    private lateinit var startBtn: ImageButton
    private lateinit var breathtxt: TextView
    private lateinit var flower: ImageView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityBreathingBinding.inflate(layoutInflater)
        setContentView(binding.root)
        Log.i(TAG, "onCreate: ")

        breathtxt = binding.breathTxt
        flower = binding.breathImageview
        startBtn = binding.startBtn
        startBtn.setOnClickListener {
            animationstart()
        }
    }

    private fun animationstart() {
        for (i in 1..5) {
        // animating the image
        flower.animate().apply {
            //text change
            breathtxt.text = getString(R.string.inhale_exhale)

                scaleY(0f)
                scaleY(0f)
                scaleX(0.5f)
                scaleY(0.5f)

                duration + 5000

                rotation(360f)

                breathtxt.text = getString(R.string.great)
                flower.scaleX = 1.0f
                flower.scaleY = 1.0f

                //refreshing the activity
                val handler = Handler()
                val countDownTimer = Runnable {
                    startActivity(Intent(this@BreathingActivity, BreathingActivity::class.java))
                    finish()
                }
                handler.postDelayed(countDownTimer, 2000)

            }.start()//starting animation
        }
    }

}


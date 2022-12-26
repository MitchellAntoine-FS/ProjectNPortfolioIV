package com.fullsail.mitchellantoine_smooth_anxiety

import android.os.Bundle
import android.os.CountDownTimer
import android.util.Log
import android.widget.ImageButton
import androidx.appcompat.app.AppCompatActivity
import com.fullsail.mitchellantoine_smooth_anxiety.databinding.ActivityStressLevelBinding
import com.google.android.material.progressindicator.CircularProgressIndicator
import com.google.android.material.progressindicator.CircularProgressIndicator.INDICATOR_DIRECTION_COUNTERCLOCKWISE
import kotlinx.coroutines.ExperimentalCoroutinesApi

@ExperimentalCoroutinesApi
class StressLevelActivity : AppCompatActivity() {
    private val TAG = "StressLevelActivity"
    
    private lateinit var binding: ActivityStressLevelBinding

    private val TOTAL_TIME = 5 * 1000L

    private lateinit var startBtn: ImageButton

    private lateinit var circleProgress: CircularProgressIndicator

    private var currentProgress = 0

    @ExperimentalCoroutinesApi
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityStressLevelBinding.inflate(layoutInflater)
        setContentView(binding.root)

        circleProgress = binding.circularProgressIndicator

        startBtn = binding.imageButton
        startBtn.setOnClickListener {
            setProgress.start()
            setProgress.onTick((currentProgress + 20).toLong())
        }

    }

    private var setProgress = object : CountDownTimer(5*1000, 1000) {

        override fun onTick(millisUntilFinished: Long) {

            if (circleProgress.progress != 100) {

                currentProgress = currentProgress + 20
                circleProgress.setProgress(currentProgress)
                circleProgress.setMax(100)
            }
            else if (circleProgress.progress >= 0) {

                currentProgress = currentProgress - 20
                circleProgress.indicatorDirection = INDICATOR_DIRECTION_COUNTERCLOCKWISE
                circleProgress.setProgress(currentProgress)
            }

            Log.i("PROGRESS", "Progress... " + circleProgress.progress + "%")
        }
        override fun onFinish() {
            Log.i(TAG, "onFinish: Progress Finished" )

//            circleProgress.progress = 0

        }

    }

}
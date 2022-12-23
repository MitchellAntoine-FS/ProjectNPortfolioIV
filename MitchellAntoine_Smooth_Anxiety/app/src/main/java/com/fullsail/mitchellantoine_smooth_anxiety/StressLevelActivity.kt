package com.fullsail.mitchellantoine_smooth_anxiety

import android.os.Bundle
import android.os.CountDownTimer
import androidx.activity.viewModels
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.fullsail.mitchellantoine_smooth_anxiety.databinding.ActivityStressLevelBinding
import com.google.android.material.progressindicator.CircularProgressIndicator
import kotlinx.coroutines.ExperimentalCoroutinesApi

@ExperimentalCoroutinesApi
class StressLevelActivity : AppCompatActivity() {

    private lateinit var binding: ActivityStressLevelBinding

    private val viewModel: SmoothAnxietyViewModel by viewModels()

    private val TOTAL_TIME = 60 * 1000L

    private lateinit var circleProgress: CircularProgressIndicator

    @ExperimentalCoroutinesApi
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityStressLevelBinding.inflate(layoutInflater)
        setContentView(binding.root)

        // Bind viewmodel state to the UI.

        lifecycleScope.launchWhenStarted {
            viewModel.heartRateAvailable.collect {
                binding.statusLabel.text = getString(R.string.measure_status, it)
            }
        }
        lifecycleScope.launchWhenStarted {
            viewModel.heartRateBpm.collect {
                binding.heartrateLabel.text = String.format("%.1f", it)
            }
        }

        timeOutRemoveTimer.start()
    }

    private var timeOutRemoveTimer = object : CountDownTimer(TOTAL_TIME, 10) {
        override fun onFinish() {
            circleProgress.progress = 1
        }

        override fun onTick(millisUntilFinished: Long) {
            circleProgress.progress = ((TOTAL_TIME - millisUntilFinished).toFloat() / TOTAL_TIME).toInt()
        }
    }

}
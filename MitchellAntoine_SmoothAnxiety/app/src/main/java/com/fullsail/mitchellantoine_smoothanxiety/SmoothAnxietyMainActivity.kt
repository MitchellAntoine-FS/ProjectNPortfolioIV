package com.fullsail.mitchellantoine_smoothanxiety

import android.os.Bundle
import android.text.format.DateFormat
import android.util.Log
import androidx.activity.result.ActivityResultLauncher
import androidx.activity.result.contract.ActivityResultContracts
import androidx.activity.viewModels
import androidx.annotation.VisibleForTesting
import androidx.appcompat.app.AppCompatActivity
import androidx.core.os.ConfigurationCompat
import androidx.lifecycle.lifecycleScope
import com.fullsail.mitchellantoine_smoothanxiety.SmoothAnxietyMainActivity.Clock
import com.fullsail.mitchellantoine_smoothanxiety.databinding.ActivityHeartRateBinding
import kotlinx.coroutines.ExperimentalCoroutinesApi
import java.util.*

class SmoothAnxietyMainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityHeartRateBinding
    private var time = Calendar.getInstance()
    private var use24HourFormat = DateFormat.is24HourFormat(this)
    private lateinit var permissionLauncher: ActivityResultLauncher<String>

    @OptIn(ExperimentalCoroutinesApi::class)
    private val viewModel: SmoothAnxietyViewModel by viewModels()

    @VisibleForTesting
    var clock: Clock = Clock(System::currentTimeMillis)
        set(value) {
            field = value
            onTimeChange()
        }

    @OptIn(ExperimentalCoroutinesApi::class)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityHeartRateBinding.inflate(layoutInflater)
        setContentView(binding.root)

        onTimeChange()
        onTimeZoneChange()
        onTimeFormatChange()

        permissionLauncher
        registerForActivityResult(ActivityResultContracts.RequestPermission()) { result ->
            when (result) {
                true -> {
                    Log.i(TAG, "Body sensors permission granted")
                    // Only measure while the activity is at least in STARTED state.
                    lifecycleScope.launchWhenStarted {
                        viewModel.measureHeartRate()
                    }
                }
                false -> Log.i(TAG, "Body sensors permission not granted")
            }

        }
        // Bind viewmodel state to the UI.
        lifecycleScope.launchWhenStarted {
            viewModel.uiState.collect {
                updateViewVisiblity(it)
            }
        }
        lifecycleScope.launchWhenStarted {
            viewModel.heartRateAvailable.collect {
                // binding.statusText.text = getString(R.string.measure_status, it)
            }
        }
        lifecycleScope.launchWhenStarted {
            viewModel.heartRateBpm.collect {
                // binding.heartrateLabel.text = String.format("%.1f", it)
                binding.heartrateLabel.text = String.format("%.1f", it)
            }
        }
    }

    override fun onStart() {
        super.onStart()
        permissionLauncher.launch(android.Manifest.permission.BODY_SENSORS)
    }

    private fun updateViewVisiblity(uiState: UiState) {
//        binding.heartrateLabel.isVisible = it
    }

    private fun onTimeChange() {
        val pattern = DateFormat.getBestDateTimePattern(
            ConfigurationCompat.getLocales(resources.configuration)[0],
            if (use24HourFormat) "Hm" else "hm"
        )
        // Remove the am/pm indicator (if any). This is locale safe.
        val patternWithoutAmPm = pattern.replace("a", "").trim()

        time.timeInMillis = clock.getCurrentTimeMillis()
        binding.timeView.text = DateFormat.format(patternWithoutAmPm, time)
    }

    private fun onTimeZoneChange() {
        time = Calendar.getInstance()
        onTimeChange()
    }

    private fun onTimeFormatChange() {
        use24HourFormat = DateFormat.is24HourFormat(this)
        onTimeChange()
    }

    fun interface Clock {

        // Returns the current time in milliseconds since the epoch.

        fun getCurrentTimeMillis(): Long
    }
}
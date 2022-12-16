package com.fullsail.mitchellantoine_smoothanxiety

import android.os.Bundle
import android.util.Log
import androidx.activity.result.ActivityResultLauncher
import androidx.activity.result.contract.ActivityResultContracts
import androidx.activity.viewModels
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.fullsail.mitchellantoine_smoothanxiety.databinding.ActivityHeartRateBinding
import kotlinx.coroutines.ExperimentalCoroutinesApi

class SmoothAnxietyMainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityHeartRateBinding

    private lateinit var permissionLauncher: ActivityResultLauncher<String>

    @OptIn(ExperimentalCoroutinesApi::class)
    private val viewModel: SmoothAnxietyViewModel by viewModels()

    @OptIn(ExperimentalCoroutinesApi::class)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityHeartRateBinding.inflate(layoutInflater)
        setContentView(binding.root)

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
                // binding.lastMeasuredValue.text = String.format("%.1f", it)
            }
        }


    }

    override fun onStart() {
        super.onStart()
        permissionLauncher.launch(android.Manifest.permission.BODY_SENSORS)
    }

    private fun updateViewVisiblity(uiState: UiState) {

    }

}
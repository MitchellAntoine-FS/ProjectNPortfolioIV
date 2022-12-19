package com.fullsail.mitchellantoine_androidtv

import android.view.View.Z

object MovieList {
    val MOVIE_CATEGORY = arrayOf(
        "Action",
        "Anime",
        "Drama"
    )

    val list: List<Movie> by lazy {
        setupMovies()
    }
    private var count: Long = 0

    private fun setupMovies(): List<Movie> {
        val title = arrayOf(
            "Prey",
            "Journey 2: The Mysterious Island",
            "The Aeronauts",
            "The Princess",
            "Ready Player One"
        )

        val action5_description = "A skilled Comanche warrior protects her tribe from a highly evolved alien predator that hunts humans for sport," +
                " fighting against wilderness, dangerous colonisers and this mysterious creature to keep her people safe."
        val action4_description = "Now 17, Sean Anderson (Josh Hutcherson) receives a coded distress signal from an island where none should exist. " +
                "Knowing that he will not be able to dissuade Sean from tracking the signal to its source, Hank (Dwayne Johnson), Sean's new stepfather," +
                " joins the teen on a quest to the South Pacific."
        val action3_discription = "In 1862 headstrong scientist James Glaisher and wealthy young widow Amelia Wren mount a balloon expedition to " +
                "fly higher than anyone in history. As their perilous ascent reduces their chances of survival, the unlikely duo soon discover " +
                "things about themselves -- and each other -- that help both of them find their place in the world."
        val action2_discription = "When a strong-willed princess refuses to wed a cruel sociopath, she is kidnapped and locked in a remote tower. " +
                "With her scorned, vindictive suitor intent on taking her father's throne, the princess must protect her family and save the kingdom."
        val action1_discription = "In 2045 the planet is on the brink of chaos and collapse, but people find salvation in the OASIS: an expansive " +
                "virtual reality universe created by eccentric James Halliday. When Halliday dies, he promises his immense fortune to the first person to discover a digital Easter egg that's hidden somewhere in the OASIS."
Z
        val studio = arrayOf(
            "Studio Action",
            "Studio Anime",
            "Studio Drama"
        )
        val videoUrl = arrayOf(
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/Zeitgeist/Zeitgeist%202010_%20Year%20in%20Review.mp4",
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/Demo%20Slam/Google%20Demo%20Slam_%2020ft%20Search.mp4",
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool's%202013/Introducing%20Gmail%20Blue.mp4",
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool's%202013/Introducing%20Google%20Fiber%20to%20the%20Pole.mp4",
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool's%202013/Introducing%20Google%20Nose.mp4"
        )
        val bgActoinImageUrl = arrayOf(
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/Zeitgeist/Zeitgeist%202010_%20Year%20in%20Review/bg.jpg",
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/Demo%20Slam/Google%20Demo%20Slam_%2020ft%20Search/bg.jpg",
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool's%202013/Introducing%20Gmail%20Blue/bg.jpg",
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool's%202013/Introducing%20Google%20Fiber%20to%20the%20Pole/bg.jpg",
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool's%202013/Introducing%20Google%20Nose/bg.jpg"
        )
        val cardActionImageUrl = arrayOf(
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/Zeitgeist/Zeitgeist%202010_%20Year%20in%20Review/card.jpg",
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/Demo%20Slam/Google%20Demo%20Slam_%2020ft%20Search/card.jpg",
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool's%202013/Introducing%20Gmail%20Blue/card.jpg",
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool's%202013/Introducing%20Google%20Fiber%20to%20the%20Pole/card.jpg",
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool's%202013/Introducing%20Google%20Nose/card.jpg"
        )
        val cardAnimeImageUrl = arrayOf(
            ""
        )

        val list = title.indices.map {
            buildMovieInfo(
                title[it],
                action5_description,
                studio[it],
                videoUrl[it],
                cardActionImageUrl[it],
                bgActoinImageUrl[it]
            )
        }

        return list
    }

    private fun buildMovieInfo(
        title: String,
        description: String,
        studio: String,
        videoUrl: String,
        cardImageUrl: String,
        backgroundImageUrl: String
    ): Movie {
        val movie = Movie()
        movie.id = count++
        movie.title = title
        movie.description = description
        movie.studio = studio
        movie.cardImageUrl = cardImageUrl
        movie.backgroundImageUrl = backgroundImageUrl
        movie.videoUrl = videoUrl
        return movie
    }
}
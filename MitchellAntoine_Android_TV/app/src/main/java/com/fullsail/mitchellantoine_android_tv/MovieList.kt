package com.fullsail.mitchellantoine_android_tv

object MovieList {
    val MOVIE_CATEGORY = arrayOf(
        "Action",
        "Anime",
        "Drama",
        "Category ",
        "Category ",
        "Category "
    )

    val list: List<Movie> by lazy {
        setupMovies()
    }
    private var count: Long = 0

    private fun setupMovies(): List<Movie> {
        val  list: List<Movie>?
        val title = arrayOf(
            "Prey",
            "Journey 2: The Mysterious Island",
            "The Aeronauts",
            "The Princess",
            "Ready Player One"
        )

        val action1_description = "In 2045 the planet is on the brink of chaos and collapse, but people find salvation in the OASIS: an expansive " +
                "virtual reality universe created by eccentric James Halliday. When Halliday dies, he promises his immense fortune to the first " +
                "person to discover a digital Easter egg that's hidden somewhere in the OASIS."
        val action2_discription = "When a strong-willed princess refuses to wed a cruel sociopath, she is kidnapped and locked in a remote tower. " +
                "With her scorned, vindictive suitor intent on taking her father's throne, the princess must protect her family and save the kingdom."
        val action3_discription = "In 1862 headstrong scientist James Glaisher and wealthy young widow Amelia Wren mount a balloon expedition to " +
                "fly higher than anyone in history. As their perilous ascent reduces their chances of survival, the unlikely duo soon discover " +
                "things about themselves -- and each other -- that help both of them find their place in the world."
        val action4_description = "Now 17, Sean Anderson (Josh Hutcherson) receives a coded distress signal from an island where none should exist. " +
                "Knowing that he will not be able to dissuade Sean from tracking the signal to its source, Hank (Dwayne Johnson), Sean's new stepfather," +
                " joins the teen on a quest to the South Pacific."
        val action5_description = "A skilled Comanche warrior protects her tribe from a highly evolved alien predator that hunts humans for sport," +
                " fighting against wilderness, dangerous colonisers and this mysterious creature to keep her people safe."

        val anime1_discription = "Underground gladiator Tokita Ohma fights on behalf of business mogul Nogi Hideki, who wagers mega-business deals " +
                "on the outcomes of the brutal matches."
        val anime2_discription = "A parody of the console wars, the series tells the story of two nations, the Segua Kingdom and Ninteldo Empire, " +
                "locked in a struggle for dominance over the land of Consume."
        val anime3_discription = "Ren Fujii dreads the return of a group of supermen whose coming would bring the world's destru"
        val anime4_discription = "A man equipped with only a shield is chosen to be one of the world's great defenders, but when a cruel betrayal " +
                "shatters his reputation, he tries to regain the public's trust while fighting evil alongside a few devoted allies."
        val anime5_discription = "Chaos Dragon is a Japanese media franchise based on the Japanese role-playing game Red Dragon by Makoto Sanda, "

        val drama1_discription = "Heir to a real-estate dynasty, David Marks (Ryan Gosling) lives in the shadow of his father, Sanford (Frank Langella). " +
                "He takes a chance at true love when he meets Katie (Kirsten Dunst), a woman of modest origins who sees David's real worth as a person, " +
                "not just his family's wealth"
        val drama2_discription = "Nicky (Will Smith), a veteran con artist, takes a novice named Jess (Margot Robbie) under his wing. While Nicky teaches " +
                "Jess the tricks of the trade, the pair become romantically involved; but, when Jess gets uncomfortably close, Nicky ends their relationship."
        val drama3_discription = "Paige (Rachel McAdams) and Leo (Channing Tatum) are happily married newlyweds, but their idyllic life together suddenly" +
                " shatters when a car accident leaves her in a coma. When Paige awakes, she has severe memory loss and doesn't know Leo."
        val drama4_discription = "A college student (Emily Browning) becomes a niche sex worker for a high-end brothel where customers pay to fondle her " +
                "while she sleeps."
        val drama5_discription = "A human drama inspired by events in the life of John Forbes Nash Jr., and in part based on the biography " +
                "'A Beautiful Mind' by Sylvia Nasar. From the heights of notoriety to the depths of depravity, John Forbes Nash Jr. experienced it all."


        val studio = arrayOf(
            "Studio Zero",
            "Studio One",
            "Studio Two",
            "Studio Three",
            "Studio Four"
        )
        val videoUrl = arrayOf(
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/Zeitgeist/Zeitgeist%202010_%20Year%20in%20Review.mp4",
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/Demo%20Slam/Google%20Demo%20Slam_%2020ft%20Search.mp4",
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool's%202013/Introducing%20Gmail%20Blue.mp4",
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool's%202013/Introducing%20Google%20Fiber%20to%20the%20Pole.mp4",
            "https://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool's%202013/Introducing%20Google%20Nose.mp4"
        )
        val bgImageUrl = arrayOf(
                "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQbMAMNjK9WAITC7ZzOMZYBawBGftvcT1ya8krvYSl-YEGb5m6r",
                "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT1XnkcYND_Vfij-cUlV70vN9LIFiXcyhLfQwLWDcVFY6_segCl",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSle0e7rRy9IjfH3ju3jkV_jsjhzc74uF-bef7pcFn1tntc9wSV",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBOE55KuBzYjngijqlkZw2xgFidoceUDzimFxQPtSXJOiZne05",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0Rpzz9KYHkeefCLdnM3vU8CHHTHq0eAPSKY0OyIpFVca-D4E-",

                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.netflix.com%2Ftitle%2F80992228&psig=AOvVaw0XCIMFucCIvST8AYQD7xvw&ust=1671498629189000&source=images&cd=vfe&ved=0CA4QjRxqFwoTCNjJ0eG_hPwCFQAAAAAdAAAAABAG",
                "https://upload.wikimedia.org/wikipedia/en/a/a6/Aoi_Sekai_no_Ch%C5%ABshin_de_vol_1.jpg",
                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fmyanimelist.net%2Fanime%2F32271%2FDies_Irae&psig=AOvVaw0aiWTqpjh-zYxgdvRceT-r&ust=1671499921403000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCKCZnsrEhPwCFQAAAAAdAAAAABAI",
                "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRH00BnMVEjfUYWD51GKoJPrzokX47eEGx2CWFw8mRl3N4Qbl1P",
                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt4537640%2F&psig=AOvVaw2OgCtewoxX4VjsA3ky0K4A&ust=1671500039279000&source=images&cd=vfe&ved=0CA4QjRxqFwoTCKiQg4LFhPwCFQAAAAAdAAAAABAE",

                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTD1Le5FCn4wlrah6AwcUHsyje_DVXy_F5V9USOxlibIhipLgH",
                "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRV7tVYkjL9mgSWf7kMW8SQB7LqhtJrQhiQ3vT3Aerafw6zxy7I",
                "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRmxxyGraRK8_jH92I8r24GaqU-tJXoB9bRbNrkwcSgry2O8EPT",
                "https://upload.wikimedia.org/wikipedia/en/0/0d/Sleeping_Beauty_film.jpg",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVHqJ9lW5n4dwrdw3hUmvQQP2WwN1R6IsfhhMHdxTQuZPHw9jA"

        )
        val cardImageUrl = arrayOf(
                "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQbMAMNjK9WAITC7ZzOMZYBawBGftvcT1ya8krvYSl-YEGb5m6r",
                "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT1XnkcYND_Vfij-cUlV70vN9LIFiXcyhLfQwLWDcVFY6_segCl",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSle0e7rRy9IjfH3ju3jkV_jsjhzc74uF-bef7pcFn1tntc9wSV",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBOE55KuBzYjngijqlkZw2xgFidoceUDzimFxQPtSXJOiZne05",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0Rpzz9KYHkeefCLdnM3vU8CHHTHq0eAPSKY0OyIpFVca-D4E-",

                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.netflix.com%2Ftitle%2F80992228&psig=AOvVaw0XCIMFucCIvST8AYQD7xvw&ust=1671498629189000&source=images&cd=vfe&ved=0CA4QjRxqFwoTCNjJ0eG_hPwCFQAAAAAdAAAAABAG",
                "https://upload.wikimedia.org/wikipedia/en/a/a6/Aoi_Sekai_no_Ch%C5%ABshin_de_vol_1.jpg",
                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fmyanimelist.net%2Fanime%2F32271%2FDies_Irae&psig=AOvVaw0aiWTqpjh-zYxgdvRceT-r&ust=1671499921403000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCKCZnsrEhPwCFQAAAAAdAAAAABAI",
                "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRH00BnMVEjfUYWD51GKoJPrzokX47eEGx2CWFw8mRl3N4Qbl1P",
                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt4537640%2F&psig=AOvVaw2OgCtewoxX4VjsA3ky0K4A&ust=1671500039279000&source=images&cd=vfe&ved=0CA4QjRxqFwoTCKiQg4LFhPwCFQAAAAAdAAAAABAE",

                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTD1Le5FCn4wlrah6AwcUHsyje_DVXy_F5V9USOxlibIhipLgH",
                "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRV7tVYkjL9mgSWf7kMW8SQB7LqhtJrQhiQ3vT3Aerafw6zxy7I",
                "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRmxxyGraRK8_jH92I8r24GaqU-tJXoB9bRbNrkwcSgry2O8EPT",
                "https://upload.wikimedia.org/wikipedia/en/0/0d/Sleeping_Beauty_film.jpg",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVHqJ9lW5n4dwrdw3hUmvQQP2WwN1R6IsfhhMHdxTQuZPHw9jA"

        )

        list = title.indices.map {
            buildMovieInfo(
                title[it],
                action1_description,
                studio[it],
                videoUrl[it],
                cardImageUrl[it],
                bgImageUrl[it]
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
terraform {
  required_providers {
    spotify = {
      version = "~> 0.2.6"
      source  = "conradludgate/spotify"
    }
  }
}

provider "spotify" {
  api_key = var.spotify_api_key
}

data "spotify_track" "this_year" {
  spotify_id = "2M1Qc1mGSI1IYtmJzQtfPq"
}

data "spotify_track" "vampires" {
  spotify_id = "250RLekaiL1q9qZer975Eg"
}

data "spotify_track" "sing" {
  spotify_id = "1hkC9kHG980jEfkTmQYB7t"
}

data "spotify_track" "round_again" {
  spotify_id = "1yGxcVyC3VflyxJkDlhSZi"
}

data "spotify_track" "excavator" {
  spotify_id = "3X6fJLY0KvjLQSDHTLwvDn"
}

data "spotify_track" "when_i" {
  spotify_id = "5O0h2Fq8byNYT5tHwymFkH"
}

data "spotify_track" "laugh" {
  spotify_id = "0i13slXjO9CudgcvP4OnVW"
}

data "spotify_track" "again" {
  spotify_id = "6WdcvzQADmrL8nucimUV6r"
}

data "spotify_track" "randall" {
  spotify_id = "1A9nU6BWNE58rLzkva3lH4"
}

data "spotify_track" "home" {
  spotify_id = "4PRhg1fcYMevprYDkVqweI"
}

data "spotify_track" "fever" {
  spotify_id = "3aPlQWU07jGgyHaBHVS5TS"
}

data "spotify_track" "garfield" {
  spotify_id = "2mkVZhSWSn3afByKD9O2gX"
}

data "spotify_track" "kkb" {
  spotify_id = "07q7tSbn0fNAToKvE1TtxM"
}

data "spotify_track" "topgun" {
  spotify_id = "15MJ5NThPjj6xhPcts8MiY"
}

data "spotify_track" "imgonna" {
  spotify_id = "21Bn1kmDAnZfxj7PRwmfbg"
}

data "spotify_track" "come" {
  spotify_id = "6LoQHIo74tOzQ8EsLEkhgF"
}


resource "spotify_playlist" "playlist" {
  name        = "2020 Playlist"
  description = "This playlist was created by Terraform"
  public      = true

  tracks = [
     data.spotify_track.this_year.id,
     data.spotify_track.vampires.id,
     data.spotify_track.sing.id,
     data.spotify_track.round_again.id,
     data.spotify_track.excavator.id,
     data.spotify_track.when_i.id,
     data.spotify_track.laugh.id,
     data.spotify_track.again.id,
     data.spotify_track.randall.id,
     data.spotify_track.home.id,
     data.spotify_track.fever.id,
     data.spotify_track.garfield.id,
     data.spotify_track.kkb.id,
     data.spotify_track.topgun.id,
     data.spotify_track.imgonna.id,
     data.spotify_track.come.id
  ]
}

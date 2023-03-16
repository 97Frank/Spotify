install.packages('spotifyr')
library(spotifyr)

Sys.setenv(SPOTIFY_CLIENT_ID = 'ef5dfdc00b6c43cd845f2912a812875f')
Sys.setenv(SPOTIFY_CLIENT_SECRET = 'db4901e4256e4d598a03833b8260f2ba')

access_token <- get_spotify_access_token()

recent <- spotifyr::get_my_recently_played()
rec<-spotifyr::get_recommendations(seed_artists = '3E8Mx37sikkaFoX5DRecLi')
artist<-spotifyr::get_artist_top_tracks(id = '3E8Mx37sikkaFoX5DRecLi' )
oscar <- spotifyr::get_user_profile('117081461')
top_artist <- get_my_top_artists_or_tracks(limit = 50)
top_tracks <- get_my_top_artists_or_tracks(type = 'tracks',limit = 50)
top_tracks_k <- get_my_top_artists_or_tracks(type = 'tracks',limit = 50, time_range = 'long_term')
top_tracks_kk <- get_my_top_artists_or_tracks(type = 'tracks',limit = 50, time_range = 'short_term')
lol<-spotifyr::get_recommendations(seed_tracks = top_tracks_kk[1:5,7])

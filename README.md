# SpaceX

## Main structure
Flutter App that contains Home page with the navigation to Crew list and Launches.

Crew list shows just all people in the crew.

Launches screen has different navigation based on the screen size. It contains three tabs: Past Launches, Upcoming Launches, Favorite Launch


### Past and Upcoming Launches screen
These screens contains paged data. Only some of attributes are loaded, not the whole json structure. POST with query body is sent.

Past launches shows launches with date_utc before current date. Both screens are based on the same widget.

Upcoming launches shows launches with upcoming=true.

Both sections can filter and sort launches and store last used filter.

By taping on the list tile, user can navigate to its detail.


### Launch screen
JSON data for Launch screen are loaded after tapping the tile on the list screen for better performance.
It shows some of the data for Launch. Urls are possible to open, youtube video could be played.
First page of launches is saved locally. If saved data are shown. The box around the list has primary color.

### Favorite screen
It's just my favorite launch :-).

### Crew screen
It loads all people in the crew. Loading is not paged. It's just GET request.

## Others
For navigation I use go_router.

For state management I use cubits.

Part of the application I localized with easy_localization. I finished with that because it is quite time consuming and not necessary here...

For generating model objects from json I use freezed + json_annotation.

Filter+sort is saved via flutter_secure_storage.

For http requests I use http package.

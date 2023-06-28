# SpaceX

## Main structure
Flutter App that contains Home page with the navigation to Crew list and Launches.

Crew list shows just all people in the crew.

Launches screen has different navigation based on the screen size. It contains three tabs: Past Launches, Upcoming Launches and Favorite Launch


### Past and Upcoming Launches screen
These screens contain paged data. Only some of attributes are loaded for better performance, not the whole json structure. POST with query body is sent.


Past launches shows launches with date_utc before current date. 

Upcoming launches shows launches with upcoming=true.

Both screens are based on the same widget. They can filter and sort launches and store last used filter.

By taping on the list tile, user can navigate to its detail.

The first page of launches is saved locally. If saved data are shown. The box around the list has primary color.


### Launch screen
JSON data for Launch screen are loaded after tapping the tile on the list screen.
It shows some of the data for Launch. Urls are possible to open, youtube video could be played.


### Favorite screen
It's just my favorite launch for checking layout :-).

### Crew screen
It loads all people in the crew. Loading is not paged. It's just GET request without body.

## Others
For navigation go_router is used.

For state management cubits are used.

For generating model objects from json freezed + json_annotation is used.

Part of the application is localized by easy_localization. I finished with that because it is quite time consuming and not necessary here...

Filter+sort is saved via flutter_secure_storage.

For http requests I use http package.

Example includes simple cubit and widget test.



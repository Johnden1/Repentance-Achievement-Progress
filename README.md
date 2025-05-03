# Repentance+ Tracker → Download Here![https://github.com/Johnden1/Repentance-Achievement-Progress/releases/download/Repentance-Tracker-v1.0/Repentance+.Tracker.zip]

A "simple" achievement, item and stats tracker for Binding of Isaac Rebirth - Repentance+ DLC

![2025-05-03 08_56_16-Repentance+ Tracker](https://github.com/user-attachments/assets/ebf4ce0c-8656-4de9-8bc1-9361aab57ecc)
![2025-05-03 08_58_33-Repentance+ Tracker](https://github.com/user-attachments/assets/ef1fdb55-bd9d-40dd-bbd2-02efd58cf5d1)
![2025-05-03 08_59_14-Repentance+ Tracker](https://github.com/user-attachments/assets/49cd8116-e93e-4fee-babf-bd62d2fdefea)
## Description

Tracks unlocks, picked up items and statistics that are saved in the save file.
Which includes: Win-Streak, Donation Machine, Achievement Progression.
It also tracks interesting statistics like: Tinted Rocks Destroyed and Participated Dailies.

## Getting Started

### Compatibility

* Supports Windows 10/11
* Works only for Repentance+ Beta

### Download & How to run

* Unzip into a folder and run the .exe file
* Make sure your save files are properly located in Program Files or Program Files (x86)
The default directory is ".\Steam\userdata\\*\250900\remote", where * is your SteamID3.

## Version History
* 1.0 - GUI Update
    * Added File selection screen, which shows the exact file images in-game (tracks what the player has completed for each save file)
    * Added Achievement tracker page, where each completed achievement is highlighted with a green border
       * Shows progression for some achievements
       * Shows tooltips when hovering over with a mouse
       * Header contains a Win/Lose streak, Donation machine progress, Achievement Progress and a button to return to the File Selection screen.
       * Footer contains a buttons to show or set various things (more info below)
   * Added Item collection page to track which items the player has picked up for Dead God achievement.
      * Contains the same header and footer from the Achievement page
   * Added Settings button (2 settings)
      * Enable Dark Mode - Allows the user to toggle between light and dark mode
      * Hide Completed - Allows the user to show or hide completed achievements/items
      * These settings are stored in settings.ini
   * Added a Folder Browser Dialog in case the save file directory is not located in Program Files and prompts the user to select a folder
      * This setting is also stored in settings.ini
   * Added a Statistics button, where it shows various stats and progression (the game uses these to track the achievements)
      * Many stats in this page are tracked by a 32-bit number
      * Super Tinted Rock progress tracks which characters you have beaten without losing
      * Many progress trackers like Basement bosses killed track which bosses you have beaten, and which you are still missing
* 0.2
    * Added Tinted Rock counter
    * Now supports Powershell v7
* 0.1
    * Initial Release

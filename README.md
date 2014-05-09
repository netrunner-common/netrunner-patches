netrunner-patches
=================

This repo is intended to put in all the patch files (diffs) to upstream packages that are specific for netrunner.

Currently it includes: 
 * kdelibs:
   - fix for desktop scripting the configuration of QML/JS Plasma applets (backport from KDE 4.11.3+, 73b1f3d2_fix_panel_location_scripting.diff)

 * kde-workspace (4.11.2):
   - panel size patch to set default panel to 33px height (netrunner_panel_size)
   - aurorae patch to not allow maximized windows to be resized (netrunner_always_use_positioncenter_for_maximized_windows.diff)
   - kwin effects patch to not create pixmap for deleted windows (netrunner_do_not_create_pixmap_for_deleted_windows.diff)
   - kwin effects patch to prevent clipping of windows in cube (netrunner_ensure_to_not_clip_windows_when_painting_the_cube.diff)
   - fix for scripting panel locations, makes scripting geometry for vertical panels work (backport from KDE 4.11.4+, 73b1f3d2_fix_panel_location_scripting.diff)
   - hidden visibility mode for panels (hidden_panel_mode.diff)
   - kwin fix for nouveau driver
   
 * veromix:
   - label overlay patch for not overlaying text (veromix-plasmoid-fix-label-overlayed-by-slider.diff)
   - fix for repositioning and use a nice configure icon for soundcard and stream submenu (veromix-plasmoid-fix-configure-icon-for-soundcard-configuration.diff)
   
 * transmission:
   - build with qt4 instead of qt5 (netrunner-build-against-qt4.diff)
   
 * ubiquity:
   - fixes for ubiquity strings (Kubuntu -> Netrunner) and minimum file size + not configure apt and don't show third party codec installation

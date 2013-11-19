netrunner-patches
=================

This repo is intended to put in all the patch files (diffs) to upstream packages that are specific for netrunner.

Currently it includes: 
 * kde-workspace:
   - panel size patch to set default panel to 33px height (netrunner_panel_size)
   - aurorae patch to not allow maximized windows to be resized (netrunner_always_use_positioncenter_for_maximized_windows.diff)
   - kwin effects patch to not create pixmap for deleted windows (netrunner_do_not_create_pixmap_for_deleted_windows.diff)
   - kwin effects patch to prevent clipping of windows in cube (netrunner_ensure_to_not_clip_windows_when_painting_the_cube.diff)
   
 * veromix:
   - label overlay patch for not overlaying text (veromix-plasmoid-fix-label-overlayed-by-slider.diff)
   - fix for repositioning and use a nice configure icon for soundcard and stream submenu (veromix-plasmoid-fix-configure-icon-for-soundcard-configuration.diff)
   
 * transmission:
   - build with qt4 instead of qt5 (netrunner-build-against-qt4.diff)

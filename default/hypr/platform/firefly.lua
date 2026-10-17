-- Firefly ITX-3588J (Rockchip RK3588) defaults.
--
-- The ARM Mali-G610 MP4 has ample GPU compute (~450 GFLOPS) to run Omarchy's
-- full aesthetic suite, animations, and high refresh rate Wayland compositing
-- on 1440p/4K displays.

hl.config({
  cursor = {
    no_hardware_cursors = false,
  },
})

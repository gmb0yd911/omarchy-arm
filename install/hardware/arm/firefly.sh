# Firefly ITX-3588J hardware tuning and quirks.
#
# The Firefly ITX-3588J runs an octa-core Rockchip RK3588 with an ARM Mali-G610
# MP4 GPU and 16-32 GB RAM. Mesa provides hardware-accelerated OpenGL and Vulkan
# through Panfrost/Panthor.

source "$OMARCHY_INSTALL/arm/platform.sh"

omarchy-hw-firefly || return 0

state_dir="${OMARCHY_STATE_DIR:-/var/lib/omarchy}"
mkdir -p "$state_dir"
omarchy-hw-platform >"$state_dir/platform"

# Ensure Mali CSF firmware directory exists and has correct permissions
if [[ -d /lib/firmware/arm/mali ]]; then
  chmod -R u=rwX,go=rX /lib/firmware/arm/mali || true
fi

# Unit Conversion ----

# Reminder
  # 1 pt = 1/72 inch (physical size)
  # 1 px = 1/96 inch at 96 ppi (non-physical size)
  # 1 px = 0.75 pt at 96 ppi (default)
  # 1 px = 1 pt at 72 ppi

# pixels <-> inches
px2in <- function(px, ppi = 96) { px / ppi }
in2px <- function(i, ppi = 96) { i * ppi }

# pixels <-> points
px2pt <- function(px, ppi = 96) { px * (72 / ppi) }
pt2px <- function(pt, ppi = 96) { round(pt / (72 / ppi)) }

# pixels <-> millimeters
px2mm <- function(px, ppi = 96) { px / ppi * 25.4 }
mm2px <- function(mm, ppi = 96) { mm / 25.4 * ppi }

# points <-> inches
pt2in <- function(pt) { pt * (1 / 72) }
in2pt <- function(i) { i * 72 }

# points <-> millimeters
pt2mm <- function(pt) { pt * (1 / 72) * 25.4 }
mm2pt <- function(mm) { (mm / 25.4) * 72 }

# inches <-> millimeters
in2mm <- function(i) { i * 25.4 }
mm2in <- function(mm) { mm / 25.4 }

# Color Manipulation ----

# lengthen/shorten color palette (vector)
pal_length <- function(colors, n){
  ramp <- colorRamp(colors)
  hex <- character()
  for(t in seq(0, 1, length.out = n)) {
    hex <- c(hex, tolower(rgb(ramp(t), maxColorValue = 255)))
  }
  hex
}

# Palettes ----
pal_spectrum <- c(
  "#5f4690",
  "#1d6996",
  "#38a6a5",
  "#0f8554",
  "#73af48",
  "#edad08",
  "#e17c05",
  "#cc503e",
  "#94346e",
  "#6f4070"
)
/* dmenu configuration */
/* Arch Linux dotfiles setup */

/* appearance */
static const unsigned int alpha = 0xdd;
static const unsigned int border_width = 2;
static const unsigned int border_color = 0x5E81AC;
static const unsigned int color_fg = 0xECEFF4;
static const unsigned int color_bg = 0x2E3440;
static const unsigned int color_sel = 0x81A1C1;
static const unsigned int color_sel_bg = 0x3B4252;

/* fonts */
static const char *fonts[] = {
    "JetBrains Mono:size=12:antialias=true:autohint=true",
    "Noto Color Emoji:size=12"
};

/* prompt */
static const char *prompt = "run: ";

/* colors */
static const char *colors[SchemeLast][2] = {
    /*     fg         bg       */
    [SchemeNorm] = { "#ECEFF4", "#2E3440" },
    [SchemeSel]  = { "#ECEFF4", "#3B4252" },
    [SchemeOut]  = { "#000000", "#00ffff" },
};

/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines = 0;

/* -h option; minimum height of a menu line */
static unsigned int lineheight = 0;
static unsigned int min_lineheight = 8;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";

/* Size of the window border */
static const unsigned int border_width = 2;

# Arôloram, Underworld

> Once a dwarf reaches the riches of deep darkness, they never want to
> surface again.

This is a very dark color scheme. All craftsdwarfship is of the highest
quality. It is composed of 16 colors based in the golden ratio, whose 8 are
grayscale and other 8 are *colorful* ones.

## Philosophy

- The dark is cozy, and therefore, must be the lair of the eyes.
  - The background colors are the darkest possible.
- The colors must be distributed evenly across the spectrum.
  - The HUE variation of a color and its neighbor is always 45°.
  - A side effect of this is that every color has its complement.
- The colors must not strike the eyes.
  - All foreground colors have the same lightness.
- Similar colors must mean similar things.
  - Recognition of visual elements becomes easier.

## Customizations

Is possible to enable highlight customizations for certain file types. This
fix default highlight links for certain file types to make they fit better with
the proposals of this color scheme. The following table shows all available
customizations.

| Variable                        | Customization                           |
|---------------------------------|-----------------------------------------|
| `g:underworld_custom_global`    | Enable/disable customizations globally. |
| `g:underworld_custom_coc`       | Customizations for CoC plugin.          |
| `g:underworld_custom_diff`      | Customizations for diff files.          |
| `g:underworld_custom_fasm`      | Customizations for fasm assembly files. |
| `g:underworld_custom_gitgutter` | Customizations for GitGutter plugin.    |
| `g:underworld_custom_html`      | Customizations for HTML files.          |
| `g:underworld_custom_nerdtree`  | Customizations for NERDTree plugin.     |
| `g:underworld_custom_vim`       | Customizations for Vim scripts.         |

By default, all customizations are enabled. To enable a customization, set its
variable value to 1. If other value was set instead, that customization will be
disabled. To disable customizations for HTML files, for example, put the
following line in your `.vimrc` file.

```vim
let g:underworld_custom_html = 0
```

To disable customizations globally, put the following line in your
`.vimrc` file.

```vim
let g:underworld_custom_global = 0
```

## Color Table

| #  | Name             | HTML    | RGB           |
|----|------------------|---------|---------------|
| 0  | Black            | #000000 | 000, 000, 000 |
| 1  | Black            | #080808 | 008, 008, 008 |
| 2  | Black            | #121212 | 018, 018, 018 |
| 3  | Nero             | #1a1a1a | 026, 026, 026 |
| 4  | Nero             | #252525 | 037, 037, 037 |
| 5  | Eclipse          | #383838 | 056, 056, 056 |
| 6  | Mortar           | #5a5a5a | 090, 090, 090 |
| 7  | Suva Grey        | #959595 | 149, 149, 149 |
| 8  | Barley Corn      | #b58e6c | 181, 142, 108 |
| 9  | Chelsea Cocumber | #8d9c55 | 141, 156, 085 |
| 10 | Fruit Salad      | #5ea55b | 094, 165, 091 |
| 11 | Cadet Blue       | #58a38d | 088, 163, 141 |
| 12 | Shakespeare      | #729abc | 114, 154, 188 |
| 13 | Portage          | #9a8ad7 | 154, 138, 215 |
| 14 | Lilac Bush       | #c47bc7 | 196, 123, 199 |
| 15 | Puce             | #cb7f95 | 203, 127, 149 |

## Issues

This may be not a good choice if you frequently switch from bright screen to
the editor using this color scheme. This color scheme will better fit if you
already has a dark environment.

## Resource Links

- [Aseprite][aseprite]: Tool used to create the palettes.
- [Color Name & Hue][color-name-hue]: Tool used to obtain the color names.
- [Colorizer][colorizer]: Tool used to obtain and adjust the colors.
- [Golden Ratio Calculator][golden-ratio-calculator]: Tool used to obtain
  values in the golden ratio.

[aseprite]: https://www.aseprite.org/ 'Aseprite'
[color-name-hue]: https://www.color-blindness.com/color-name-hue 'Color Name & Hue'
[colorizer]: http://colorizer.org/ 'Colorizer'
[golden-ratio-calculator]: https://www.omnicalculator.com/math/golden-ratio 'Golden Ratio Calculator'

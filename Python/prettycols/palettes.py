from colour import Color
from matplotlib.colors import LinearSegmentedColormap, to_hex

PRETTYCOLS_PALETTES = dict(
    Blues=dict(colors=("#436f85", "#4c7d96", "#548ba7", "#6497b1", "#75a2ba", "#86aec2", "#97b9cb"), order=(1, 2, 3, 4, 5, 6, 7), colorblind=True),
    Purples=dict(colors=("#432263", "#502876", "#5d2f89", "#6a359c", "#773baf", "#8444c0", "#9057c6"), order=(1, 2, 3, 4, 5, 6, 7), colorblind=True),
    Tangerines=dict(colors=("#de7a00", "#F28500", "#FF9B21", "#FFB04F", "#FFC47D", "#ffd6a3", "#ffe1bd"), order=(1, 2, 3, 4, 5, 6, 7), colorblind=True),
    Greens=dict(colors=("#416322", "#4e7628", "#5a892f", "#679c35", "#74af3b", "#80c044", "#8dc657"), order=(1, 2, 3, 4, 5, 6, 7), colorblind=True),
    Pinks=dict(colors=("#860a4d", "#9e0c5b", "#b50e68", "#cd1076", "#e51284", "#ee2290", "#f03a9c"), order=(1, 2, 3, 4, 5, 6, 7), colorblind=True),
    Teals=dict(colors=("#004c4c", "#006666", "#008080", "#329999", "#66b2b2", "#99cccc", "#cce5e5"), order=(1, 2, 3, 4, 5, 6, 7), colorblind=True),
    Yellows=dict(colors=("#e6b400", "#E6C700", "#e8d119", "#ebd632", "#f0e066", "#f2e57f", "#f7efb2"), order=(1, 2, 3, 4, 5, 6, 7), colorblind=True),
    Reds=dict(colors=("#B53737", "#BE5151", "#C76B6B", "#D08585", "#D99F9F", "#E3B9B9", "#ECD3D3"), order=(1, 2, 3, 4, 5, 6, 7), colorblind=True),
    PurpleGreens=dict(colors=("#420f75", "#7640a9", "#ad72d6", "#e7a8fb", "#f5f5f5", "#99ce64", "#659a32", "#326812", "#033800"), order=(1, 2, 3, 4, 5, 6, 7, 8, 9), colorblind=True),
    PinkGreens=dict(colors=("#7f0038", "#c31e6e", "#ef5faf", "#fcaade", "#f5f5f5", "#99ce64", "#659a32", "#326812", "#033800"), order=(1, 2, 3, 4, 5, 6, 7, 8, 9), colorblind=True),
    TangerineBlues=dict(colors=("#552000", "#8a4d00", "#c17d17", "#f8b150", "#f5f5f5", "#93c6e1", "#5f93ac", "#2e627a", "#00344a"), order=(1, 2, 3, 4, 5, 6, 7, 8, 9), colorblind=True),
    PurpleTangerines=dict(colors=("#420f75", "#7640a9", "#ad72d6", "#e7a8fb", "#f5f5f5", "#f8b150", "#c17d17", "#8a4d00", "#552000"), order=(1, 2, 3, 4, 5, 6, 7, 8, 9), colorblind=True),
    PurplePinks=dict(colors=("#420f75", "#7640a9", "#ad72d6", "#e7a8fb", "#f5f5f5", "#fcaade", "#ef5faf", "#c31e6e", "#7f0038"), order=(1, 2, 3, 4, 5, 6, 7, 8, 9), colorblind=False),
    TealGreens=dict(colors=("#00393a", "#0a6969", "#2d9c9c", "#6dcfcf", "#f5f5f5", "#99ce64", "#659a32", "#326812", "#033800"), order=(1, 2, 3, 4, 5, 6, 7, 8, 9), colorblind=False),
    PurpleYellows=dict(colors=("#420f75", "#7640a9", "#ad72d6", "#e7a8fb", "#f5f5f5", "#F2E8C4", "#EED682", "#EAC541", "#E6B400"), order=(1, 2, 3, 4, 5, 6, 7, 8, 9), colorblind=True),
    RedBlues=dict(colors=("#B53737", "#C66969", "#D79C9C", "#E8CFCF", "#f5f5f5", "#93c6e1", "#5f93ac", "#2e627a", "#00344a"), order=(1, 2, 3, 4, 5, 6, 7, 8, 9), colorblind=True),
    Bold=dict(colors=("#6497b1", "#6a359c", "#FFB04F", "#679c35", "#cd1076"), order=(1, 2, 3, 4, 5), colorblind=False),
    Dark=dict(colors=("#436f85", "#432263", "#de7a00", "#416322", "#860a4d"), order=(1, 2, 3, 4, 5), colorblind=False),
    Light=dict(colors=("#97b9cb", "#9057c6", "#ffe1bd", "#8dc657", "#f03a9c"), order=(1, 2, 3, 4, 5), colorblind=False),
    Neon=dict(colors=("#ff9062", "#fd6598", "#cb64c0", "#3294dd", "#75fb8a", "#d0eb60"), order=(1, 2, 3, 4, 5, 6), colorblind=False),
    Summer=dict(colors=("#398db2", "#d8b31e", "#2c350b", "#829625", "#867112", "#5d761e", "#6293a7", "#3e5a5e", "#ac5c05", "#ffa300", "#A47DB9", "#EC94CA"), order=(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12), colorblind=False),
    Autumn=dict(colors=("#774762", "#ba6e1d", "#d6bb3b", "#755028", "#f2dd78", "#205f4b", "#913914", "#585854", "#f0a430", "#768048", "#800000", "#1b3a54"), order=(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12), colorblind=False),
    Winter=dict(colors=("#446c84", "#c0cbdc", "#746e6f", "#c6dcf0", "#596d80", "#B9BFFF", "#a0c4e1", "#897340", "#e1e3e7", "#313c45", "#9ba7b2", "#CAE9F5"), order=(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12), colorblind=False),
    Rainbow=dict(colors=("#e51e32", "#ff782a", "#fda805", "#e2cf04", "#b1ca05", "#98c217", "#779815", "#029e77", "#09989c", "#059ccd", "#3f64ce", "#7e2b8e"), order=(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12), colorblind=False),
    Beach=dict(colors=("#0e7c7b", "#17bebb", "#d4f4dd", "#d62246", "#4b1d3f"), order=(1, 2, 3, 4, 5), colorblind=False),
    Fun=dict(colors=("#134074", "#bfab25", "#4ea699", "#efb0a1", "#df2935"), order=(1, 2, 3, 4, 5), colorblind=True),
    Sea=dict(colors=("#86CB92", "#71B48D", "#404E7C", "#3a3559", "#260F26"), order=(1, 2, 3, 4, 5), colorblind=True),
    Bright=dict(colors=("#462255", "#FF8811", "#9DD9D2", "#046E8F", "#D44D5C"), order=(1, 2, 3, 4, 5), colorblind=False),
    Relax=dict(colors=("#4B3F72", "#CBB3BF", "#FFC857", "#119DA4", "#19647E"), order=(1, 2, 3, 4, 5), colorblind=False),
    Lucent=dict(colors=("#E01A4F", "#F15946", "#F9C22E", "#53B3CB", "#7DCFB6"), order=(1, 2, 3, 4, 5), colorblind=False),
    Lively=dict(colors=("#413C58", "#D1495B", "#EDAE49", "#00798C", "#003D5B"), order=(1, 2, 3, 4, 5), colorblind=False),
    Joyful=dict(colors=("#80A1C1", "#C94277", "#EEE3AB", "#274C77", "#5E8C61"), order=(1, 2, 3, 4, 5), colorblind=False)
  )

def pretty_cols(name, n=None, palette_type="discrete"):

    palette = PRETTYCOLS_PALETTES.get(name)

    if not palette_type or type(name) in (int, float):
        raise Exception(f"Palette {name} does not exist.")

    if not n:
        n = len(palette["colors"])
        print(f"Palette '{name}' has '{n}' discrete colors")


    if palette_type not in {"discrete", "continuous"}:
        palette_type = "discrete"

    if palette_type == "discrete" and n > len(palette["colors"]):
        print(f"Number of requested colors ('{n}') greater than number of colors '{name}' can offer. \n Setting brew_type to 'continuous' instead.")
        palette_type = "continuous"

    out = list()
    if palette_type == "continuous":

        colors = [Color(c).rgb for c in palette["colors"]]
        color_map = LinearSegmentedColormap.from_list(name, colors, N=n)
        for i in range(n):
            out.append(to_hex(color_map(i)))

    elif palette_type == "discrete":

        rounds = n // len(palette["colors"])
        delta = n % len(palette["colors"])
        for _ in range(rounds):
            for i in range(len(palette["colors"])):
                idx = palette["order"][i] - 1
                color = palette["colors"][idx]
                out.append(color)

        for i in range(delta):
            idx = palette["order"][i] - 1
            color = palette["colors"][idx]
            out.append(color)

    return out

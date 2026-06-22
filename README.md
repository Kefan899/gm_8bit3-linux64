# gm_8bit3 linux 64bit patch

Voice processing and manipulation module for Garry's Mod.

gm_8bit3-linux64 is a fork and expansion of the original gm_8bit3 project, designed for real-time voice stream processing on Garry's Mod servers.

---

## Features

- Intercept and modify live player voice streams.
- Decompress and recompress Steam voice packets.
- Apply audio effects to player voice.
- Relay voice packets to external applications.
- Record voice streams.
- Create custom radio, dispatch, and AI voice systems.
- Compatible with modern Garry's Mod versions.

## Voice Effects

| Effect | Description |
|----------|-------------|
| EFF_NONE | No processing |
| EFF_DESAMPLE | Radio-style degraded communications |
| EFF_BITCRUSH | Heavy digital degradation |
| EFF_COMB | Metallic Combine-style voice |
| EFF_DARTHVADER | Deep, rumbling voice |
| EFF_RADIO | Walkie-talkie effect |
| EFF_ROBOT | Synthetic robotic voice |
| EFF_ALIEN | High-pitched extraterrestrial voice |
| EFF_OVERDRIVE | Saturated amplifier effect |
| EFF_DISTORTION | Heavy clipping distortion |
| EFF_TELEPHONE | Telephone quality audio |
| EFF_MEGAPHONE | Public-address speaker effect |
| EFF_CHIPMUNK | High-pitched voice |
| EFF_SLOWMOTION | Deep slowed-down voice |
| EFF_COMBO | Civil Protection / Metrocop effect |

---

## Example

Apply a Metrocop effect:

```lua
eightbit.EnableEffect(userid, eightbit.EFF_COMBO)
```

Apply a radio effect:

```lua
eightbit.EnableEffect(userid, eightbit.EFF_RADIO)
```

Disable effects:

```lua
eightbit.EnableEffect(userid, eightbit.EFF_NONE)
```

---

## API

### Broadcasting

```lua
eightbit.EnableBroadcast(true)
eightbit.SetBroadcastIP("127.0.0.1")
eightbit.SetBroadcastPort(4000)
```

### Voice Effects

```lua
eightbit.EnableEffect(userid, eightbit.EFF_COMBO)
```

### Audio Settings

```lua
eightbit.SetGainFactor(1.0)
eightbit.SetCrushFactor(8)
eightbit.SetDesampleRate(2)
```

---

## Credits

Forked from:

- https://github.com/fandax76/gm_8bit3
- https://github.com/Devinsideer/gm_8bit2

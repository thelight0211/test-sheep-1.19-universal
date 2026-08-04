---
name: hoi4-wiki
description: HOI4 modding wiki completa — fonte di riferimento per sintassi, trigger, effects, defines, AI modding, e ogni altro aspetto del modding di Hearts of Iron IV. Usare quando serve conoscere token specifici, strutture di file, argomenti di workbench, o comportamento del motore. Contiene la documentazione ufficiale su: achievements, AI strategies/focuses/plans, balance of power, buildings, characters, console commands, cosmetic tags, country modding, data types (variables/arrays/flags), decisions, defines (NAI/NMilitary/NAir/NNavy/…), doctrines, effects, MIO, modding basics, modifiers, music, names, national focuses, on-actions, portraits, resources, scripted GUI, scripted triggers, sound, states, technologies, triggers, troubleshooting, unit modding.
---

# HOI4 Modding Wiki — Riferimento Completo

Il contenuto completo si trova in `wiki.md` nella stessa cartella di questa skill.
È una wiki merged di ~24000 righe. Usare `rg` o lettura per sezioni per trovare la parte rilevante.

## Come usare questa wiki

1. **Cercare con ripgrep** la sezione rilevante:
   ```
   rg -n "nome_token\|argomento" .agents/skills/hoi4-wiki/wiki.md | head -30
   ```
2. **Leggere la sezione** identificata con `start_line`/`end_line`.
3. Per sezioni grandi (es. Defines, Triggers, Effects) leggere a blocchi da ~200 righe.

## Indice delle sezioni principali

| Argomento | Parola chiave da cercare |
|---|---|
| Custom achievements | `custom_achievement`, `custom_ribbon` |
| AI focuses (tipi e pesi) | `AI focuses`, `ai_focus_` |
| AI modding (MTTH, strategies, areas, peace, plans, templates, equipment) | `MTTH blocks`, `ai_strategy`, `AI areas`, `AI peace`, `AI strategy plans`, `AI templates`, `AI equipment` |
| Balance of power | `balance of power`, `set_power_balance` |
| Bookmarks | `Bookmarks`, `bookmark =` |
| Buildings | `Buildings`, `building_slots` |
| Characters (leader, general, advisor, operative) | `Characters`, `country_leader`, `corps_commander`, `navy_leader`, `advisor =` |
| Console commands | `List of commands`, `tdebug`, `tag ` |
| Cosmetic tags | `Cosmetic tags`, `set_cosmetic_tag` |
| Country modding (tag, file, history, flags, OOB) | `Country tags`, `country file`, `Order of battle` |
| Data types (costanti, flags, event targets, variabili, array, game variables) | `Constants`, `Event targets`, `Variables`, `Arrays`, `Game variables` |
| Decision modding | `Decision modding`, `arguments for decisions`, `missions`, `targeted decisions` |
| Defines (tutte le namespace: NAI, NMilitary, NAir, NNavy, NDiplomacy, NCountry, ecc.) | `NDefines`, `NAI`, `NMilitary`, `NAir`, `NNavy`, `NDiplomacy`, `NCountry` |
| Doctrine modding | `Doctrine modding`, `grand_doctrine`, `subdoctrine` |
| Effects (land units, equipment, air wings, navies) | `Effects - Hearts`, `Land units`, `Equipment production` |
| MIO modding | `MIO`, `Designing an MIO`, `mio_trait` |
| Modding basics (struttura mod, text editor, concetti universali) | `Modding`, `Mod structure`, `Universal modding concepts` |
| Modifier tokens | `List of modifiers`, `Modifier tokens`, `Dynamic modifiers`, `Static modifiers` |
| Music / radio stations | `Song definition`, `radio station`, `music_station` |
| Names (divisioni, navi, operative) | `Divisions Names`, `Naval Names`, `Operative codenames` |
| National focus modding | `Focus tree`, `National focuses`, `Continuous focuses`, `ai_will_do` |
| On-actions | `on_actions`, `on_startup`, `on_monthly`, `on_capitulation` |
| Particles / luci | `Adding a Particle`, `Adding a Light` |
| Portraits | `Portraits`, `large_portrait` |
| Post-effects / volumi | `Posteffect Values`, `Volumes` |
| Resources | `Resources`, `resource =` |
| Scripted GUI | `scripted_gui`, `Window assignment`, `Dynamic Lists` |
| Scripted triggers | `Scripted triggers`, `scripted_trigger` |
| Scripted localisation | `Scripted Localization`, `defined_text` |
| Sound | `Sound`, `Sound Effect`, `Falloff`, `Categories` |
| State modding | `State modding`, `state_category`, `buildings`, `victory_points` |
| Technology modding | `Technologies`, `tech folder`, `Technology sharing groups` |
| Triggers (tutti gli scope: any, country, state, character, division, MIO, combat, meta) | `Triggers - Hearts`, `Country scope`, `State scope`, `Character scope` |
| Troubleshooting (crash, log files, common causes) | `Troubleshooting`, `Crash data log`, `Common crash causes` |
| Unit modding | `Unit Categories`, `Units`, `Stats`, `Modifiers` |

## Sezioni critiche per il modding quotidiano

- **Defines §NAI** (riga ~7455–8284): tutti i parametri AI (invasioni, combattimento, produzione, ricerca…)
- **Triggers §Country scope** (riga ~10865–11365): tutti i trigger a scope paese
- **Effects §Country scope** (riga ~11365+): tutti gli effect a scope paese  
- **Modifier tokens** (riga ~17749–18534): lista completa dei modificatori applicabili
- **National focus modding** (riga ~18877–19465): sintassi focus, prerequisiti, ai_will_do
- **On-actions** (riga ~19479–19720): lista completa degli hook on_action

## Note d'uso

- Le sezioni sono separate da `---` nel file.
- I link interni `(<File.md#anchor>)` sono residui della wiki originale — ignorarli.
- Per token non trovati qui, usare **hoi4-build-api** §5 (validate endpoint) come gate finale.

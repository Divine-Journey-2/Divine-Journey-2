
import erebus.ModBiomes

// erebus picks what biome to generate from a list as a "temp hack for now"
// where the biome appears multiple times to control how frequently it appears.

// https://github.com/vadis365/TheErebus/blob/mc1.12/src/main/java/erebus/ModBiomes.java

// double the weight of the Ulterior Outback from 15 -> 30 to make the boss generate more frequently
ModBiomes.BIOME_LIST.addAll([biome('erebus:ulterior_outback')] * 15)


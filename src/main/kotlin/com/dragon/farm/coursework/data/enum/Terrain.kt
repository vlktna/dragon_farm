package com.dragon.farm.coursework.data.enum

import com.fasterxml.jackson.annotation.JsonProperty

enum class Terrain(val typeName: String) {
    @JsonProperty("volcanoes") VOLCANOES("volcanoes"),
    @JsonProperty("cave") CAVE("cave"),
    @JsonProperty("swamp") SWAMP("swamp"),
    @JsonProperty("snow_ravaged_mountains") SNOW_RAVAGED_MOUNTAINS("snow_ravaged_mountains"),
    @JsonProperty("dragon_graveyards") DRAGON_GRAVEYARDS("dragon_graveyards"),
    @JsonProperty("mountain") MOUNTAIN("mountain"),
    @JsonProperty("grassy_plain") GRASSY_PLAIN("grassy_plain"),
    @JsonProperty("beach") BEACH("beach"),
    @JsonProperty("forest") FOREST("forest")
}
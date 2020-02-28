String getWeatherIcon(String weatherType){
  if(weatherType.toLowerCase().contains("clear")){
    return "lib/assets/sun.png";
  }else if(weatherType.toLowerCase().contains("dark")){
    return "lib/assets/moon.png";
  }else if(weatherType.toLowerCase().contains("rain")) {
    return "lib/assets/rain.png";
  }else if(weatherType.toLowerCase().contains("thunder")) {
    return "lib/assets/thunder_lightning.png";
  }else if(weatherType.toLowerCase().contains("lightning")) {
    return "lib/assets/thunder_lightning.png";
  }else{
    return "lib/assets/cloud.png";
  }
}
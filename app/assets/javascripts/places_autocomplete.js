function getAllPlaces(availablePlaces) {
  $( "#place" ).autocomplete({
    source: availablePlaces
  });
};
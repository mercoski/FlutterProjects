int weight_height_func(int heightWeight, bool addRemove) {
  if (addRemove) {
    heightWeight++;
  } else {
    heightWeight--;
  }
  return heightWeight;
}

int weight_height_func(int height_weight, bool add_remove) {
  if (add_remove) {
    height_weight++;
  } else {
    height_weight--;
  }
  return height_weight;
}

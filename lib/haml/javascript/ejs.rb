module Javascript
  class Ejs < DelimiterBase
    self.open_interpolate  = "<%="
    self.close_interpolate = "%>"
    self.open_evaluate     = "<%"
    self.close_evaluate    = "%>"
    self.iterate           = "$.each"
    self.enabled           = true
  end
end

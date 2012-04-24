module Javascript
  class Handlebars < DelimiterBase
    self.open_interpolate  = "{{"
    self.close_interpolate = "}}"
    self.open_evaluate     = "{{"
    self.close_evaluate    = "}}"
    self.iterate           = "#each"
    self.iterate_close     = "/each"
    self.enabled           = true
  end
end

terraform {
  cloud {
    organization = "polinajastrzebska"

    workspaces {
      name = "service-catalog-test"
    }
  }
}
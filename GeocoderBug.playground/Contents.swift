//: A MapKit based Playground

import MapKit
import PlaygroundSupport
import Contacts

PlaygroundPage.current.needsIndefiniteExecution = true

let geocoder = CLGeocoder()

var postalAddress: CNPostalAddress {
    let address = CNMutablePostalAddress()
    address.city = "Bad Friedrichshall"
    address.street = "Erich-Kästner-Weg 6"
    address.postalCode = "74177"
    address.isoCountryCode = "DE"
    
    return address
}

geocoder.geocodePostalAddress(postalAddress){ (placemarks, error) -> Void in
    print(placemarks?.first ?? "ERROR")
    //Tis is the wrong adress....
    print(placemarks?.first?.postalAddress == postalAddress)
}


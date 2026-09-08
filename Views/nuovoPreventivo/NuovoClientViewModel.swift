//
//  NuovoClientViewModel.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 21/07/2026.
//
import Foundation
final class NuovoClientViewModel {

    func validate(client: Client) -> String? {

        if client.fullName.trimmingCharacters(in: .whitespaces).isEmpty {
            return "Inserisci il nome completo"
        }

        if !client.email.isEmpty &&
            !isValidEmail(client.email) {
            return "Email non valida"
        }

        if !client.phone.isEmpty &&
            client.phone.count < 8 {
            return "Numero di telefono non valido"
        }

        return nil
    }

    private func isValidEmail(_ email: String) -> Bool {

        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"

        return NSPredicate(format: "SELF MATCHES %@", regex)
            .evaluate(with: email)
    }
}

//
//  ClientService.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 21/07/2026.
//
protocol ClientService {

    func saveClient(
        _ client: Client,
        completion: @escaping(Result<Void,Error>) -> Void
    )
}
final class MockClientService: ClientService {

    func saveClient(
        _ client: Client,
        completion: @escaping(Result<Void,Error>) -> Void
    ) {

        print(client)

        completion(.success(()))
    }
}


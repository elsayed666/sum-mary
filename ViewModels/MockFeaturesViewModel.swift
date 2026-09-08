//
//  MockFeatures.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 23/07/2026.
//
import UIKit

final class MockFeatures {

    static func data() -> [FeatureOption] {

        return [
            FeatureOption(
                icon: "person.crop.circle.badge.plus",
                iconColor: .systemBlue,
                title: "Login & Registration",
                description: "Email, Google e Apple",
                price: 300,
                days: 2
            ),
            FeatureOption(
                icon: "creditcard",
                iconColor: .systemGreen,
                title: "Payment Gateway",
                description: "Stripe / PayPal",
                price: 800,
                days: 4
            ),
            FeatureOption(
                icon: "bell.badge",
                iconColor: .systemOrange,
                title: "Push Notification",
                description: "Firebase Notification",
                price: 250,
                days: 2
            ),
            FeatureOption(
                icon: "map",
                iconColor: .systemRed,
                title: "Maps",
                description: "Google Maps",
                price: 400,
                days: 3
            ),
            FeatureOption(
                icon: "message",
                iconColor: .systemPurple,
                title: "Chat",
                description: "Realtime Chat",
                price: 1000,
                days: 5
            ),
            FeatureOption(
                icon: "brain.head.profile",
                iconColor: .systemPurple,
                title: "AI Assistant",
                description: "Chatbot intelligente, suggerimenti automatici e automazione dei processi.",
                price: 2500,
                days: 10
            ),
            FeatureOption(
                icon: "chart.line.uptrend.xyaxis",
                iconColor: .systemBlue,
                title: "Analytics Dashboard",
                description: "Dashboard con grafici, KPI e statistiche in tempo reale.",
                price: 1800,
                days: 7
            ),

            FeatureOption(
                icon: "magnifyingglass.circle",
                iconColor: .systemGreen,
                title: "Data Analysis",
                description: "Analisi avanzata dei dati con report personalizzati.",
                price: 2200,
                days: 8
            ),

            FeatureOption(
                icon: "message.badge.waveform",
                iconColor: .systemIndigo,
                title: "AI Chatbot",
                description: "Assistente virtuale con risposte automatiche basate sull'AI.",
                price: 3000,
                days: 12
            ),

            FeatureOption(
                icon: "camera.viewfinder",
                iconColor: .systemOrange,
                title: "AI Image Recognition",
                description: "Riconoscimento immagini tramite Intelligenza Artificiale.",
                price: 3500,
                days: 14
            ),

            FeatureOption(
                icon: "waveform.path.ecg",
                iconColor: .systemRed,
                title: "Predictive Analytics",
                description: "Previsioni e analisi dei dati con modelli di Machine Learning.",
                price: 4000,
                days: 16
            ),

            FeatureOption(
                icon: "cpu",
                iconColor: .systemTeal,
                title: "Machine Learning",
                description: "Integrazione di modelli personalizzati di Machine Learning.",
                price: 5000,
                days: 20
            ),

            FeatureOption(
                icon: "sparkles",
                iconColor: .systemPink,
                title: "AI Content Generator",
                description: "Generazione automatica di testi, descrizioni e contenuti.",
                price: 2000,
                days: 8
            ),

            FeatureOption(
                icon: "chart.bar.doc.horizontal",
                iconColor: .systemBrown,
                title: "Business Intelligence",
                description: "Report avanzati e dashboard decisionali per il business.",
                price: 2800,
                days: 10
            ),

            FeatureOption(
                icon: "doc.text.magnifyingglass",
                iconColor: .systemCyan,
                title: "Smart Reports",
                description: "Report PDF ed Excel con analisi automatiche.",
                price: 1500,
                days: 5
            )
        ]
    }

}

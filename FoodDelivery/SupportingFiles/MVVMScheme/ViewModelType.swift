//
//  ViewModelType.swift
//  FoodDelivery
//
//  Created by Александр Николаев on 06.11.2024.
//

/// Протокол, под который подписывается модель.
protocol ViewModelType {

    /// Содержит данные, приходящие извне, например, с предыдущего экрана.
    associatedtype Inputs = Void

    /// Содержит данные и события, приходящие из контроллера, например, нажатия
    /// на кнопки.
    associatedtype Bindings = Void

    /// Содержит зависимости, например, сетевой слой, хранилище и т.д.
    associatedtype Dependencies = Void

    /// Тип роутера, если экран никуда не ведет далее — то пустой.
    associatedtype Routes: RouterType = EmptyRouter

    /// Здесь происходит трансформация всех входных данных, и возвращается
    /// модель.
    static func configure(
        input: Inputs,
        binding: Bindings,
        dependency: Dependencies,
        router: Routes
    ) -> Self
}

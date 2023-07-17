import Core
import Providers
import Swinject

public typealias DependencyContainer = Resolver

final class DependencyContainerAssembly: Assembly {
    func assemble(container: Container) {
        assembleSystemServices(container)
        assembleCustomServices(container)
        assembleNetwork(container)
    }

    private func assembleSystemServices(_ container: Container) {
//        container.register(UIApplication.self) { _ in
//            UIApplication.shared
//        }.inObjectScope(.container)
//        container.register(NotificationCenter.self) { _ in
//            NotificationCenter.default
//        }.inObjectScope(.container)
//        container.register(UNUserNotificationCenter.self) { _ in
//            UNUserNotificationCenter.current()
//        }.inObjectScope(.container)
//        container.register(FileManager.self) { _ in
//            FileManager.default
//        }.inObjectScope(.container)
//        container.register(CLLocationManager.self) { _ in
//            CLLocationManager()
//        }.inObjectScope(.transient)
//        container.register(Calendar.self) { _ in
//            Calendar.current
//        }
    }
    
    private func assembleNetwork(_ container: Container) {
    }

    private func assembleCustomServices(_ container: Container) {
//        container.register(AppLanguage.self) { _ in
//            AppLanguage.default
//        }.inObjectScope(.container)
//        container.register(UserDefaultsStorage.self) { resolver in
//            UserDefaultsStorage()
//        }.inObjectScope(.container)
    }
}

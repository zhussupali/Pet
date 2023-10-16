import Core
import Providers
import Swinject

final class DependencyContainerAssembly: Assembly {
    func assemble(container: Container) {
        assembleCustomServices(container)
        assembleNetwork(container)
    }
    
    private func assembleNetwork(_ container: Container) {
        container.register(AlamofireNetwork.self) { resolver in
            AlamofireNetwork(
                baseUrl: Environment.baseUrl
//                ,
//                auth: resolver.resolve(NetworkAuth.self)!,
//                headersStorage: resolver.resolve(NetworkHeadersStorable.self)!,
//                loggerLevel: Environment.isDebug ? .debug : .off,
//                isDebugMenuShakeEnabled: Environment.isDebugMenuEnabled == "ENABLED",
//                debugMenuIgnoredHosts: DebugMode.ignoredHosts
            )
        }
//        .initCompleted { resolver, rest in
//            rest.setAuthProvider(resolver.resolve(Provider.self)!)
//        }.inObjectScope(.container)
        container.register(Provider.self) { resolver in
            Provider(rest: resolver.resolve(AlamofireNetwork.self)!)
        }
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

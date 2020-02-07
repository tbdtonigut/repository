import RealmSwift

class DBManager {
  
  private var database: Realm?
  static let sharedInstance = DBManager()
  
  private init() {
    
    do {
      database = try Realm(configuration: Realm.Configuration())
    } catch let error as NSError {
      fatalError("Error opening realm: \(error)")
    }
  }
  
  //MARK: - ADD
  
  func addData(object: Object) {
    
    do {
      try database?.write {
        database?.add(object)
      }
    } catch {
      #if DEBUG
        print("Could not write to database: ", error)
      #endif
    }
  }
    
    func getDataTeam() -> Results<Equipo>? {
        return database?.objects(Equipo.self)
    }
  
  //MARK: - DELETE
  
  func deleteAllDatabase()  {
    try! database?.write {
      database?.deleteAll()
    }
  }
  
  func deleteFromDb(object: Object) {
    try! database?.write {
      database?.delete(object)
    }
  }
  
  //MARK: - TRANSACTIONS
  
  func beginWriteTransaction() {
    database?.beginWrite()
  }
  
  func commitWriteTransaction() {
    try? database?.commitWrite()
  }
}

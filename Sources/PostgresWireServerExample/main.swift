import PostgresWireServer
import Dispatch

class MyPreparedStatement: PreparedStatement {
	let sql: String

	init(sql: String) throws {
		self.sql = sql
	}

	public var willReturnRows: Bool {
		return true
	}

	public func fields(for parameters: [PQValue]) throws -> [PQField] {
		return [PQField(name: "foo", type: .text)]
	}
}

class MyResultSet: ResultSet {
	let rows = [["bar"]]
	var idx = 0

	func row() throws -> [PQValue] {
		assert(self.hasRow, "should not request next row when has no row")
		let v = rows[idx].map { PQValue.text($0) }
		idx += 1
		return v
	}

	var hasRow: Bool {
		return idx < self.rows.count
	}

	var error: String? {
		return nil
	}
}

class MyQueryServer: QueryServer<MyPreparedStatement> {
	override public func prepare(_ sql: String, connection: QueryClientConnection<MyPreparedStatement>) throws -> MyPreparedStatement {
		return try MyPreparedStatement(sql: sql)
	}

	public override func query(_ query: MyPreparedStatement, parameters: [PQValue], connection: QueryClientConnection<MyPreparedStatement>, callback: @escaping (ResultSet?) throws -> ()) throws {
		try callback(MyResultSet())
	}
}

let server = MyQueryServer(port: 6789)

server.run()

dispatchMain()

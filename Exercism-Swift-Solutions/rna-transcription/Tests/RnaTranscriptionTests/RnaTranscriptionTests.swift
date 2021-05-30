import XCTest
@testable import RnaTranscription

class RnaTranscriptionTests: XCTestCase {
    func testRnaComplementOfCytosineIsGuanine() {
        XCTAssertEqual("G", try Nucleotide(strand: "C").complementOfDNA())
    }

    func testRnaComplementOfGuanineIsCytosine() {
        XCTAssertEqual("C", try Nucleotide(strand: "G").complementOfDNA())
    }

    func testRnaComplementOfThymineIsAdenine() {
        XCTAssertEqual("A", try Nucleotide(strand: "T").complementOfDNA())
    }

    func testRnaComplementOfAdenineIsUracil() {
        XCTAssertEqual("U", try Nucleotide(strand: "A").complementOfDNA())
    }

    func testRnaComplement() {
        XCTAssertEqual("UGCACCAGAAUU", try Nucleotide(strand: "ACGTGGTCTTAA").complementOfDNA())
    }

    func testInvalidRnaComplementOfUracil() {
        XCTAssertThrowsError(try Nucleotide(strand: "U").complementOfDNA()) { (error) in
            if case let RnaTranscription.TranscriptionError.invalidNucleotide(message) = error {
                XCTAssertTrue(message == "U is not a valid Nucleotide")
            } else {
                XCTFail("Expected error not thrown")
            }
        }
    }

    func testInvalidRnaComplementOfXXX() {
        XCTAssertThrowsError(try Nucleotide(strand: "XXX").complementOfDNA()) { (error) in
            if case let RnaTranscription.TranscriptionError.invalidNucleotide(message) = error {
                XCTAssertTrue(message == "X is not a valid Nucleotide")
            } else {
                XCTFail("Expected error not thrown")
            }
        }
    }

    func testInvalidRnaComplementOfACGTXXXCTTAA() {
        XCTAssertThrowsError(try Nucleotide(strand: "ACGTXXXCTTAA").complementOfDNA()) { error in
            if case let RnaTranscription.TranscriptionError.invalidNucleotide(message) = error {
                XCTAssertTrue(message == "X is not a valid Nucleotide")
            } else {
                XCTFail("Expected error not thrown")
            }
        }
    }

    static var allTests: [(String, (RnaTranscriptionTests) -> () throws -> Void)] {
        return [
            ("testRnaComplementOfCytosineIsGuanine", testRnaComplementOfCytosineIsGuanine),
            ("testRnaComplementOfGuanineIsCytosine", testRnaComplementOfGuanineIsCytosine),
            ("testRnaComplementOfThymineIsAdenine", testRnaComplementOfThymineIsAdenine),
            ("testRnaComplementOfAdenineIsUracil", testRnaComplementOfAdenineIsUracil),
            ("testRnaComplement", testRnaComplement),
            ("testInvalidRnaComplementOfUracil", testInvalidRnaComplementOfUracil),
            ("testInvalidRnaComplementOfXXX", testInvalidRnaComplementOfXXX),
            ("testInvalidRnaComplementOfACGTXXXCTTAA", testInvalidRnaComplementOfACGTXXXCTTAA)
        ]
    }
}

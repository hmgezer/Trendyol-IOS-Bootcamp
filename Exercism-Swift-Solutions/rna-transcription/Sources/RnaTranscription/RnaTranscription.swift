//Solution goes in Sources
import Foundation

enum TranscriptionError: Error {
    case invalidNucleotide(String)
}

struct Nucleotide {
    let strand: String
    
    func complementOfDNA() throws -> String {
        var rna: String = ""
        for nucleotide in strand {
            switch nucleotide {
            case "G":
                rna.append("C")
            case "C":
                rna.append("G")
            case "T":
                rna.append("A")
            case "A":
                rna.append("U")
            default: throw TranscriptionError.invalidNucleotide("\(nucleotide) is not a valid Nucleotide")
            }
        }
        return rna
    }
}

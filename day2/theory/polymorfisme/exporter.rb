class GenericExporter
    def export
        raise NotImplementedError
    end
end

class PdfExporter < GenericExporter
    def export
        puts 'Export to .pdf format'
    end
end

class XlsExporter < GenericExporter
    def export
        puts 'Export to .xls format'
    end
end


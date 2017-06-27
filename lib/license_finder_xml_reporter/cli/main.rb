require 'license_finder'
require 'license_finder_xml_reporter/reports/xml_report.rb'

module LicenseFinder
  module CLI
    class Main
      FORMATS = Main::FORMATS.merge!({'xml' => LicenseFinderXmlReporter::XmlReport })
      class_option :format, desc: "The desired output format.", default: 'text', enum: FORMATS.keys
    end
  end
end

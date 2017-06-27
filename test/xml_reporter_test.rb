require "test_helper"

require 'license_finder_xml_reporter/reports/xml_report'

class XmlReporterTest < Minitest::Test

  def test_to_s
    dep = LicenseFinder::Package.new('gem_a', '1.0', {spec_licenses: %w[MIT GPL]})
    reporter = LicenseFinderXmlReporter::XmlReport.new([dep], columns: %w[name version])
    expected_template = '<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<licenseSummary>
  <dependencies>
            <dependency>
          <groupId>gem_a</groupId>
          <artifactId>gem_a</artifactId>
          <version>1.0</version>
          <licenses>
                          <license>
                <name>MIT</name>
                <url>http://opensource.org/licenses/mit-license</url>
              </license>
                          <license>
                <name>GPL</name>
                <url></url>
              </license>
                      </licenses>
        </dependency>
      </dependencies>
</licenseSummary>
'
    assert_equal expected_template, reporter.to_s
  end
end

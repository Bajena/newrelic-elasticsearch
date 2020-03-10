module NewRelic
  module Elasticsearch
    VERSION = File.read(
      File.expand_path(File.join(File.dirname(__FILE__), "../../../VERSION"))
    ).strip.freeze
  end
end

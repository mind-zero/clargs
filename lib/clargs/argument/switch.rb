module Clargs
  class Argument
    # Switch argument, an argument that expects a value
    class Switch
      attr_accessor :short, :long, :description

      # @param short [String] Short version of argument, optional
      # @param long [String] Long version of argument
      # @param description [String] Description of argument
      # @param invertible [Boolean] Allows argument to be inverted with '--no' prefix if true
      def initialize(short: nil, long:, description:, invertible: true)
        @short = short
        @long = long
        @description = description
        @invertible = invertible
      end
    end
  end
end

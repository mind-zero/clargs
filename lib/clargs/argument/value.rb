module Clargs
  class Argument
    # Value argument, an argument that expects a value
    class Value
      attr_accessor :short, :long, :type, :description, :format

      # @param short [String] Short version of argument, optional
      # @param long [String] Long version of argument
      # @param type [Class] Type argument should be
      # @param description [String] Description of argument
      # @param format [String] Format argument is expected in
      def initialize(short: nil, long:, type:, description:, format:)
        @short = short
        @long = long
        @type = type
        @description = description
        @format = format
      end
    end
  end
end

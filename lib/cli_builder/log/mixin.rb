module CLIBuilder
  class Log
    # Mixin module for logger instance.
    # Allows include/extend on target for access to logger instance
    module Mixin
      # @return [Log] Logger instance
      def log
        CLIBuilder::Log.instance
      end
    end
  end
end
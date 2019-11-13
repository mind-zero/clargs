require 'logger'
require 'clargs/log/mixin'

module Clargs
  # Simple 'split logger'
  # Unless you override the logger:
  # * debug and info log records are output to STDOUT
  # * warn, error, & fatal log records are output to STDERR
  class Log
    def initialize
      @stdout = Logger.new(STDOUT)
      @stderr = Logger.new(STDERR)
    end

    # @see Logger#debug
    def debug(msg, &block)
      stdout.debug(msg, &block)
    end

    # @see Logger#info
    def info(msg, &block)
      stdout.info(msg, &block)
    end

    # @see Logger#warn
    def warn(msg, &block)
      stderr.warn(msg, &block)
    end

    # @see Logger#error
    def error(msg, &block)
      stderr.error(msg, &block)
    end

    # @see Logger#fatal
    def fatal(msg, &block)
      stderr.fatal(msg, &block)
    end

    private

    attr_reader :log

    class << self
      # @return [Log] Memoized logger instance
      def instance
        _instance ||= new
      end

      # Set logger instance to something else
      # @param other_logger [#debug, #info, #warn, #error, #fatal] Other logger instance
      # @return [void]
      def instance=(other_logger)
        @_instance = other_logger
      end
    end
  end
end

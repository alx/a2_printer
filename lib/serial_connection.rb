require "serialport"

class SerialConnection
  def initialize(options)
    port_str = options[:port]
    baud_rate = options[:baud_rate]
    data_bits = 8
    stop_bits = 1
    parity = SerialPort::NONE
    @serial = SerialPort.new(port_str, baud_rate, data_bits, stop_bits, parity)
    @serial.sync = true
  end

  def putc(byte)
    @serial.putc(byte)
  end
end


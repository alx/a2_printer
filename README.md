# a2 printer

A simple library for formatting data for thermal receipt printers.

## example

    require 'net/http'
    require 'uri'

    require 'a2_printer'

    data = StringIO.new
    printer = A2Printer.new(data)
    printer.begin
    printer.set_default
    # print text
    printer.println("Visit Wildfire!")
    # print a QR code
    printer.qrcode('http://wildfireapp.com')

    uri = URI.parse('http://olly.oesmith.co.uk:4567/printer/{PRINTER ID HERE}')
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Post.new(uri.path)
    request['content-type'] = 'application/data'
    request.body = data.string
    response = http.request(request)
    puts response if response.code != 200



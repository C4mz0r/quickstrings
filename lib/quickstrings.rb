require "quickstrings/version"

module Quickstrings

  # Feel free to add items to the end of the arrays
  # Specific functions are written to return the first thing in the array, 
  # so DO NOT add any new items in the first position of the arrays.
  #  Doing so will break tests and expected behavior.
  URLS = ['http://www.google.com', 'http://www.amazon.com', 'http://www.linkedin.com']
  EMAILS = ['somebody@example.com', 'somebody.else@example.com']
  NAMES = ["Frank", "Mary", "Susan", "Apu"]
  FULLNAMES = ["Frank Enstein", "Mary Contrary", "Susan Smith", "Apu Nahasapeemapetilon"]

  # UTF8 sampling focus on umlauted characters from 00C0 to 00FF see http://www.utf8-chartable.de/
  # Chars 00D7 and 00F7 would for some reason stop the next ones from generating, so they're excluded
  UTF8SAMPLE = ("\u00C0".."\u00D6").to_a + ("\u00D8".."\u00F6").to_a + ("\u00F8".."\u00FF").to_a

  IMAGES = ["http://www.gravatar.com/avatar/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",  # default gravatar image
	    "http://www.gravatar.com/avatar/bebfcf57d6d8277d806a9ef3385c078d" # gravatar image from Hartl's book
           ]
  

  def Quickstrings.url
    URLS.first
  end

  def Quickstrings.rurl
    URLS.sample
  end

  def Quickstrings.email
    EMAILS.first
  end

  def Quickstrings.remail
    EMAILS.sample
  end

  def Quickstrings.fname
    NAMES.first
  end

  def Quickstrings.rfname
    NAMES.sample
  end

  def Quickstrings.flname
    FULLNAMES.first
  end

  def Quickstrings.rflname
    FULLNAMES.sample
  end

  def Quickstrings.rutf8string(length = 1)
    whitelist_string UTF8SAMPLE, length
  end

  def Quickstrings.image(size = nil)
	IMAGES.first + (size.nil? ? "":"?s=#{size}")
  end

  def Quickstrings.rimage(size = nil)
	IMAGES.sample + (size.nil? ? "":"?s=#{size}")
  end

  def Quickstrings.rstring(length = 1, delim = nil)
    new_string = whitelist_string ('a'..'z'), length
    if !delim.nil?
      new_string[0] = delim
      new_string[-1] = delim
    end
    new_string
  end



  def Quickstrings.whitelist_string(whitelist, length)

    case(whitelist)
    when Range
	whitelist = whitelist.to_a
    when String
	whitelist = whitelist.split("")	
    when Fixnum
	whitelist = whitelist.to_s.split("")
    end

    output = ""

    length.times do 
      output += whitelist.sample
    end
    
    output
  
  end

end

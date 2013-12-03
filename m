X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/12/03/1
Message-id: <2D2EC044-77F8-4B63-8966-8DA6CE8051A0@me.com>
Date: Mon, 02 Dec 2013 19:13:14 -0500
From: "Larry W. Cashdollar" <larry0@...com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Command injection vulnerability in Ruby Gem sprout 0.7.246
Content-Type: text/plain; charset=utf-8

Title: Command injection vulnerability in Ruby Gem sprout 0.7.246

Download: http://rubygems.org/gems/sprout, http://projectsprouts.org/

Vulnerability:

The unpack_zip() function contains the following code:

sprout-0.7.246/lib/sprout/archive_unpacker.rb

60           zip_dir = File.expand_path(File.dirname(zip_file))
61           zip_name = File.basename(zip_file)
62           output = File.expand_path(dir)
63           # puts ">> zip_dir: #{zip_dir} zip_name: #{zip_name} output: #{output}    "     
64           %x(cd #{zip_dir};unzip #{zip_name} -d #{output})


If the attacker can control zip_dir, zip_name or output then they can possibly 
execute shell commands by injecting shell meta characters as input. 


PoC:

For example: filename;id;.zip

I contacted the developer a few weeks ago but received no response.


Thanks!
Larry W. Cashdollar
@_larry0
http://vapid.dhs.org/advisories/

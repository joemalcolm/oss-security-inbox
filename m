X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/01/31/14
Message-ID: <CAGW7fdsN9uyoMX7YtLn1=9k+LtYN12cQOnRpvz6DEMbatiR=Gw@mail.gmail.com>
Date: Tue, 31 Jan 2017 11:59:11 -0500
From: Max Veytsman <max@...canary.com>
To: oss-security@...ts.openwall.com
Subject: CVE requests: code injection in rubygem espeak-ruby and code injection in rubygem festivaltts4r
Content-Type: text/plain; charset=utf-8

Two similar vulnerabilities in ruby text-to-speech libraries.

1) espeak-ruby

Rubygem espeak-ruby passes user modifiable strings directly to a shell
command.

An attacker can execute malicious commands by modifying the strings that
are passed as arguments to the speak, save, bytes and bytes_wav methods in
the lib/espeak/speech.rb.

https://github.com/dejan/espeak-ruby/issues/7

Patched in 1.0.3
https://github.com/spejman/festivaltts4r/issues/1

2) festivaltts4r

Rubygem festivaltts4r passes user modifiable strings directly to a shell
command.

An attacker can execute malicious commands by modifying the strings that
are passed as arguments to the to_speech and and to_mp3 methods in
lib/festivaltts4r/festival4r.rb.

https://github.com/spejman/festivaltts4r/issues/1

No patch
Credit: Brendan Coles

--
Max Veytsman
Co-founder appcanary.com
@mveytsman <https://twitter.com/mveytsman>


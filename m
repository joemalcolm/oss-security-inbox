X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3877" "Monday" "5" "November" "2018" "12:07:39" "-0800" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20181105200739.GB25817@TC-275.local>" "139" "[oss-security] [CVE-2018-16470] Possible DoS vulnerability in Rack" nil nil nil "11" "2018110520:07:39" "[oss-security] [CVE-2018-16470] Possible DoS vulnerability in Rack" (number mark "U       tenderlove@r Nov  5  139/3877  " thread-indent "\"[oss-security] [CVE-2018-16470] Possible DoS vulnerability in Rack\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11345 invoked by uid 550); 5 Nov 2018 20:07:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11323 invoked from network); 5 Nov 2018 20:07:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenderlovemaking-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KqWJbScrK9j+4z47Z0E/YqbCE+BXgrXIZj/Ck/vH7MA=;
        b=UciC95bRaDckwkUFTlpTOdomnUTYnZNj/MHjr/TOKvSE4SUH8ybd8OAFKrRBH73ZTs
         7419+wPxztw5lGA+Og1+M1aH8RkN6WqwycUutApVK56n+qFCTh4+rHAzostWbg+yGz1E
         ouUFhgm33dYLbqbTabdF9G+07b0PxjvTVp04XQzp2YtK0rGdSZTOgVE4MZTWr3QR1osM
         Du/bavxrRKbFac4y2ohbccKICAga4MgT9ieF0xUyb4MEzAuxPT+UAuxxQXHwSQFRxN8e
         8YeBhjs3Vz/gEWDKZ0g3BXxL3iTawcs+52UCVtYe0acjRHzF1SFNDnB6VIWWFnFIi0g8
         0MAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=KqWJbScrK9j+4z47Z0E/YqbCE+BXgrXIZj/Ck/vH7MA=;
        b=bqt7EB9UJNriykhsoi59UN6EYlIUBkGT1V4X6vfZ9qjFlNy28VpfKOlNmpU1mdt7Ga
         Wnen5QrOiwGNj5rYzaqchvwgEycbRWEQb+GC1ccclr2Y0kRDP+ERBFtsju3F4g8mWQbX
         Al9PrYvRRu+tASgdzArVAnAEa1qMKpOPc0Qiaicz1DyWFkrdGTFCvMZb2VmA8AsK/9YT
         AGCPnJaI/ERg5xwxFug1PKeA8LPq2Ghy0r0sYxgpgHWo4naESZv+StQWvBU5YfwjwuYP
         AUhYzrh6vph9my5QxqJR0NV50E1Ct0A9owlP21qL0TbkPBpThqJxkDXIob0a2lL35LkS
         z1/g==
X-Gm-Message-State: AGRZ1gL7W2Wd4t0pCW2DqoZ6ARInd1N7SpL8m6cK+vSqEHWXYTWlt+p6
	pvWwTuag2jsm4lqB0W71VKGpaQ==
X-Google-Smtp-Source: AJdET5eVyDtKTD2DesHy7Em0lfAqUSKzkAcd5bD5TIPXFwGHeSjwmO9oNk0laLd9gnoGoUeeFsuY7Q==
X-Received: by 2002:a17:902:2bc5:: with SMTP id l63-v6mr23549968plb.241.1541448462569;
        Mon, 05 Nov 2018 12:07:42 -0800 (PST)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Mon, 5 Nov 2018 12:07:39 -0800
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20181105200739.GB25817@TC-275.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GPJrCs/72TxItFYR"
Content-Disposition: inline
User-Agent: Mutt/1.9.5 (2018-04-13)
Subject: [oss-security] [CVE-2018-16470] Possible DoS vulnerability in Rack

--GPJrCs/72TxItFYR
Content-Type: multipart/mixed; boundary="OwLcNYc0lM97+oe1"
Content-Disposition: inline


--OwLcNYc0lM97+oe1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

There is a possible DoS vulnerability in the multipart parser in Rack. This
vulnerability has been assigned the CVE identifier CVE-2018-16470.

Versions Affected:  2.0.4, 2.0.5
Not affected:       <=3D 2.0.3
Fixed Versions:     2.0.6

Impact
------
There is a possible DoS vulnerability in the multipart parser in Rack.
Carefully crafted requests can cause the multipart parser to enter a
pathological state, causing the parser to use CPU resources disproportionat=
e to
the request size.

Impacted code can look something like this:

```
  Rack::Request.new(env).params
```

But any code that uses the multi-part parser may be vulnerable.

Rack users that have manually adjusted the buffer size in the multipart par=
ser
may be vulnerable as well.

All users running an affected release should either upgrade or use one of t=
he
workarounds immediately.

Releases
--------
The 2.0.6 release is available at the normal locations.

Workarounds
-----------
To work around this issue, the following code can be used:

```
require "rack/multipart/parser"

Rack::Multipart::Parser.send :remove_const, :BUFSIZE
Rack::Multipart::Parser.const_set :BUFSIZE, 16384
```

Patches
-------
To aid users who aren't able to upgrade immediately we have provided patche=
s for
the supported release series. They are in git-am format and consist of a
single changeset.

* 2-0-multipart-dos.patch - Patch for 2.0 series

Please note that only the 1.6.x and 2.0.x series are supported at present. =
Users
of earlier unsupported releases are advised to upgrade as soon as possible =
as we
cannot guarantee the continued availability of security fixes for unsupport=
ed
releases.

Credits
-------
Thanks to the following people for reporting this issue!

* Bo Jeanes <me@bjeanes.com>
* Jack "chendo" Chen <me@chen.do>

--=20
Aaron Patterson
http://tenderlovemaking.com/

--OwLcNYc0lM97+oe1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="2-0-multipart-dos.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 37c1160b2360074d20858792f23a7eb3afeabebd Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Thu, 1 Nov 2018 14:58:04 -0700
Subject: [PATCH] Reduce buffer size to avoid pathological parsing

[CVE-2018-16470]

Revert "Merge pull request #1192 from jkowens/master"

This reverts commit c43217a81917de03aa6ceb1aa485ae69b8bb4598.
---
 lib/rack/multipart/parser.rb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/rack/multipart/parser.rb b/lib/rack/multipart/parser.rb
index c02e26f..a19d6ea 100644
--- a/lib/rack/multipart/parser.rb
+++ b/lib/rack/multipart/parser.rb
@@ -5,7 +5,7 @@ module Rack
     class MultipartPartLimitError < Errno::EMFILE; end
=20
     class Parser
-      BUFSIZE =3D 1_048_576
+      BUFSIZE =3D 16384
       TEXT_PLAIN =3D "text/plain"
       TEMPFILE_FACTORY =3D lambda { |filename, content_type|
         Tempfile.new(["RackMultipart", ::File.extname(filename.gsub("\0".f=
reeze, '%00'.freeze))])
--=20
2.17.0


--OwLcNYc0lM97+oe1--

--GPJrCs/72TxItFYR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEETOkbdaeYKOhrGqi7lTFwvLT/r8YFAlvgowsACgkQlTFwvLT/
r8az7Qf/cm2+mTJjBwlaQ2UKrGsn1Cae+cQqitlN6zkmJzk0fzVHRFzbxSrKwBYG
RIoJbmkEyQ9udp8qraSB3mWdXl4Vu+eoz4JXPVHTgSxczeRU0xaIKfO1x+dAD2ed
XQ78In82iYv+isJdO5SEWs5ePzG/3/2kg3Dey787kucm9MCBBvSXXuV9VotfZhlh
jEZ+fDJg2hIS6oZmhMK0sfJxrwMYLw4xVW7h3cvX5lIfPBH8ZW/7NVNbMSbrJ0Ww
/2rV+hR13bLBuGTExqXlLCWpPCXJ7zqpFZ2o+e/yiyy1XXV27kS9lgkthl9LX9xO
OoXn/29mGbzE2o05HgWL0YaBGUzdDw==
=2khq
-----END PGP SIGNATURE-----

--GPJrCs/72TxItFYR--

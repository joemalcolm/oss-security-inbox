X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1524" "Saturday" "4" "June" "2016" "22:16:52" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160605021652.356446C0308@smtpvmsrv1.mitre.org>" "42" "[oss-security] Re: Libtorrent http_parser.cpp denial of service" nil nil nil "6" "2016060502:16:52" "[oss-security] Re: Libtorrent http_parser.cpp denial of service" (number mark "U       cve-assign@m Jun  4   42/1524  " thread-indent "\"[oss-security] Re: Libtorrent http_parser.cpp denial of service\"\n") "<DD545187-DC87-48DC-A3AB-69F8000E2F11@gmail.com>" ("<DD545187-DC87-48DC-A3AB-69F8000E2F11@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3341 invoked by uid 550); 5 Jun 2016 02:17:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3275 invoked from network); 5 Jun 2016 02:17:04 -0000
From: cve-assign@mitre.org
To: bperry.volatile@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <DD545187-DC87-48DC-A3AB-69F8000E2F11@gmail.com>
Message-Id: <20160605021652.356446C0308@smtpvmsrv1.mitre.org>
Date: Sat,  4 Jun 2016 22:16:52 -0400 (EDT)
Subject: [oss-security] Re: Libtorrent http_parser.cpp denial of service

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I recently opened a bug on libtorrent regarding malformed HTTP or UPnP
> responses
> 
> https://github.com/arvidn/libtorrent/issues/780
> https://github.com/arvidn/libtorrent/pull/782

>> A specially crafted HTTP response from a tracker (or potentially a
>> UPnP broadcast) can crash libtorrent in the parse_chunk_header()
>> function.
>> 
>> AddressSanitizer: SEGV on unknown address
>> 
>> Memcheck, a memory error detector
>> Invalid read of size 1

Use CVE-2016-5301.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXU4siAAoJEHb/MwWLVhi2KbIP/1tVXGYZeEa2sb34OgsgVYiV
M8l+7yc+cOfOmPASgA3qo5ANkjX7QHCn1IjZaRM77716b1fM4+PQI49PZHpve9FE
5fhx1Mn+2hQicbOyEbzkRz/p/qU1seUWwFfo/6rHRtgLDGl/A375PkCWL6nVG6sw
ufJ57CdKPLPv2/ZL/BEwP2DeYlCAYTd8lHiFeia4VvxG3VEgeYM4kkS9tiHuvcdN
SlmfTW/1uWL+Q45wmvlRNq4WZhTWjaNm5VYFIrV1E1iagtC9S2OBvnEwZpwDH1VP
rSTW7erlRz8ZThjKf9zwGpFwFMzkYzx0kDhMBkLOIrvorXLiTx+QJAsdNBycryKy
LQ8y33OUB+eIHgwaAVoTSAzuWcoC/tjuSNh/JpIyPQtkeKCbBVeosLxmrlLoo9q0
GImRXM4hOAwIgvPfJQrWbbdP3OV8r3xZd09+MVbTuBkIqr0nLP3ljPAEYZQFhZXQ
gNETQglchAU8qqLntwO8XjcxeeEncYWoTEnet4fgGfiimXjjQsH/fCM4W27gUPak
x/8hROSJB7fkldlddtk4wgc8j9mEk4dfzyRbpc99DNWYE4MJ5HkXMS63hkViqq/A
fQ8EaIoa1LOrq+FFjwitrHMCOHEkHnejDAMMqAnEK/X5VXc9t3SsVlcIg4KWmNmP
lrec6mVfkk8wKlKpEsNz
=BR8M
-----END PGP SIGNATURE-----

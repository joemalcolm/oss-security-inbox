X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1692" "Thursday" "1" "December" "2016" "14:15:46" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<7f592892df564803a9af7dea4b4ece8a@imshyb02.MITRE.ORG>" "46" "[oss-security] Re: CVE Request: Linux: net: out-of-bounds due do a signedness issue when defragging ipv6" "^CC:" nil nil "12" "2016120119:15:46" "[oss-security] Re: CVE Request: Linux: net: out-of-bounds due do a signedness issue when defragging ipv6" (number mark "U       cve-assign@m Dec  1   46/1692  " thread-indent "\"[oss-security] Re: CVE Request: Linux: net: out-of-bounds due do a signedness issue when defragging ipv6\"\n") "<CAAeHK+yya7cNPsY97wiss_G9ZCS3sOVbrTSZwxjqXPg7FzyF1A@mail.gmail.com>" ("<CAAeHK+yya7cNPsY97wiss_G9ZCS3sOVbrTSZwxjqXPg7FzyF1A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16091 invoked by uid 550); 1 Dec 2016 19:15:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16072 invoked from network); 1 Dec 2016 19:15:59 -0000
In-Reply-To: <CAAeHK+yya7cNPsY97wiss_G9ZCS3sOVbrTSZwxjqXPg7FzyF1A@mail.gmail.com>
Message-ID: <7f592892df564803a9af7dea4b4ece8a@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<dvyukov@google.com>, <kcc@google.com>
Date: Thu, 1 Dec 2016 14:15:46 -0500
From: <cve-assign@mitre.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux: net: out-of-bounds due do a signedness issue when defragging ipv6
To: <andreyknvl@google.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A fix was sent upstream:
> https://www.spinics.net/lists/netdev/msg407525.html
> 
> More details here:
> https://groups.google.com/forum/#!topic/syzkaller/GFbGpX7nTEo

>> Problem is that all network headers before fragment header are pulled.
>> Normal ipv6 reassembly will drop the skb when errors occur further down
>> the line.
>> 
>> netfilter doesn't do this

Use CVE-2016-9755.

The scope of this CVE does not include the GFbGpX7nTEo discussion of

  https://groups.google.com/forum/#!original/syzkaller/GFbGpX7nTEo/XIKCs1NwAwAJ

  "A quick grep shows that the same issue can potentially happen in
  multiple places across the kernel"

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYQHVxAAoJEHb/MwWLVhi2ivwQAK972EbLLzsDaSmHZyK/hlEG
08kbLjW7Fmvs4GjSEb3XWMYI7IZzuZOURbCwyZQ9jcXDdAk371trf7OIX/aImXxM
L6vFWqU2KZE+p/BkK9BbEJvkExUDPEO2mF10kHVrGBFvmM5u6zGPKynwaWWHZXwo
j52JVuGvJUxvFOSUVJBKwxhjEgEx4TYnc5M7r0aO9mfAs9/ZbJZmJ33ZXHwS+UAu
feIwdIZk2dEzY6CUg8vJ+IGxh5O6m/9KECend3yA47GQRprYqIWMkfqg2RUcPjsH
BX78nJQmZWpahDbbst3PD+VUvLh617hOlipZnBLujoe3ts4dyFbv6QRvVfCMQy/8
ua1s0su0PpnJNFXuS+MydirJB2VhpLFka7fIjYrmwLdIMHWw90GW7rpTRvrUAW/A
tKcTL9zPeU75M2VIT4/zonUXK9Gb5nDvdsvSQxWDe4fptlJe8OfmzXbf3KpSaHRd
8RxqX4VeHiHA/rQCxpMlnq1RK5IIth9YusbK52LBqf5q14WBQsUTIMkUlo0lJ1Qa
x5Pr3AkVRcOlqCeMmg6IILPHdNfOgoEVYgtlDzh0OZNXk6T6PvK6c3GnMCo8JcFt
HNuCdLMG4NMr7iX4W0Ptu31IwQC5bBmL7dn07OwJkVDJ5OLYe2QYUBKfofjMgEKg
GvcQC04f5qGYKWPU14/C
=YbPe
-----END PGP SIGNATURE-----

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1782" "Friday" "20" "January" "2017" "22:25:27" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<e5990a8df9974dd6b9a11601e84de16a@imshyb01.MITRE.ORG>" "40" "[oss-security] Re: CVE request Qemu: watchdog: memory leakage in virtual hardware watchdog wdt_i6300esb" nil nil nil "1" "2017012103:25:27" "[oss-security] Re: CVE request Qemu: watchdog: memory leakage in virtual hardware watchdog wdt_i6300esb" (number mark "U       cve-assign@m Jan 20   40/1782  " thread-indent "\"[oss-security] Re: CVE request Qemu: watchdog: memory leakage in virtual hardware watchdog wdt_i6300esb\"\n") "<alpine.LFD.2.20.1701202004350.14113@wniryva>" ("<alpine.LFD.2.20.1701202004350.14113@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15806 invoked by uid 550); 21 Jan 2017 03:25:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15788 invoked from network); 21 Jan 2017 03:25:39 -0000
In-Reply-To: <alpine.LFD.2.20.1701202004350.14113@wniryva>
Message-ID: <e5990a8df9974dd6b9a11601e84de16a@imshyb01.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liqiang6-s@360.cn>
Date: Fri, 20 Jan 2017 22:25:27 -0500
From: <cve-assign@mitre.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request Qemu: watchdog: memory leakage in virtual hardware watchdog wdt_i6300esb
To: <ppandit@redhat.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [] Quick Emulator(Qemu) built with the virtual hardware watchdog 'wdt_i6300esb'
> support is vulnerable to a memory leakage issue. It could occur while doing a
> device unplug operation; Doing so repeatedly would result in leaking host
> memory, affecting other services on the host.
> 
> A privileged user inside guest could use this flaw to cause a DoS and/or
> potentially crash the Qemu process on the host.
> 
> https://lists.nongnu.org/archive/html/qemu-devel/2016-12/msg03104.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1415199
> http://git.qemu.org/?p=qemu.git;a=commit;h=eb7a20a3616085d46aa6b4b4224e15587ec67e6e

Use CVE-2016-10155 for this (i.e., a memory consumption issue, not an
information disclosure issue).

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYgtMJAAoJEHb/MwWLVhi23iYP/0M7c/5IxIOs6ejY6ctVyWwk
X82bhgKruTtEl9/+QUrBcajqDZTo+n2yPt8SM0OurkAKaFNpxFL2P5L6395yQQHr
YYdBCRGF3eNHLJvDDFZ0THOy9H4OUtge2cmtS1krMUSup2v7RsSK+Bg5WbrWOlPX
sr17IPrV9r3eZTWLwDWQiZLGcmao/CordQ9TuUqU/TPLiEQJ6H5i1R9p2tGSktPq
eNMo4VCTuIZl9PKQessKJpuJIzen7t9RN/Ldhn6cws41tzlhbqloJ5v1hmXrpGYZ
846f6TdhyWOJZVSqpaLFqOsWbkY8EukMaTXashkh0geIjANpaYvwehUzkB4IoMVm
hlZMf1YH+6Swb1y1RdrhtjRfgDPz2dnkjfbfOTShkrnfA9lJ0te6pl25FIGy2/Mn
4jHR8ZloDLgrS2AEuMS/gUa5mSFrdJOfUiqCamEIHtuTQy570uSetce0U2jpTSz5
yNh+ismsGYJatsdASrvWz6dRFbMqgp7m7A0L8Et8b2J8DEczqp05m8is7SMf7PKF
nL1kmcXp+dzASgHyiQxd2rygJjS3uQY8/2wJ49r5U3SpDV9P6zbHwv7E4rD0UtrP
n5FEOIZLh9I7GLXUcprWF5D27ZNCS/eLj0s0oJLuwVD2R+pAwD7ODs1hpa0yWtPL
KJJTWGKN1M6fvKI9GpTf
=UoYR
-----END PGP SIGNATURE-----

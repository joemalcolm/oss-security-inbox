X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2921" "Saturday" "26" "November" "2016" "17:47:59" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<b8ef09d1fc2845acb5d7e96c733d82f6@imshyb02.MITRE.ORG>" "62" "[oss-security] Re: CVE request: DoS loading a SVG in Firefox" nil nil nil "11" "2016112622:47:59" "[oss-security] Re: CVE request: DoS loading a SVG in Firefox" (number mark "U       cve-assign@m Nov 26   62/2921  " thread-indent "\"[oss-security] Re: CVE request: DoS loading a SVG in Firefox\"\n") "<CACn5sdRcbLd97UmcuPWptce=EC=cJseGoCw0NaxXZaT+Q7g8bw@mail.gmail.com>" ("<CACn5sdRcbLd97UmcuPWptce=EC=cJseGoCw0NaxXZaT+Q7g8bw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21978 invoked by uid 550); 26 Nov 2016 22:48:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21951 invoked from network); 26 Nov 2016 22:48:11 -0000
From: <cve-assign@mitre.org>
To: <gustavo.grieco@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CACn5sdRcbLd97UmcuPWptce=EC=cJseGoCw0NaxXZaT+Q7g8bw@mail.gmail.com>
Message-ID: <b8ef09d1fc2845acb5d7e96c733d82f6@imshyb02.MITRE.ORG>
Date: Sat, 26 Nov 2016 17:47:59 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: DoS loading a SVG in Firefox

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> cause Firefox to consume all your memory. Once you click, you
> cannot stop the memory constant memory leak. It can take a few minutes
> (we tested in a desktop computer with 16GB). At the end, Firefox will
> abort or it will be terminated by the OS.

> This issue was recently minimized and isolated to the circular use of
> xlink:hrefs:
> 
> https://bugzilla.mozilla.org/show_bug.cgi?id=1297206#c5
> 
> Is a CVE suitable for this DoS?

At present, it is not. The MITRE CVE team relies on Mozilla to assign
CVE IDs for Firefox, on the basis of Mozilla's knowledge about their
customers' needs for tracking bugs. This does not mean that Mozilla
can have any arbitrary policy about what bugs are suitable for CVEs;
however, we want to defer to them to the greatest reasonable extent.
For example, there is a vast amount of public information about parts
of the Firefox code that are associated with crashes, e.g., see

  https://crash-stats.mozilla.com/topcrashers/?product=Firefox&version=50.0&_facets_size=300

where someone could conceivably request thousands of CVE IDs.

In this specific xlink:href situation, apparently it is known that the
process termination is solely the result of excessive memory
consumption. From Mozilla's perspective, visiting any untrusted URL
(such as a URL with an SVG document) has an expected outcome (or
"impact") that Firefox MIGHT attempt to use an extremely large amount
of memory. They are not tracking these cases with CVE IDs, and it
seems reasonable that they would not want to. For Firefox, their
customers expect to have CVE IDs that correspond to Mozilla Foundation
Security Advisory documents. A general-purpose web browser has a huge
attack surface, and (compared to other products) may have a different
decision point about what behavior is within the range of expected
impacts, versus what behavior is a vulnerability.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIbBAEBCAAGBQJYOg/aAAoJEHb/MwWLVhi22MoP92yMH3wBweWZf+Wem3KJuw1h
2IFhNnwwjmZci4TSNFA+OqBoOKBzc5bdyUT+SdxV9va6Bo559UphPtx6wdWpho79
cSyvtEnzNdvZS7N+fL+HY1cjHco8lk7LHCqjGIiSCkwIPpciEfG7gyIqgr12bq+A
ONTDliKkZXJNxY7uYgUvf673Lm45VhTGRxdSWUUsdGa3n+NhO7IfZom1Pd/UdOGQ
Lc/Ds8sY2jLGUT0qHO23KE80XBELhn/iUc5/xJATZh2VrmkFZtm2xWudEnrmi+fU
k3fOU8MCeCFKySSMp4VhAyAg1/2AexxXSKxPkyms7nnr38tiRBeTSz7KX5Vzz1iV
9pfiOfNSmx22ZmnZTq8Ei6R5WxVtpZasBD+VyqtP4gUeP56h7DxVpmYEpjTcFKNm
oiYkh7mXn1jDw52n6FsCMPC19UmsUiVkpzSZoVjOH7ul/KbInn8HMJe6miB/3EWR
iWwB/X9w2ZaOMrbfvkW0a+EYAZ8IpDKTRU/j9E7SA0ME9sfdJ2ocaYBbYLxivoTP
0IiK2OuRltf4Wmwxadn29FAdecxqm0BXxcPInaGuvgLa8VNlevv4Ib3h75UcuKws
vtMlbK5vF0oJl3aWG5XmkUEh01N7JrqAwjxi1J0L29MymKS6zg/u2MG5EgLOhL1D
VLnRzNDzJWpCh4aX0NU=
=IKs3
-----END PGP SIGNATURE-----

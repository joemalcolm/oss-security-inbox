X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2260" "Thursday" "15" "December" "2016" "12:47:41" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<0ec5e8a9b0de4b66b53020497c808828@imshyb02.MITRE.ORG>" "62" "[oss-security] Re: CVE Request: Game Music Emulators: incorrect emulation of the SPC700 audio co-processor of SNES: arbitrary code execution via malformed SPC music file" nil nil nil "12" "2016121517:47:41" "[oss-security] Re: CVE Request: Game Music Emulators: incorrect emulation of the SPC700 audio co-processor of SNES: arbitrary code execution via malformed SPC music file" (number mark "U       cve-assign@m Dec 15   62/2260  " thread-indent "\"[oss-security] Re: CVE Request: Game Music Emulators: incorrect emulation of the SPC700 audio co-processor of SNES: arbitrary code execution via malformed SPC music file\"\n") "<20161215053348.5sioflbygm3ba3h5@lorien.valinor.li>" ("<20161215053348.5sioflbygm3ba3h5@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28650 invoked by uid 550); 15 Dec 2016 17:47:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28626 invoked from network); 15 Dec 2016 17:47:53 -0000
From: <cve-assign@mitre.org>
To: <carnil@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161215053348.5sioflbygm3ba3h5@lorien.valinor.li>
Message-ID: <0ec5e8a9b0de4b66b53020497c808828@imshyb02.MITRE.ORG>
Date: Thu, 15 Dec 2016 12:47:41 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: Game Music Emulators: incorrect emulation of the SPC700 audio co-processor of SNES: arbitrary code execution via malformed SPC music file

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://scarybeastsecurity.blogspot.de/2016/12/redux-compromising-linux-using-snes.html

> 1: Missing X register value clamp for the MOV (X)+,A instruction

Use CVE-2016-9957.


> 2: Missing SP register value clamp for the RET1 instruction

Use CVE-2016-9958.


> Although most operations on the A, X and Y registers clamp the
> resulting values carefully, the very interesting new multiply
> instruction, MUL, does not:
> 
> generate 8-bit register values that are out of bounds

Use CVE-2016-9959 for this MUL vulnerability.


> the DIV instruction is just as interesting as the MUL one. It also
> does transforms on the values of incoming registers, leaving the
> results in the A and Y registers, without any clamping on the Y result

> Even though this code is fairly simple, I don.t claim to understand it
> 100%, particularly with large input values. What I do know is that I
> see various integer overflow opportunities, integer underflow
> opportunities, less useful div-by-zero issues, etc.

There does not seem to be enough information for a detailed CVE
mapping of the DIV behavior.

Use CVE-2016-9960 for the divide-by-zero errors.

Use CVE-2016-9961 for the other mishandling of integer values.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYUtTVAAoJEHb/MwWLVhi2MM8P/19Vn5IpJepycCBEWK1v+hGy
AWvrShniZPMU5zF8hZq+mpzw0/m52Sopwd20aYe2jINiHs1+bv+PfbCDkqH3c3Bv
7rbLKHKeftsB3XRufVpBiSW/c/HguprTinIFoDJhR2752PRGZ8fIKSHM9JRQQlRt
6TqJE8h3eIvduzsJI8otg4eqtWUji6UkurUuBeYh8oK6VTGYZEQZ2WjMaF1HsYz8
RJcHHr9auEnS6YJh4mHb/iwW1duSHSw/Q5Z8iwMGrkKnqbat+mA1XcOzTaOYcQat
yjQMoFLVHmMXmEtWQoYJY9EdYj2xvSo9tpPXgtRS3ozKjeri/g/vNpefErBSdRnS
FaaELv8BxHg1Yw90BHk4+miXDSOLrNl646ZA7cnIGTzI0Rg9aqPkhTUn/NyoKoQ4
O66ToS4OE+zufKTiKFQUifX2reL/C8/zJuLIT2QxqUeXzS5XNDnX3GrGGJikqz2v
OSlMirr6m3zetBvJkx7uTXl+vpQVSHzOFI7efKEp2xuXC3hv0TYiIPXdNfRIM7CL
ut1qIGdpdJpWiA2dfgKEsArbjvqPRGa31D3+RbDwoeFsrViXg5zwAXsY3TnwyotS
2FQ3Vh/ozWQgjcf6g0hcWfwxo5W2igPEOG8sYXgsnJ6tMk1C+3Uy/4ocAMxIyZKZ
NYIBp2AGdYbNm6R7Ck7J
=m+et
-----END PGP SIGNATURE-----

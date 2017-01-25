X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1692" "Wednesday" "25" "January" "2017" "03:42:16" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<b78bd7f6e37e44beb66433715efe0717@imshyb01.MITRE.ORG>" "39" "[oss-security] Re: CVE request Qemu: serial: host memory leakage in 16550A UART emulation" nil nil nil "1" "2017012508:42:16" "[oss-security] Re: CVE request Qemu: serial: host memory leakage in 16550A UART emulation" (number mark "U       cve-assign@m Jan 25   39/1692  " thread-indent "\"[oss-security] Re: CVE request Qemu: serial: host memory leakage in 16550A UART emulation\"\n") "<alpine.LFD.2.20.1701242332030.18573@wniryva>" ("<alpine.LFD.2.20.1701242332030.18573@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3513 invoked by uid 550); 25 Jan 2017 08:42:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3487 invoked from network); 25 Jan 2017 08:42:27 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liqiang6-s@360.cn>
In-Reply-To: <alpine.LFD.2.20.1701242332030.18573@wniryva>
Message-ID: <b78bd7f6e37e44beb66433715efe0717@imshyb01.MITRE.ORG>
Date: Wed, 25 Jan 2017 03:42:16 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: serial: host memory leakage in 16550A UART emulation

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the 16550A UART serial device emulation
> support is vulnerable to a memory leakage issue. It could occur while doing a
> device unplug operation; Doing so repeatedly would result in leaking host
> memory, affecting other services on the host.
> 
> A privileged user inside guest could use this flaw to cause a DoS and/or
> potentially crash the Qemu process on the host.
> 
> https://lists.nongnu.org/archive/html/qemu-devel/2017-01/msg01945.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1416157
> http://git.qemu.org/?p=qemu.git;a=commit;h=8409dc884a201bf74b30a9d232b6bbdd00cb7e2b

Use CVE-2017-5579.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYiGO9AAoJEHb/MwWLVhi2pMwQAJ8+hQLeRu4ralJGGyn9AL2t
wmUkA4A/QH5e1MjsxFoiFOICw691NlmXYk3kEGlK8VMJsRRXQv82N4IboniW1X42
tTu7+ovYK4FCgsngX0r15gxFHe7AoyYQ0RpCQm/ugUe1IdQbLLIK2B5tAOxArCFx
pac/+/Av6JK0gP+C9Fc3HYP8Rm0VWYf8DqDcK+ndrIlet0Y/G2BDTrO+vm3R2Yos
LrT1qfMScVUhqmGZrVVLyB2B4wMHRYOdWmECN7c3owwrpWc3zHG5NetwyjWBMGRy
yyJ5u1x+7FbPIDn4mq2bTqJY9/3Gq2AqA60bTJdu2sbTp78hI+4xqBeRrTwpQtIN
nCVoyAXhcbPJMXy0vbpkOwaH3LuMg/SWJpsC3wyjxwxYwldkvvuYzkrS6YyAesPz
rTPG341iFHowh3XrR3WmZGE52l/IZU2iXJjeXKxoO4hjjpgIdP4e+oXTNxm1Jweu
EMjepn3hzICKPCfhrAlUV7a+k9ukGjlSguudMFmceImd3nxqoVp2uBCB58Ft5nfn
0amrCFUsFgv5xVABrWAX6WR+2EjygEjmRhTeW7ItL1mMQpZElD7k4NeARNiUnhve
+W5/fQPuNAMK79iYKkmRgbYYxBqD9XFGH3N8VscQ+mRz4nl5YkTUNlSQcA20+AcV
Pc5WY/s2U82JKsjWc67Y
=DDIw
-----END PGP SIGNATURE-----

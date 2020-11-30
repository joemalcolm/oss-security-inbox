X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3280" "Monday" "30" "November" "2020" "10:09:41" "+0100" "Matthias Gerstner" "mgerstner@suse.de" "<20201130090941.GA11303@f195.suse.de>" "81" "Re: [oss-security] kdeconnect: CVE-2020-26164: multiple security issues in kdeconnectd network daemon" nil nil nil "11" "2020113009:09:41" "[oss-security] kdeconnect: CVE-2020-26164: multiple security issues in kdeconnectd network daemon" (number mark "U       mgerstner@su Nov 30   81/3280  " thread-indent "\"Re: [oss-security] kdeconnect: CVE-2020-26164: multiple security issues in kdeconnectd network daemon\"\n") "<20201013122912.GA32635@f195.suse.de>" ("<20201013122912.GA32635@f195.suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] kdeconnect: CVE-2020-26164: multiple security issues in kdeconnectd network daemon" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3509 invoked by uid 550); 30 Nov 2020 09:09:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3491 invoked from network); 30 Nov 2020 09:09:52 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 30 Nov 2020 10:09:41 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20201130090941.GA11303@f195.suse.de>
References: <20201013122912.GA32635@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n8g4imXOkfNTN/H1"
Content-Disposition: inline
In-Reply-To: <20201013122912.GA32635@f195.suse.de>
Subject: Re: [oss-security] kdeconnect: CVE-2020-26164: multiple security
 issues in kdeconnectd network daemon

--n8g4imXOkfNTN/H1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Oct 13, 2020 at 02:29:12PM +0200, Matthias Gerstner wrote:
> following is a security review report concerning kdeconnect [1].

this is an amendment to my original report. Upstream wanted to keep this
private until they had something to address it. Originally I raised the
following additional concern:

    ## General Observations and Recommendations
=20=20=20=20=20=20
    ### Pairing Procedure
=20=20=20=20
    The pairing procedure currently seems lacking. The GUI component only p=
resents
    the friendly 'deviceName' to identify peer devices, which is completely=
 under
    attacker control. Furthermore the 'deviceName' is transmitted in cleart=
ext in
    UDP broadcast messages for all other nodes in the network segment to se=
e.
    Therefore malicious devices can attempt to confuse users by requesting a
    pairing under the same 'deviceName' to gain access to a system.
=20=20=20=20
    I strongly suggest to introduce a secure procedure here, like displayin=
g the
    certificate fingerprint to the user.

Upstream addresses this now [1]. A sha256 fingerprint of the
concatenated public keys of the two involved certificates is displayed.
I'm not completely happy with the chosen solution, because in the
initial popup only a prefix of 8 hex digits of the fingerprint is
displayed. The full fingerprint is only reachable via an additional
"view key" button. There are no additional instructions for the end user
and no explanation about the severity of trusting a device. At least in
theory it is now possible to do a proper peer device verification.

Other discussed approaches to make the verification more user friendly
and/or more secure would have been:

- displaying a randomart image in the fashion of ssh-keygen.
- scanning a QR code displayed on the PC end using the kdeconnect
  Android app.
- requiring the user to enter (at least part of) the fingerprint on the
  PC end to force proper user interaction. Since the pairing procedure
  should not occur very often and given the importance of verifying
  device identity this would have been justified.

[1]: https://github.com/KDE/kdeconnect-kde/commit/e7518493df7398f27f7dffbfc=
3f79750bc1fda50

Cheers

Matthias

--n8g4imXOkfNTN/H1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl/EttQACgkQFMQFyXGS
NVPHDRAAkU7HcKEukdf5wJYf61j5kI4TC3dcUsEB2QClokeouVc2VccdDY1zgbUz
xRjYRu0fIA+Tz/UxTn61GihVnLqhhqDxh5paovl5MwR0m4A51NAW6Mz1D6ZBmBrF
pU6851RGyY5fj0A28rJ5gWGOTxAduYqQAxsBtzsXhxyEhd7TnENVLOPkkjv15z0M
xN8C/YlgLK44XYhqJ19g+iEIZmO2CNzmkTkO3M0cZXOokz3lQIYoIIDk7cClSBB9
tj4JlsGXyIH+Wo13Gp6p8PHMC4IxXwgLncKmfLW4MAWGQ72knKVGuHdDuKZcfMzV
S/Cipt1R/tWuYg0G8jwTNqBsF+iWn6B43hkKmL6VMBs8oto2mWaMPg1nTQiKQCf/
5lnQSKftbHDPtu8YJVn581HbTtBOZY5ranMS2+dVQYjFQCiTo8TdifuxZMTHT5V1
0ryNrAL7tNqYJYnUEPSRzEbtPOg9h49zhVanFuvlWv5oRRtpYxYvzxTFqKRXhFM8
n2xSmETGuHJ/vDDuy04rvx77yrtwH9Opsvu6ctLIq+PHbe2B+IDnW72johNsI/2A
GZtEZbHuvPsa4N+mirRp2EsudNrftPhrX6h3apx97DcxzVCrqnb4zkcjfXFBvTkH
7ZkPnF5LM6OaKSQnrpuIPlqK7HtXsni0rw2BtOxi/g0/biLnU2E=
=YLBA
-----END PGP SIGNATURE-----

--n8g4imXOkfNTN/H1--

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2266" "Sunday" "3" "January" "2016" "12:03:46" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160103170346.0AA4933213E@smtpvbsrv1.mitre.org>" "60" "[oss-security] Re: CVE Request: MantisBT SOAP API can be used to disclose confidential settings" nil nil nil "1" "2016010317:03:46" "[oss-security] Re: CVE Request: MantisBT SOAP API can be used to disclose confidential settings" (number mark "U       cve-assign@m Jan  3   60/2266  " thread-indent "\"[oss-security] Re: CVE Request: MantisBT SOAP API can be used to disclose confidential settings\"\n") "<n69hag$2if$1@ger.gmane.org>" ("<n69hag$2if$1@ger.gmane.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17739 invoked by uid 550); 3 Jan 2016 17:03:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17721 invoked from network); 3 Jan 2016 17:03:57 -0000
From: cve-assign@mitre.org
To: dregad@mantisbt.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <n69hag$2if$1@ger.gmane.org>
Message-Id: <20160103170346.0AA4933213E@smtpvbsrv1.mitre.org>
Date: Sun,  3 Jan 2016 12:03:46 -0500 (EST)
Subject: [oss-security] Re: CVE Request: MantisBT SOAP API can be used to disclose confidential settings

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> This was the case with the MantisBT master cryptographic salt
> (crypto_master_salt): it was incorrectly spelt.
> 
> Affected versions:
>  >= 1.3.0-beta.1
> 
> Fixed in versions:
> 1.3.0 (not yet released), possibly 1.3.0-rc.2 if we decide we need
> another release candidate before that.


>> http://sourceforge.net/p/mantisbt/mailman/message/32948048/
>> 2014-10-19
>> - case 'master_crypto_salt':
>> + case 'crypto_master_salt':

In general, a vendor can choose to request a CVE ID for a
vulnerability in beta software. This is unusual and (in cases of many
other products) often not a good idea, but there is no absolute
restriction on having a CVE ID. In this case, the 1.3 development code
in question was apparently noted in 2014.

Use CVE-2014-9759 for the vulnerability caused by the
master_crypto_salt spelling.

There is no CVE ID for the general issue of "Implement a white list of
options ... This is a safer approach than the previous blacklist
method," which seems to be a pre-release design change, not
specifically a vulnerability fix on its own.

> Further details available in our issue tracker [3]
> [3] https://mantisbt.org/bugs/view.php?id=20277

It currently gives an "Access Denied." error.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWiVOFAAoJEL54rhJi8gl58iIQALSkEnUs34DR9JM6DQUfTTS6
VePVAgUo25rpfQkqL7HpsuWEo/L4nYw7E9PCI7P0yHMmOH5O1uY1cucA5PEsukXK
FaPjLZU0GHtbSAG1ioaincMVJ8W+YidMJyUNGrxLRnL3W+bjE63HZLNNiswSuUFK
NTKrzOZtSHRDVRKbdvak3pVvKQ5MXPwM6BRYVZBK5UetaOkKLkQJMH3RjGkyl9AM
yhtIF3XEKNXrIoVtLRka9/OabS1FG9ULE6oL8jqA2S8jL0D0ABo8QOYC2rH3wR3Z
8CaJig5h8ximZIvA0Cg5xSiIQMhk3En7W3QSB1kyAAkrviz0H2f1XJenyifXMkM6
IfXw0d5k9KSglJxpxd/VYBmZhz7rCWwa/0f5vnSpL278u6Sxccfh36EdBmoASs4X
BAjdaEkGZJpoa+KGFKx7lGfSHMMvVGdM8j0ybaDEzruSL/0C8w4OZZxmE4Abbbu7
3Nt1Pmq7YDVWNA6RxXwxp8C32hpxMLhNjNYzsgEZ8lBB2Og3vjSydY2FAav0Zsb+
buyYkSqPqlnUJTMW0nYWnhXRfSOq0H1ndsdpAiSIvRKM28sDjIJnRyIe6QhN+h/u
bF4wu44H2pOqtT69k6wJ7kW/CznpxBdwGcC+jKZKAQT9dXszQdaBrCv5kOGpDRK1
v0DW5xesLDZMu/sbqrLk
=r4cR
-----END PGP SIGNATURE-----

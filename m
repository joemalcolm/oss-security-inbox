X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["12295" "Monday" "5" "October" "2020" "15:53:26" "-0600" "Grant Taylor" "gtaylor@tnetconsulting.net" "<51adb874-f967-5cf7-ffff-a2b871a5455b@spamtrap.tnetconsulting.net>" "252" "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil "10" "2020100521:53:26" "[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" (number mark "U       gtaylor@tnet Oct  5  252/12295 " thread-indent "\"Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?\"\n") "<20201005204820.GA8410@openwall.com>" ("<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>" "<20201005204820.GA8410@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21900 invoked by uid 550); 6 Oct 2020 10:43:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21917 invoked from network); 5 Oct 2020 21:53:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=tnetconsulting.net;
	s=2019; t=1601934813;
	bh=o50x5yKj05iC+MWzIrHGls2lee4FfSVeuA9qA1C41ic=;
	h=Subject:To:References:From:Message-ID:Date:User-Agent:
	 MIME-Version:In-Reply-To:Content-Type:Cc:Content-Disposition:
	 Content-Language:Content-Transfer-Encoding:Content-Type:Date:From:
	 In-Reply-To:Message-ID:MIME-Version:References:Reply-To:
	 Resent-Date:Resent-From:Resent-To:Resent-Cc:Sender:Subject:To:
	 User-Agent;
	b=II5Fe+k58b5X9nsbo0tJ44IUUERLwETp0xNWk7o4fOhOHMgq8lMjjSggZKHVq6yEk
	 4aQBL6FL4iwTMWPihmEAjdmLeAPfSOScPWVmFn04ZnRnzxdAvO/hJLBfBHB37Sf1nx
	 J6WKd7o1vvSt/4aAiESrImJiR0J6cfWaWsUzQcps=
To: oss-security@lists.openwall.com
References: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>
 <20201005204820.GA8410@openwall.com>
From: Grant Taylor <gtaylor@tnetconsulting.net>
Message-ID: <51adb874-f967-5cf7-ffff-a2b871a5455b@spamtrap.tnetconsulting.net>
Date: Mon, 5 Oct 2020 15:53:26 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <20201005204820.GA8410@openwall.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms020703090906070009090009"
Subject: Re: [oss-security] major changes if gnu/linux dominates the desktop
 and/or mobile market?

--------------ms020703090906070009090009
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 10/5/20 2:48 PM, Solar Designer wrote:
> Hi all,

Hi,

> As a moderator I approved all messages in this thread so far, but I=20
> am unhappy about the quality of both Georgi's message and the replies.

Thank you ...

> This is a valid topic, but there's no room in it for trolling (that's=20
> how Georgi's message came across, even if maybe unintentionally) nor=20
> for responding only about the presumed trolling.  Just assume good=20
> faith and post a response that's actually useful to others in here.

... for presuming good intent in the hopes of a constructive conversation.

> I'll try:

:-)

> I'd say yes, major security changes are needed.
>=20
> On the desktop, major Linux distributions (and by the way *BSDs=20
> and Solaris are not very different in this respect, I think) when=20
> used as single-user desktop systems lack security isolation between=20
> applications of the user.

I agree that there is a lot of room for improvement here.  But -- like=20
you say -- I don't think this is isolated to Linux by any stretch of the=20
imagination.  Unless I'm sorely mistaken, just about every contemporary=20
desktop, and possibly server, operating system only gets as granular as=20
the user level.

> (And also between the user and root, due to the typical recommended=20
> use of sudo from the user account.)

Please elaborate what you mean here?

Are you commenting on the use of sudo (vs other access control=20
mechanisms) or the seemingly default recommendation to allow members of=20
the sudo group run any and all commands via sudo?  E.g.:

    %group ALL=3D(ALL) NOPASSWD: ALL

I personally have found judicious use of sudo to be quite effective.=20
Meaning give the DB Administrators access to the explicit commands that=20
they need.  Likewise with the OS Administrators.  Backup Operators, yep,=20
them too.  But each group only gets the commands that they need and=20
can't run the commands for other groups without additional level of=20
intervention.

I believe that sudo as a tool has a LOT of potential and that many=20
people are only using a tiny fraction of what it can do.

> This kind of security isolation is something we have on Android,=20
> but at the price of the user not having full access to (not entirely)=20
> their device.  The user cannot even have e.g. a file manager app with=20
> which they'd access all files of other apps.

I don't know anything about Android other than it made me mad the last=20
time I tried to use it.

I have seen some recent references to user namespaces and sub-IDs.  I'm=20
on the lookout for information to see if that might be a way to run=20
different applications as their own sub-user-id and then behave=20
similarly to how applications running as different users work.  Meaning=20
that each application -> user ID would have it's own files and would=20
then rely on being a member of another group to access other files.  All=20
the while relying on file system permissions to protect other things.

Aside:  If you know of something that I should be reading, please point=20
me towards it.

Have Firefox run as <username>-<firefox> and Evolution run as=20
<username>-<evolution>.  Both user would appear as a different user than=20
just <username> thereby enabling traditional user & group security=20
models between applications run by the same user.

I don't know if I'm hallucinating or if something like this is possible,=20
or even done somewhere that I'm not aware of.

> For typical desktop Linux users, realistically most security is=20
> provided by the web browser, which these days at least uses a=20
> sandbox, protecting the user's files and other apps from itself.=20
> That's something the underlying systems tend to lack.

I'm grateful that the web browser does do sandboxing.  But I don't think=20
that we should need to rely on it for as much security as we do.=20
Presuming of course that fat applications are being used and we're not=20
running /everything/ inside the web browser.

> Sure malware and social engineering are valid threats to keep in mind.

I don't see how the operating system / security infrastructure can be=20
responsible for protecting people here.

I guess the OS could make changes in some manner that they can be rolled=20
back and rely on behavioral monitoring to detect when such a roll back=20
is necessary as the result of deletion / encryption / corruption of=20
documents.

> It's also a good idea not to rely solely on the browser's built-in=20
> authorization checks, but to limit its access to system resources=20
> such as the microphone and camera.  Qubes OS does that.

I naively think that some of this can be controlled with traditional=20
file system permissions on the relevant device files.  If your (sub)user=20
is not in the group to access the microphone -- guess what -- you don't=20
get access to it.  Further, your (repeated) attempt to do so can be=20
treated as an indicator of compromise.  Rinse, later, and repeat for=20
other devices / files.

> Now this is about the lack of security isolation between the users,=20
> if there's more than one actual user on a system.  I also do think=20
> this is very wrong and needs to change (and is an easy change, unlike=20
> others I pointed out above).

Linux, being a Unix like operating system, has been pressed into uses=20
that weren't imagined when the old user based security model was developed.

The idea that multiple users have accounts on the same system and=20
leverage group membership to divide their personal files from their=20
teams files from other teams files simply does not remotely match our=20
current use of these systems.

> Relaxed file permissions like that may also further weaken some partial=20
> sandboxes (when a service is running with its dedicated credentials,=20
> but with retained filesystem access - such as because it needs that).

I want to agree with that.  But, with things ultimately running as the=20
same user, then any subdivision therein is difficult to enforce.

> Then there are also plenty of other local security risks on typical=20
> Linux distros, starting with risky data processing by apport and abrt.=20
> Those would matter more if other issues I mentioned are addressed.
>=20
> I might be right or wrong or (most likely) both, but I hope this sets=20
> the tone for constructive further discussion.

:-)



--=20
Grant. . . .
unix || die


--------------ms020703090906070009090009
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG
9w0BBwEAAKCCCzkwggUhMIIECaADAgECAhA53zcXtFD9dENby64EqrKqMA0G
CSqGSIb3DQEBCwUAMIGWMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRl
ciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRgwFgYDVQQKEw9TZWN0
aWdvIExpbWl0ZWQxPjA8BgNVBAMTNVNlY3RpZ28gUlNBIENsaWVudCBBdXRo
ZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBMB4XDTE5MTExOTAwMDAw
MFoXDTIwMTExODIzNTk1OVowKzEpMCcGCSqGSIb3DQEJARYaZ3RheWxvckB0
bmV0Y29uc3VsdGluZy5uZXQwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK
AoIBAQCwIZcEJcuE7mUfxJnDI8oOSX/TvAhoP11agD++8L7Ok8fFJhJK0lOV
Rsq1M6lF2E2Vzuyffg2ppbecWvHcIRadsaiGimnrJQasdkhj/JUtqPUXnC0S
VA0AzYLrLReQB+9j/jTgB5JnFLyC2lEn9KTA6JmDGjvVkv2Tk+I2+v24nI4/
2lGjD+jIKQiFXkE1uqablXJAw1c9Mh9d4/wjnIM9zLGv1i3xxOLdQ1PXSUZL
12wOy1r7CsGAnNSNhGaceB2tdhdleFEyIHgSgDWtWResHdu/ubZqFiHxaLRJ
lafOHMj3yC6xNOA1IdcNJsaRkQHxSkayKzeE5JK3TxlV83dbAgMBAAGjggHT
MIIBzzAfBgNVHSMEGDAWgBQJwPL8C9qU21/+K9+omULPyeCtADAdBgNVHQ4E
FgQUU6bXebmKM+efFHN0MBjYuJO9Za8wDgYDVR0PAQH/BAQDAgWgMAwGA1Ud
EwEB/wQCMAAwHQYDVR0lBBYwFAYIKwYBBQUHAwQGCCsGAQUFBwMCMEAGA1Ud
IAQ5MDcwNQYMKwYBBAGyMQECAQEBMCUwIwYIKwYBBQUHAgEWF2h0dHBzOi8v
c2VjdGlnby5jb20vQ1BTMFoGA1UdHwRTMFEwT6BNoEuGSWh0dHA6Ly9jcmwu
c2VjdGlnby5jb20vU2VjdGlnb1JTQUNsaWVudEF1dGhlbnRpY2F0aW9uYW5k
U2VjdXJlRW1haWxDQS5jcmwwgYoGCCsGAQUFBwEBBH4wfDBVBggrBgEFBQcw
AoZJaHR0cDovL2NydC5zZWN0aWdvLmNvbS9TZWN0aWdvUlNBQ2xpZW50QXV0
aGVudGljYXRpb25hbmRTZWN1cmVFbWFpbENBLmNydDAjBggrBgEFBQcwAYYX
aHR0cDovL29jc3Auc2VjdGlnby5jb20wJQYDVR0RBB4wHIEaZ3RheWxvckB0
bmV0Y29uc3VsdGluZy5uZXQwDQYJKoZIhvcNAQELBQADggEBADOWdJFXVQvd
VPUy4ChriEyS3wiEdWmLb3CGko4ps7uXgHoCk0V9oU38LjKTrcm/KOhLhBh2
Wz3LxirbtgTP+YxpgkPxDEWOee/o/TiLhVrTLiqZJIwjlZmY1lTmHuoXWQK3
M0MJZYVrGgMJgQg0/+mZkRlEa67N4WETh7MHrKglv3HHy3LeU835KA8cpMxR
bDvPiA8wdKHWgrl4LXOJKtI8rgmMJxUOCQdgI6DSEo/yYve0/TxLLBlWAhve
7e+/aYjKn3V5CpNOmqkRi7V2d6ZJ+RMQrJDtqitQAkzq8cH+CSTGagHzAxQp
e00hH+aVwNioyaoNBezCCLirOjVdlFIwggYQMIID+KADAgECAhBNlCwQ1Dvg
lAnFgS06KwZPMA0GCSqGSIb3DQEBDAUAMIGIMQswCQYDVQQGEwJVUzETMBEG
A1UECBMKTmV3IEplcnNleTEUMBIGA1UEBxMLSmVyc2V5IENpdHkxHjAcBgNV
BAoTFVRoZSBVU0VSVFJVU1QgTmV0d29yazEuMCwGA1UEAxMlVVNFUlRydXN0
IFJTQSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTAeFw0xODExMDIwMDAwMDBa
Fw0zMDEyMzEyMzU5NTlaMIGWMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3Jl
YXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRgwFgYDVQQKEw9T
ZWN0aWdvIExpbWl0ZWQxPjA8BgNVBAMTNVNlY3RpZ28gUlNBIENsaWVudCBB
dXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBMIIBIjANBgkqhkiG
9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyjztlApB/975Rrno1jvm2pK/KxBOqhq8
gr2+JhwpKirSzZxQgT9tlC7zl6hn1fXjSo5MqXUfItMltrMaXqcESJuK8dtK
56NCSrq4iDKaKq9NxOXFmqXX2zN8HHGjQ2b2Xv0v1L5Nk1MQPKA19xeWQcpG
EGFUUd0kN+oHox+L9aV1rjfNiCj3bJk6kJaOPabPi2503nn/ITX5e8WfPnGw
4VuZ79Khj1YBrf24k5Ee1sLTHsLtpiK9OjG4iQRBdq6Z/TlVx/hGAez5h36b
BJMxqdHLpdwIUkTqT8se3ed0PewDch/8kHPo5fZl5u1B0ecpq/sDN/5sCG52
Ds+QU5O5EwIDAQABo4IBZDCCAWAwHwYDVR0jBBgwFoAUU3m/WqorSs9UgOHY
m8Cd8rIDZsswHQYDVR0OBBYEFAnA8vwL2pTbX/4r36iZQs/J4K0AMA4GA1Ud
DwEB/wQEAwIBhjASBgNVHRMBAf8ECDAGAQH/AgEAMB0GA1UdJQQWMBQGCCsG
AQUFBwMCBggrBgEFBQcDBDARBgNVHSAECjAIMAYGBFUdIAAwUAYDVR0fBEkw
RzBFoEOgQYY/aHR0cDovL2NybC51c2VydHJ1c3QuY29tL1VTRVJUcnVzdFJT
QUNlcnRpZmljYXRpb25BdXRob3JpdHkuY3JsMHYGCCsGAQUFBwEBBGowaDA/
BggrBgEFBQcwAoYzaHR0cDovL2NydC51c2VydHJ1c3QuY29tL1VTRVJUcnVz
dFJTQUFkZFRydXN0Q0EuY3J0MCUGCCsGAQUFBzABhhlodHRwOi8vb2NzcC51
c2VydHJ1c3QuY29tMA0GCSqGSIb3DQEBDAUAA4ICAQBBRHUAqznCFfXejpVt
MnFojADdF9d6HBA4kMjjsb0XMZHztuOCtKF+xswhh2GqkW5JQrM8zVlU+A2V
P72Ky2nlRA1GwmIPgou74TZ/XTarHG8zdMSgaDrkVYzz1g3nIVO9IHk96Vws
acIvBF8JfqIs+8aWH2PfSUrNxP6Ys7U0sZYx4rXD6+cqFq/ZW5BUfClN/rhk
2ddQXyn7kkmka2RQb9d90nmNHdgKrwfQ49mQ2hWQNDkJJIXwKjYA6VUR/fZU
FeCUisdDe/0ABLTI+jheXUV1eoYV7lNwNBKpeHdNuO6Aacb533JlfeUHxvBz
9OfYWUiXu09sMAviM11Q0DuMZ5760CdO2VnpsXP4KxaYIhvqPqUMWqRdWyn7
crItNkZeroXaecG03i3mM7dkiPaCkgocBg0EBYsbZDZ8bsG3a08LwEsL1Ygz
3SBsyECa0waq4hOf/Z85F2w2ZpXfP+w8q4ifwO90SGZZV+HR/Jh6rEaVPDRF
/CEGVqR1hiuQOZ1YL5ezMTX0ZSLwrymUE0pwi/KDaiYB15uswgeIAcA6JzPF
f9pLkAFFWs1QNyN++niFhsM47qodx/PL+5jR87myx5uYdBEQkkDc+lKB1Wct
6ucXqm2EmsaQ0M95QjTmy+rDWjkDYdw3Ms6mSWE3Bn7i5ZgtwCLXgAIe5W8m
ybM2JzGCBDIwggQuAgEBMIGrMIGWMQswCQYDVQQGEwJHQjEbMBkGA1UECBMS
R3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRgwFgYDVQQK
Ew9TZWN0aWdvIExpbWl0ZWQxPjA8BgNVBAMTNVNlY3RpZ28gUlNBIENsaWVu
dCBBdXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhA53zcXtFD9
dENby64EqrKqMA0GCWCGSAFlAwQCAQUAoIICVzAYBgkqhkiG9w0BCQMxCwYJ
KoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMDEwMDUyMTUzMjZaMC8GCSqG
SIb3DQEJBDEiBCB7lgcZGfmaIqUwA47FM/HKMnDl7BhAG+oawwqUkoHb1zBs
BgkqhkiG9w0BCQ8xXzBdMAsGCWCGSAFlAwQBKjALBglghkgBZQMEAQIwCgYI
KoZIhvcNAwcwDgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsO
AwIHMA0GCCqGSIb3DQMCAgEoMIG8BgkrBgEEAYI3EAQxga4wgaswgZYxCzAJ
BgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNV
BAcTB1NhbGZvcmQxGDAWBgNVBAoTD1NlY3RpZ28gTGltaXRlZDE+MDwGA1UE
AxM1U2VjdGlnbyBSU0EgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1
cmUgRW1haWwgQ0ECEDnfNxe0UP10Q1vLrgSqsqowgb4GCyqGSIb3DQEJEAIL
MYGuoIGrMIGWMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5j
aGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRgwFgYDVQQKEw9TZWN0aWdvIExp
bWl0ZWQxPjA8BgNVBAMTNVNlY3RpZ28gUlNBIENsaWVudCBBdXRoZW50aWNh
dGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhA53zcXtFD9dENby64EqrKqMA0G
CSqGSIb3DQEBAQUABIIBAJZoFyimyxuDcRJfpT7qY7l1fv9I3RI3Z9YEg9Gf
ZFDERzxHxZgOzP1BgvfAFnrJEmi0d5VlRzFSC83ku1D7iqb31hzGRkH+sc8l
lc7HbQOzAyIJpeS7LUx4joKZgsQtHJ8/RmInT3zvAunGotPzEBBhOgOoOso+
6p1HZWXIQoHq9Lkk3im/qD09bwJ9jB+pgSRYHXQG8rv6JdhUVi0+aWI6Rt+u
b63micKlJeb8UHqD+qzmU6YABzgmbghnn0IMZ+ylvQe0XeI5X8oQYEyXjnHg
6pINYIl3ZokP9MGvlEm3DQOg63xzJKzRECrksKMVAe/BbN5geBzB9vxfCCXw
F3UAAAAAAAA=

--------------ms020703090906070009090009--

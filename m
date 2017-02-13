X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["618" "Monday" "13" "February" "2017" "10:30:10" "+0000" "=?UTF-8?B?U8OpYmFzdGllbg==?= Delafond" "seb@debian.org" "<20170213112557.381@usenet.piggo.com>" "18" "[oss-security] Re: CVE request: XXE in Openpyxl" nil nil nil "2" "2017021310:30:10" "[oss-security] Re: CVE request: XXE in Openpyxl" (number mark "U       seb@debian.o Feb 13   18/618   " thread-indent "\"[oss-security] Re: CVE request: XXE in Openpyxl\"\n") "<20170207235746.GA13577@sin.redhat.com>" ("<20170207104854.331@usenet.piggo.com>" "<20170207235746.GA13577@sin.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1574 invoked by uid 550); 13 Feb 2017 14:03:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24147 invoked from network); 13 Feb 2017 10:30:36 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: =?UTF-8?Q?S=C3=A9bastien?= Delafond <seb@debian.org>
Date: Mon, 13 Feb 2017 10:30:10 +0000 (UTC)
Message-ID: <20170213112557.381@usenet.piggo.com>
References: <20170207104854.331@usenet.piggo.com>
 <20170207235746.GA13577@sin.redhat.com>
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: slrn/1.0.2 (Linux)
Subject: [oss-security] Re: CVE request: XXE in Openpyxl

On 2017-02-07, Doran Moppert <dmoppert@redhat.com> wrote:
> This is yet another instance of CVE-2016-9318.  As already observed
> on the Debian tracker, disabling entity resolution altogether is
> probably going to make openpyxl fail on well-formed Excel documents
> using standard entities such as &lt;.

Hi Doran,

we do not see this issue being technically the same thing as
CVE-2016-9318. openpyxl shouldn't need to resolve *external* XML
entities, and the initial reporter of the Debian bug tested that the
upstream patch doesn't break reglar entities like "&lt"; and
"&gt;". What do you think ?

Cheers,

--Seb


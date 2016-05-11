X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["400" "Wednesday" "11" "May" "2016" "10:57:06" "+0200" "Adam Maris" "amaris@redhat.com" "<5732F3E2.9070409@redhat.com>" "16" "[oss-security] CVE request: Mishandling the first propagated copy being a slave" nil nil nil "5" "2016051108:57:06" "[oss-security] CVE request: Mishandling the first propagated copy being a slave" (number mark "U       amaris@redha May 11   16/400   " thread-indent "\"[oss-security] CVE request: Mishandling the first propagated copy being a slave\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15396 invoked by uid 550); 11 May 2016 08:57:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15378 invoked from network); 11 May 2016 08:57:20 -0000
To: oss-security@lists.openwall.com
From: Adam Maris <amaris@redhat.com>
Message-ID: <5732F3E2.9070409@redhat.com>
Date: Wed, 11 May 2016 10:57:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Wed, 11 May 2016 08:57:09 +0000 (UTC)
Subject: [oss-security] CVE request: Mishandling the first propagated copy being a slave

Hello,

When the first propagated copy was a slave, it results into kernel oops.
This oops happens with the namespace_sem held and can be triggered by
non-root users.

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=
=3D5ec0811d30378ae104f250bfc9b3640242d81e3f

Regards,

--=20
Adam Mari=C5=A1, Red Hat Product Security
1CCD 3446 0529 81E3 86AF  2D4C 4869 76E7 BEF0 6BC2



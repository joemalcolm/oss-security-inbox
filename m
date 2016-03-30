X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["537" "Wednesday" "30" "March" "2016" "15:04:06" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<56FB9D8E.9070104@redhat.com>" "17" "[oss-security] Two flaws - libjpeg and libtiff" "^Date:" nil nil "3" "2016033009:34:06" "[oss-security] Two flaws - libjpeg and libtiff" (number mark "U       huzaifas@red Mar 30   17/537   " thread-indent "\"[oss-security] Two flaws - libjpeg and libtiff\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5606 invoked by uid 550); 30 Mar 2016 09:34:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5588 invoked from network); 30 Mar 2016 09:34:19 -0000
Message-ID: <56FB9D8E.9070104@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Wed, 30 Mar 2016 15:04:06 +0530
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Two flaws - libjpeg and libtiff
To: oss-security@lists.openwall.com

Hi All,

We have made two security flaws public today. They were privately
reported to us by  Aladdin Mubaied. Details as follows:

1. null pointer dereference in libjpeg library in cjpeg
This is a flaw in the cjpeg utility available with the libjpeg library,
details available at:
https://bugzilla.redhat.com/show_bug.cgi?id=1318509

2. buffer-overflow in gif2tiff utility:
This is bundled with libtiff, details available at:
https://bugzilla.redhat.com/show_bug.cgi?id=1319503


-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team

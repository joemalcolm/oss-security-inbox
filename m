X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["592" "Friday" "29" "July" "2016" "09:31:04" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<5345031.MCQBvQ03yp@willoughby>" "21" "Re: [oss-security] Re: paps: heap overflow when processing crafted file" "^Cc:" nil nil "7" "2016072907:31:04" "[oss-security] Re: paps: heap overflow when processing crafted file" (number mark "        ago@gentoo.o Jul 29   21/592   " thread-indent "\"Re: [oss-security] Re: paps: heap overflow when processing crafted file\"\n") "<20160728210138.B68BC42E01D@smtpvbsrv1.mitre.org>" ("<20160728210138.B68BC42E01D@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13447 invoked by uid 550); 29 Jul 2016 07:31:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13423 invoked from network); 29 Jul 2016 07:31:23 -0000
Message-ID: <5345031.MCQBvQ03yp@willoughby>
User-Agent: KMail/4.14.10 (Linux/4.4.6-gentoo; KDE/4.14.20; x86_64; ; )
In-Reply-To: <20160728210138.B68BC42E01D@smtpvbsrv1.mitre.org>
References: <20160728210138.B68BC42E01D@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart19358928.QHXJ30zl1Z"
Content-Transfer-Encoding: 7Bit
Cc: oss-security@lists.openwall.com
Date: Fri, 29 Jul 2016 09:31:04 +0200
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: paps: heap overflow when processing crafted file
To: cve-assign@mitre.org

--nextPart19358928.QHXJ30zl1Z
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

On Thursday 28 July 2016 17:01:38 cve-assign@mitre.org wrote:
> Also, the patch is apparently only about handling empty files,

The bug comes from the fuzzer, which did not pass an empty file.
Later, I discovered that an empty file has the same behaviour of 
the crafted.

In other words:
- The same crash happen for the empty and crafted file.
- The patch covers both cases (when the file is empty and when 
contains random data).

--
Agostino Sarubbo

--nextPart19358928.QHXJ30zl1Z--


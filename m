X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1031" "Tuesday" "13" "September" "2016" "08:02:56" "+1000" "Brian May" "brian@linuxpenguins.xyz" "<87mvjcojxr.fsf@prune.linuxpenguins.xyz>" "28" "Re: [oss-security] autotrace: out-of-bounds write" nil nil nil "9" "2016091222:02:56" "[oss-security] autotrace: out-of-bounds write" (number mark "U       brian@linuxp Sep 13   28/1031  " thread-indent "\"Re: [oss-security] autotrace: out-of-bounds write\"\n") "<6437795.J0nPW8acoZ@arcadia>" ("<6437795.J0nPW8acoZ@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7249 invoked by uid 550); 12 Sep 2016 22:03:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6140 invoked from network); 12 Sep 2016 22:03:15 -0000
X-Virus-Scanned: amavisd-new at kolabnow.com
From: Brian May <brian@linuxpenguins.xyz>
To: oss-security@lists.openwall.com
In-Reply-To: <6437795.J0nPW8acoZ@arcadia>
References: <6437795.J0nPW8acoZ@arcadia>
Date: Tue, 13 Sep 2016 08:02:56 +1000
Message-ID: <87mvjcojxr.fsf@prune.linuxpenguins.xyz>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] autotrace: out-of-bounds write

Agostino Sarubbo <ago@gentoo.org> writes:

> with Address Sanitizer I found that each bmp you try to manage with autotrace 
> causes an out-of-bounds write.
>
> Details:
> https://blogs.gentoo.org/ago/2016/09/10/autotrace-heap-based-buffer-overflow-in-pstoedit_suffix_table_init-output-pstoedit-c/

I have had a look at CVE-2016-7392 in autotrace, in Debian wheezy. From
a quick glance at source code, the code does:

XMALLOC(pstoedit_suffix_table, sizeof(char *) * 2 * (dd_tmp - dd_start) + 1);

Which I believe is the same as:

XMALLOC(pstoedit_suffix_table, (sizeof(char *) * 2 * (dd_tmp - dd_start)) + 1);

i.e. the code leaves room for one byte at the end. However we store a
(char *) at the very end. Which I think might be more then one byte:

pstoedit_suffix_table[2 * (dd_tmp - dd_start)] = NULL;

My testing indicates the problem goes away if you change the line to:

XMALLOC(pstoedit_suffix_table, sizeof(char *) * (2 * (dd_tmp - dd_start) + 1));
-- 
Brian May <brian@linuxpenguins.xyz>
https://linuxpenguins.xyz/brian/

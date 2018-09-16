X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2848" "Sunday" "16" "September" "2018" "22:58:50" "+0200" "Reindl Harald" "h.reindl@thelounge.net" "<d08c27a3-a842-e545-38aa-82a4eb50f8bd@thelounge.net>" "70" "[oss-security] Re: [SECURITY] Apache SpamAssassin 3.4.2 resolves CVE-2017-15705, CVE-2016-1238, CVE-2018-11780 & CVE-2018-11781" nil nil nil "9" "2018091620:58:50" "[oss-security] Re: [SECURITY] Apache SpamAssassin 3.4.2 resolves CVE-2017-15705, CVE-2016-1238, CVE-2018-11780 & CVE-2018-11781" (number mark "U       h.reindl@the Sep 16   70/2848  " thread-indent "\"[oss-security] Re: [SECURITY] Apache SpamAssassin 3.4.2 resolves CVE-2017-15705, CVE-2016-1238, CVE-2018-11780 & CVE-2018-11781\"\n") "<c57c0f41-742c-3c3e-249c-ae2614bf0d7d@apache.org>" ("<c44ca0f1-cba9-b129-20b2-ba59816cfd13@apache.org>" "<c57c0f41-742c-3c3e-249c-ae2614bf0d7d@apache.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16341 invoked by uid 550); 17 Sep 2018 10:04:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22163 invoked from network); 16 Sep 2018 20:59:03 -0000
To: "Kevin A. McGrail" <kmcgrail@apache.org>,
 Spamassassin <users@SpamAssassin.apache.org>,
 SpamAssassin Devel List <dev@spamassassin.apache.org>,
 announce@spamassassin.apache.org, announce@apache.org
Cc: security@spamassassin.apache.org, oss-security@lists.openwall.com
References: <c44ca0f1-cba9-b129-20b2-ba59816cfd13@apache.org>
 <c57c0f41-742c-3c3e-249c-ae2614bf0d7d@apache.org>
From: Reindl Harald <h.reindl@thelounge.net>
Openpgp: id=9D2B46CDBC140A36753AE4D733174D5A5892B7B8;
 url=https://arrakis-tls.thelounge.net/gpg/h.reindl_thelounge.net.pub.txt
Organization: the lounge interactive design
Message-ID: <d08c27a3-a842-e545-38aa-82a4eb50f8bd@thelounge.net>
Date: Sun, 16 Sep 2018 22:58:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <c57c0f41-742c-3c3e-249c-ae2614bf0d7d@apache.org>
Content-Type: text/plain; charset=utf-8
Content-Language: de-CH
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Re: [SECURITY] Apache SpamAssassin 3.4.2 resolves CVE-2017-15705,
 CVE-2016-1238, CVE-2018-11780 & CVE-2018-11781

i doubt that it is wiese to blwo out security notes *that short* after
release and *that long* after the last release

Am 16.09.18 um 18:59 schrieb Kevin A. McGrail:
> Apache SpamAssassin 3.4.2 was recently released [1], and fixes several
> issues of security note.
> 
> First, a denial of service vulnerability that exists in all modern versions.
> 
> The vulnerability arises with certain unclosed tags in emails that cause
> markup to be handled incorrectly leading to scan timeouts.
> 
> In Apache SpamAssassin, using HTML::Parser, we setup an object and hook
> into the begin and end tag event handlers  In both cases, the "open"
> event is immediately followed by a "close" event - even if the tag *does
> not* close in the HTML being parsed.
> 
> Because of this, we are missing the "text" event to deal with the object
> normally.  This can cause carefully crafted emails that might take more
> scan time than expected leading to a Denial of Service.
> 
> The issue is possibly a bug or design decision in HTML::Parser that
> specifically impacts the way Apache SpamAssassin uses the module with
> poorly formed html.
> 
> The exploit has been seen in the wild but not believe to have been
> purposefully part of a Denial of Service attempt.  We are concerned that
> there may be attempts to abuse the vulnerability in the future. 
> Therefore, we strongly recommend all users of these versions upgrade to
> Apache SpamAssassin 3.4.2 as soon as possible.
> 
> This issue has been assigned CVE id CVE-2017-15705 [2].
> 
> 
> Second, this release also fixes a reliance on "." in @INC in one
> configuration script.  Whether this can be exploited in any way is
> uncertain.
> 
> This issue has been assigned CVE id CVE-2016-1238 [3].
> 
> 
> Third, this release fixes a potential Remote Code Execution bug with the
> PDFInfo plugin.  Thanks to cPanel Security Team for their report of this
> issue.
> 
> This issue has been assigned CVE id CVE-2018-11780 [4].
> 
> 
> Fourth, this release fixes a local user code injection in the meta rule
> syntax. Thanks again to cPanel Security Team for their report of this issue.
> 
> This issue has been assigned CVE id CVE-2018-11781 [5].
> 
> 
> To contact the Apache SpamAssassin security team, please e-mail
> security at spamassassin.apache.org.  For more information about Apache
> SpamAssassin, visit the http://spamassassin.apache.org/ web site.
> 
> Apache SpamAssassin Security Team
> 
> [1]:
> https://lists.apache.org/thread.html/1ac11532235b5459aa16c4e9d636bf4aa0b141d347d1361e40cc1b78@%3Cannounce.apache.org%3E
> 
> [2]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=2017-15705
> 
> [3]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=2016-1238
> 
> [4]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=2018-11780
> 
> [5]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=2018-11781

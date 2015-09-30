X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1102" "Wednesday" "30" "September" "2015" "11:07:28" "+0200" "Florian Weimer" "fweimer@redhat.com" "<560BA650.9040901@redhat.com>" "26" "Re: [oss-security] CVE request: urlfetch range handling flaw in Cyrus IMAP" nil nil nil "9" "2015093009:07:28" "[oss-security] CVE request: urlfetch range handling flaw in Cyrus IMAP" (number mark "        fweimer@redh Sep 30   26/1102  " thread-indent "\"Re: [oss-security] CVE request: urlfetch range handling flaw in Cyrus IMAP\"\n") "<87mvw5mquv.fsf@redhat.com>" ("<87mvw5mquv.fsf@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11445 invoked by uid 550); 30 Sep 2015 09:07:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11422 invoked from network); 30 Sep 2015 09:07:42 -0000
References: <87mvw5mquv.fsf@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <560BA650.9040901@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <87mvw5mquv.fsf@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Wed, 30 Sep 2015 11:07:28 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: urlfetch range handling flaw in Cyrus
 IMAP
To: oss-security@lists.openwall.com

On 09/29/2015 01:01 PM, Martin Prpic wrote:
> Hi, was a CVE ID assigned for the following issue?
> 
> "Security fix: handle urlfetch range starting outside message range"
> [https://docs.cyrus.foundation/imap/release-notes/2.4/x/2.4.18.html]
> 
> Not many details seem to be available about this issue. Any pointers to
> a patch that fixes this would be greatly appreciated.

This looks like the relevant fix:

https://cyrus.foundation/cyrus-imapd/commit/?id=07de4ff1bf2fa340b9d77b8e7de8d43d47a33921

This patch seems to fix an information disclosure (out of bounds heap read).

The patch may be incomplete because n could become negative.  I'll ask
on the cyrus-devel list once my subscription request goes through.

This otherwise unrelated commits might be security-relevant as well:

https://cyrus.foundation/cyrus-imapd/commit/?id=d81a712401418cc0bd1daa49ded8e5bcc4b69f21
https://cyrus.foundation/cyrus-imapd/commit/?id=ff4e6c71d932b3e6bbfa67d76f095e27ff21bad0
https://cyrus.foundation/cyrus-imapd/commit/?id=c21e179c1f6b968fe69bebe079176714e511587b

-- 
Florian Weimer / Red Hat Product Security

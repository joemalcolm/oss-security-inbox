X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["548" "Tuesday" "21" "November" "2017" "23:11:12" "+0100" "Tomas Hoger" "thoger@redhat.com" "<20171121231112.68e6c0a6@redhat.com>" "15" "Re: [oss-security] phusion passenger CVE-2017-1000384" nil nil nil "11" "2017112122:11:12" "[oss-security] phusion passenger CVE-2017-1000384" (number mark "U       thoger@redha Nov 21   15/548   " thread-indent "\"Re: [oss-security] phusion passenger CVE-2017-1000384\"\n") "<ffe4aba0-426e-89c0-4760-1d4b315a88a1@cpanel.net>" ("<CANO=Ty13_HbxhMT8BnqYVfU6=g4GP+oJnyCv11ucUG_q8Kbqqg@mail.gmail.com>" "<ffe4aba0-426e-89c0-4760-1d4b315a88a1@cpanel.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1413 invoked by uid 550); 21 Nov 2017 22:11:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1394 invoked from network); 21 Nov 2017 22:11:28 -0000
Date: Tue, 21 Nov 2017 23:11:12 +0100
From: Tomas Hoger <thoger@redhat.com>
To: John Lightsey <jd@cpanel.net>
Cc: oss-security@lists.openwall.com
Message-ID: <20171121231112.68e6c0a6@redhat.com>
In-Reply-To: <ffe4aba0-426e-89c0-4760-1d4b315a88a1@cpanel.net>
References: <CANO=Ty13_HbxhMT8BnqYVfU6=g4GP+oJnyCv11ucUG_q8Kbqqg@mail.gmail.com>
	<ffe4aba0-426e-89c0-4760-1d4b315a88a1@cpanel.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Tue, 21 Nov 2017 22:11:16 +0000 (UTC)
Subject: Re: [oss-security] phusion passenger CVE-2017-1000384

On Fri, 17 Nov 2017 14:58:43 -0600 John Lightsey wrote:

> > https://bugs.gentoo.org/634452
> 
> The commit for the arbitrary file read vulnerability mentioned in the
> Gentoo bug report is actually this one:
> 
> https://github.com/phusion/passenger/commit/4043718264095cde6623c2cbe8c644541036d7bf

Is passenger-status the only way to obtain the content of the target
file?  If so, this problem is mitigated in versions prior to 5.0.10
where root privileges were required to get the status information.

-- 
Tomas Hoger / Red Hat Product Security

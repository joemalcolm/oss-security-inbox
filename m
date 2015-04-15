X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["979" "Wednesday" "15" "April" "2015" "17:29:59" "+0200" "Florian Weimer" "fweimer@redhat.com" "<552E83F7.9070704@redhat.com>" "22" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041515:29:59" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        fweimer@redh Apr 15   22/979   " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27715 invoked by uid 550); 15 Apr 2015 15:30:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27691 invoked from network); 15 Apr 2015 15:30:12 -0000
Message-ID: <552E83F7.9070704@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
In-Reply-To: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
CC: cve-assign@mitre.org
Date: Wed, 15 Apr 2015 17:29:59 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

On 04/14/2015 05:55 PM, cve-assign@mitre.org wrote:
> This is mostly a question for the persons who assigned CVE-2015-1318
> and CVE-2015-1862. Should these CVE assignments be interpreted to
> mean:
> 
>   CVE-2015-1318 - in Apport, an unprivileged user can use a
>                   namespace-based attack because there is an execve by
>                   root after a chroot into a user-specified directory
> 
>   CVE-2015-1862 - in ABRT, an unprivileged user can use a
>                   namespace-based attack because there is an execve by
>                   root after a chroot into a user-specified directory
> 
> with "Furthermore, Abrt suffers from numerous race conditions and
> symlink problems" not yet mapped to any CVE IDs?

Yes, that's how most of us assumed how the assignments were made, but
there is quite a bit of confusion about CVE-2015-1862 because Tavis and
others associated it with the raceabrt.c exploit.

-- 
Florian Weimer / Red Hat Product Security

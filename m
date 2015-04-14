X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["486" "Tuesday" "14" "April" "2015" "12:02:40" "-0400" "Marc Deslauriers" "marc.deslauriers@canonical.com" "<552D3A20.8040909@canonical.com>" "14" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041416:02:40" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        marc.deslaur Apr 14   14/486   " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5937 invoked by uid 550); 14 Apr 2015 16:02:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5916 invoked from network); 14 Apr 2015 16:02:54 -0000
Message-ID: <552D3A20.8040909@canonical.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
In-Reply-To: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
CC: cve-assign@mitre.org
Date: Tue, 14 Apr 2015 12:02:40 -0400
From: Marc Deslauriers <marc.deslauriers@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

Hi,

On 2015-04-14 11:55 AM, cve-assign@mitre.org wrote:
> This is mostly a question for the persons who assigned CVE-2015-1318
> and CVE-2015-1862. Should these CVE assignments be interpreted to
> mean:
> 
>   CVE-2015-1318 - in Apport, an unprivileged user can use a
>                   namespace-based attack because there is an execve by
>                   root after a chroot into a user-specified directory

Yes, I assigned CVE-2015-1318 to that specific issue in Apport.

Marc.

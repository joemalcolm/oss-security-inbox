X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["880" "Saturday" "21" "January" "2017" "22:25:38" "-0800" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<01becbfa-72eb-838e-4cfa-0891c392326f@oracle.com>" "30" "[oss-security] Re: [tigervnc-announce] TigerVNC 1.7.1" nil nil nil "1" "2017012206:25:38" "[oss-security] Re: [tigervnc-announce] TigerVNC 1.7.1" (number mark "U       alan.coopers Jan 21   30/880   " thread-indent "\"[oss-security] Re: [tigervnc-announce] TigerVNC 1.7.1\"\n") "<51f32d01-f8ef-889c-1fac-6f6d06ddab76@cendio.se>" ("<51f32d01-f8ef-889c-1fac-6f6d06ddab76@cendio.se>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14277 invoked by uid 550); 22 Jan 2017 06:26:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14244 invoked from network); 22 Jan 2017 06:26:00 -0000
To: Pierre Ossman <ossman@cendio.se>, tigervnc-devel@googlegroups.com
References: <51f32d01-f8ef-889c-1fac-6f6d06ddab76@cendio.se>
Cc: oss-security@lists.openwall.com
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Message-ID: <01becbfa-72eb-838e-4cfa-0891c392326f@oracle.com>
Date: Sat, 21 Jan 2017 22:25:38 -0800
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <51f32d01-f8ef-889c-1fac-6f6d06ddab76@cendio.se>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Source-IP: userv0021.oracle.com [156.151.31.71]
Subject: [oss-security] Re: [tigervnc-announce] TigerVNC 1.7.1

Is there a CVE assigned to this issue that we should use when passing this
fix through to our packages/distros?  I don't see one mentioned in the commit
or pull requests:

https://github.com/TigerVNC/tigervnc/commit/18c020124ff1b2441f714da2017f63dba50720ba
https://github.com/TigerVNC/tigervnc/pull/399

Thanks,

	-alan-

On 01/20/17 01:00 AM, Pierre Ossman wrote:
> This is a security update for TigerVNC 1.7.0 which fixes a memory overflow issue
> via the RRE decoder. A malicious server could possibly use this issue to take
> control of the TigerVNC viewer.
>
> Users are advised to upgrade as soon as possible.
>
> Binaries are available from bintray:
>
> https://bintray.com/tigervnc/stable/tigervnc/1.7.1
>
> Regards
> The TigerVNC Developers
>


-- 
	-Alan Coopersmith-              alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - http://blogs.oracle.com/alanc

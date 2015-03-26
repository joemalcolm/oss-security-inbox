X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1060" "Thursday" "26" "March" "2015" "13:43:06" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<5513BF92.70406@redhat.com>" "35" "Re: [oss-security] Fwd: setroubleshoot root exploit (CVE-Request)" nil nil nil "3" "2015032608:13:06" "[oss-security] Fwd: setroubleshoot root exploit (CVE-Request)" (number mark "        huzaifas@red Mar 26   35/1060  " thread-indent "\"Re: [oss-security] Fwd: setroubleshoot root exploit (CVE-Request)\"\n") "<20150326070141.GA25037@suse.de>" ("<20150326070141.GA25037@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27779 invoked by uid 550); 26 Mar 2015 08:02:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27755 invoked from network); 26 Mar 2015 08:02:11 -0000
Message-ID: <5513BF92.70406@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
References: <20150326070141.GA25037@suse.de>
In-Reply-To: <20150326070141.GA25037@suse.de>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Thu, 26 Mar 2015 13:43:06 +0530
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fwd: setroubleshoot root exploit (CVE-Request)
To: oss-security@lists.openwall.com

On 03/26/2015 12:31 PM, Sebastian Krahmer wrote:
> 
> As per list policy, here is the forward of the distros post. CRD was shifted
> to today.
> 
> 
> ----- Forwarded message from Sebastian Krahmer <krahmer@suse.de> -----
> 
> Date: Wed, 18 Mar 2015 09:46:10 +0100
> From: Sebastian Krahmer <krahmer@suse.de>
> To: distros@vs.openwall.org
> subject: ***UNCHECKED*** [vs] setroubleshoot root exploit (CVE-Request)
> X-Mailer: MIME-tools 5.501 (Entity 5.501)
> 
> Hi
> 
> I already sent this to upstream. Initially I thought this only
> affects redhat, but it seems that ubuntu is also using setroubleshoot.
> CRD is 24.3.
> 
> setroubleshoot tries to find out which rpm a particular
> file belongs to when it finds SELinux access violation reports.
> The idea is probably to have convenient reports for the admin
> which type enforcement rules have to be relaxed. setroubleshoot
> runs as root (although in its own domain). In util.py
> we have:
> 
> 
Previously CVE-2015-1815 as assigned on distros.




-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team

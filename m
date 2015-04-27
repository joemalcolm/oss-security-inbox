X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["980" "Monday" "27" "April" "2015" "16:31:55" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<553EC6EB.3070403@oracle.com>" "24" "Re: [oss-security] CVE request: X server crash by client" nil nil nil "4" "2015042723:31:55" "[oss-security] CVE request: X server crash by client" (number mark "        alan.coopers Apr 27   24/980   " thread-indent "\"Re: [oss-security] CVE request: X server crash by client\"\n") "<20150424150022.GC25205@suse.de>" ("<20150424150022.GC25205@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19799 invoked by uid 550); 27 Apr 2015 23:32:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19778 invoked from network); 27 Apr 2015 23:32:12 -0000
Message-ID: <553EC6EB.3070403@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:17.0) Gecko/20150410 Thunderbird/17.0.11
MIME-Version: 1.0
References: <20150424150022.GC25205@suse.de>
In-Reply-To: <20150424150022.GC25205@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Source-IP: aserv0021.oracle.com [141.146.126.233]
CC: Marcus Meissner <meissner@suse.de>, xorg_security@x.org,
        cve-assign@mitre.org
Date: Mon, 27 Apr 2015 16:31:55 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: X server crash by client
To: oss-security@lists.openwall.com

On 04/24/15 08:00 AM, Marcus Meissner wrote:
> Hi,
>
> We got notified that the fix for CVE-2014-8092 introduced the possibility
> of a division by 0 when the "height" for the PutImage call is 0, leading
> to X server abort.
>
> https://bugzilla.novell.com/show_bug.cgi?id=928520
>
> This was already fixed in January in X git.
> http://cgit.freedesktop.org/xorg/xserver/commit/?id=dc777c346d5d452a53b13b917c45f6a1bad2f20b
>
> As this is a local denial of service, but might be triggerable by images with 0 height
> supplied externally, it might need a CVE.

Right - the ability of an already authenticated client to end the X session is
generally not considered a vulnerability in Xorg, since we provide intentional
mechanism to do so already, but doing so because an external data source (web
site, document file, etc.) provided a bad image could be.

-- 
	-Alan Coopersmith-              alan.coopersmith@oracle.com
	  X.Org Security Response Team - xorg-security@lists.x.org


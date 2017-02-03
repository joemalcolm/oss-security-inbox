X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["642" "Friday" "3" "February" "2017" "11:29:20" "+0000" "John Haxby" "john.haxby@oracle.com" "<26fd3ab9-bc82-6180-2b93-9eed6308fd0d@oracle.com>" "19" "Re: [oss-security] Local DoS: Linux Kernel EXT4 Memory Corruption / SLAB-Out-of-Bounds Read" nil nil nil "2" "2017020311:29:20" "[oss-security] Local DoS: Linux Kernel EXT4 Memory Corruption / SLAB-Out-of-Bounds Read" (number mark "U       john.haxby@o Feb  3   19/642   " thread-indent "\"Re: [oss-security] Local DoS: Linux Kernel EXT4 Memory Corruption / SLAB-Out-of-Bounds Read\"\n") "<CALJHwhTW6d4uVqQDvDkn80AWvLSGXGsXT-9RE_ORyBXz59NNHA@mail.gmail.com>" ("<CALJHwhTW6d4uVqQDvDkn80AWvLSGXGsXT-9RE_ORyBXz59NNHA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7389 invoked by uid 550); 3 Feb 2017 11:29:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7371 invoked from network); 3 Feb 2017 11:29:36 -0000
To: oss-security@lists.openwall.com
References: <CALJHwhTW6d4uVqQDvDkn80AWvLSGXGsXT-9RE_ORyBXz59NNHA@mail.gmail.com>
From: John Haxby <john.haxby@oracle.com>
Message-ID: <26fd3ab9-bc82-6180-2b93-9eed6308fd0d@oracle.com>
Date: Fri, 3 Feb 2017 11:29:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <CALJHwhTW6d4uVqQDvDkn80AWvLSGXGsXT-9RE_ORyBXz59NNHA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Source-IP: userv0022.oracle.com [156.151.31.74]
Subject: Re: [oss-security] Local DoS: Linux Kernel EXT4 Memory Corruption /
 SLAB-Out-of-Bounds Read

On 03/02/17 05:52, Wade Mealing wrote:
> Mounting a crafted EXT4 image read-only leads to a memory corruption and
> SLAB-Out-of-Bounds Reads (according to KASAN).  Since the mounting
> procedure is a privileged operation, an attacker is probably not able
> to trigger this vulnerability on the commandline.
> Instead the automatic mounting feature of the GUI via a crafted
> USB-device is required.
> 
> From full disclosure at:
> 
> http://seclists.org/fulldisclosure/2016/Nov/75
> 
> If it has been assigned elsewhere, I am unable to see it.

The bugzilla link from the above isn't accessible.  Are we missing any
useful information?


jch

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1000" "Wednesday" "13" "January" "2021" "10:41:30" "+0100" "David Disseldorp" "ddiss@suse.de" "<20210113104130.61f82484@suse.de>" "27" "[oss-security] Re: CVE-2020-28374: Linux SCSI target (LIO) unrestricted copy offload" nil nil nil "1" "2021011309:41:30" "[oss-security] Re: CVE-2020-28374: Linux SCSI target (LIO) unrestricted copy offload" (number mark "U       ddiss@suse.d Jan 13   27/1000  " thread-indent "\"[oss-security] Re: CVE-2020-28374: Linux SCSI target (LIO) unrestricted copy offload\"\n") "<20210112190134.585e5a60@suse.de>" ("<20210112190134.585e5a60@suse.de>") nil nil nil nil nil nil nil "[oss-security] Re: CVE-2020-28374: Linux SCSI target (LIO) unrestricted copy offload" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1038 invoked by uid 550); 13 Jan 2021 11:36:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20139 invoked from network); 13 Jan 2021 09:41:43 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Wed, 13 Jan 2021 10:41:30 +0100
From: David Disseldorp <ddiss@suse.de>
To: john.haxby@oracle.com
Cc: oss-security@lists.openwall.com
Message-ID: <20210113104130.61f82484@suse.de>
In-Reply-To: <20210112190134.585e5a60@suse.de>
References: <20210112190134.585e5a60@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: CVE-2020-28374: Linux SCSI target (LIO) unrestricted copy
 offload

[replying via parent, as I'm not on this list]

Hi John,

> On Tue, 12 Jan 2021 19:01:34 +0100, David Disseldorp wrote:
>
> > ===============================================================================
> > == Subject:     Linux SCSI target (LIO) unrestricted copy offload
> > ==
> > ==
> > == CVE ID#:     CVE-2020-28374
> > ==
> > == Versions:    Linux: v3.12 and later
> > ==              tcmu-runner: v1.3.0 and later
> > ==
> > == Summary:     An attacker with access to a LUN and knowledge of Unit Serial
> > ==              Number assignments can read and write to any LIO backstore,
> > ==              regardless of SCSI transport settings.
> > ===============================================================================

> David -- did you mean to attach the patches you posted to linux-distros?

No, the kernel patches have gone out via the regular mainline and stable
repositories. The tcmu-runner fix is queued at
https://github.com/open-iscsi/tcmu-runner/pull/644

Cheers, David

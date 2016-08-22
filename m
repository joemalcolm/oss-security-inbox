X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1319" "Monday" "22" "August" "2016" "15:28:51" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhSmb-Fx6VYaqW4FwNg=GTm=q2d7LqqoZ10U5TjA1=nTOA@mail.gmail.com>" "41" "[oss-security] CVE request: Linux kernel mbcache lock contention denial of service." nil nil nil "8" "2016082205:28:51" "[oss-security] CVE request: Linux kernel mbcache lock contention denial of service." (number mark "U       wmealing@red Aug 22   41/1319  " thread-indent "\"[oss-security] CVE request: Linux kernel mbcache lock contention denial of service.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17431 invoked by uid 550); 22 Aug 2016 05:29:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17410 invoked from network); 22 Aug 2016 05:29:04 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=93KQNrLp2QUECj6soA45qclXwM6z/XQDusPgZH0Cx+g=;
        b=kNOBEflOZfnJp9UBoVWdNQQitLF1ldxvq8sMaBbBY/vmk5ZXeeyuR9DPvYVlNSdDgm
         Twu/Jyj8HIV25RAgGRC/5SHRqM5B2R7HacgrRJw2ABCniLEikkBWns3CKx+X28z/J0WN
         6Ap2G6wqyVvUmoDvXiboAJjv2IQIxRNs67hyZSNnjaHcUihsjccw8apb7LgcjK8wsgiJ
         H20G7zQzjuvZ/o8t7YPTU9MuzBNJmzCRZ1dYfjnZ2URSnOCu7L24hBjxKLOzOK1b36YN
         5OpMMkT3Um1m3tMS6Ac/Bq2QFCuzTEzlckMZVUiXdEkWaTuJ8Ovh0MRHwy4xv3i8nB6O
         dYHQ==
X-Gm-Message-State: AEkoouuqP8zKOiJLaBcVEiKC5IuBKHTOT+NoHJtNVleIgkiOwl6bEfowOM7IRNs+/UJL0M1523GW9q8skor/NpvL
X-Received: by 10.107.37.198 with SMTP id l189mr21148768iol.117.1471843732288;
 Sun, 21 Aug 2016 22:28:52 -0700 (PDT)
MIME-Version: 1.0
From: Wade Mealing <wmealing@redhat.com>
Date: Mon, 22 Aug 2016 15:28:51 +1000
Message-ID: <CALJHwhSmb-Fx6VYaqW4FwNg=GTm=q2d7LqqoZ10U5TjA1=nTOA@mail.gmail.com>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE request: Linux kernel mbcache lock contention denial of service.

Gday,

A design flaw was found in the file extended attribute handling of the
linux kernels handling of cached attributes.  Too many entries in the
cache cause a soft lockup while attempting to iterate the cache and
access relevant locks.

Upstream has replaced the mbcache code with an updated version which
was not a patch but a clear-cut reimplementation of the code, no
single diff

Soft lockup information is in both the bugzilla.kernel.org and
referred to in the LWN article.  This would affect containers running
with ext4 as it shares the same mbcache between all containers/host.

This did not affect Red Hat Enterprise Linux versions 5,6 or 7, so I
can't validate the claim that it does affect other newer kernels.
This may be worthwhile tracking for others who are affected by this
flaw.

For those following along at home, this seemed to be fixed in:

 =C2=B1  git tag --contains be0726d33cb8f411945884664924bed3cb8c70ee
v4.6

However I can't be sure which factor introduced the issue, but I've
been unable to reproduce with the given instructions.

Thanks,

Wade Mealing
Red Hat Product Security

Upstream discussion:
https://lwn.net/Articles/668718/

Bugzilla kernel submission:
https://bugzilla.kernel.org/show_bug.cgi?id=3D107301

Red Hat Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=3D1360968

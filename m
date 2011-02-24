X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/24/3
Message-ID: <4D65D3F2.6090408@redhat.com>
Date: Thu, 24 Feb 2011 11:43:46 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: drm/radeon/kms: check AA resolve registers on r300
Content-Type: text/plain; charset=utf-8

Check values passed in to AARESOLVE_OFFSET on r300. It can be used to 
write arbitrary data to VRAM, GTT, etc. This is specific to a range of 
GPUs only.

drm/radeon/kms: check AA resolve registers on r300
http://git.kernel.org/linus/fff1ce4dc6113b6fdc4e3a815ca5fd229408f8ef

[PATCH] drm/radeon: fix regression with AA resolve checking
https://patchwork.kernel.org/patch/576101/

https://bugzilla.redhat.com/show_bug.cgi?id=680000

Eugene
-- 
Eugene Teo / Red Hat Security Response Team

Received: (qmail 14021 invoked by uid 550); 23 Apr 2025 16:02:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14000 invoked from network); 23 Apr 2025 16:02:17 -0000
Authentication-Results:garm.ovh; auth=pass (GARM-113S007233d48fb-0093-4ea5-aca1-ba846fcabecc,
                    552592F47796E622DFBC5D5B08CCFD3889157046) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:31.0.177.81
Date: Wed, 23 Apr 2025 18:02:05 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20250423160205.wndth53pj422sr34@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <575DB6B1-8A9A-46C6-AA2C-9D0695E1FF85@contoso.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <575DB6B1-8A9A-46C6-AA2C-9D0695E1FF85@contoso.com>
X-Ovh-Tracer-Id: 1080582439120809169
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvgeejtdefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepheduieehteetjeekfefftdehledvgeetuddvgfffvdfhteevtddtffeikeekgeegnecuffhomhgrihhnpeguvggsihgrnhdrohhrghdpsghushihsghogidrnhgvthdptghouggvsggvrhhgrdhorhhgnecukfhppeduvdejrddtrddtrddupdefuddrtddrudejjedrkedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhoheeffegmpdhmohguvgepshhmthhpohhuth
DKIM-Signature: a=rsa-sha256; bh=aLVEN2p0cwwSkyFZOXWmgxJz3b47rUlMqTiZ/giblVc=;
 c=relaxed/relaxed; d=jwilk.net; h=From; s=ovhmo917968-selector1;
 t=1745424127; v=1;
 b=up3eGWXikAhYgLnDpI+hRKzPZgRO0rwYniZ6J0n5settlVJW7U6ww+X1ffXmND/aT5Kzzntt
 7ccLgLel85cPvkMkwDiMCt4JhwnQL4hg0Nbl05/m/3jQl4eKH2jSF3bucVtv85Yavq+TJpRY50H
 R4SpbtwMz2ECtU/vBpySvOkNcxKEyxXX7f7SNTP+sePZ+S2W7j9ozNbQWf/9rvpskOGXd1yGHHJ
 G+dlcOjCl6fkbDVS4ZoWPKi7SjRH1z1JGmGIhCBTruDxGuT72NTjYMcrmhJExSHU8ToeoMsYRzW
 MJGI1pDujDHqmHHa/uyVx0H1IsbAEw41pFO2LnoLkVQxA==
Subject: Re: [oss-security] vulnerabilities in busybox tar and cpio tools

* Ian Norton <Ian.Norton@entrust.com>, 2025-04-23 14:11:
>https://security-tracker.debian.org/tracker/CVE-2023-39810

This is: "An issue in the CPIO command of Busybox v1.33.2 allows 
attackers to execute a directory traversal."

>see also https://lists.busybox.net/pipermail/busybox/2024-July/090851.html

This patch appears to be using a realpath(3)-like function, which is not 
a good tool for this purpose. The function is fundamentally racy, as it 
could traverse symlinks that are not under your control.

Even worse, on Linux systems you can abuse magic links in /proc to spoof 
what realpath(3) returns in a race-free manner (although that works only 
against yourself or root). See https://codeberg.org/jwilk/surrealpath 
for a proof of concept.

But it seems busybox committed a different patch, which looks good:
https://git.busybox.net/busybox/commit/?id=9a8796436b9b0641
("archival: disallow path traversals (CVE-2023-39810)")

The essence of the patch is:

+#if ENABLE_FEATURE_PATH_TRAVERSAL_PROTECTION
+       /* Strip leading "/" and up to last "/../" path component */
+       dst_name = (char *)strip_unsafe_prefix(dst_name);
+#endif

-- 
Jakub Wilk

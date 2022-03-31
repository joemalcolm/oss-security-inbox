X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["760" "Thursday" "31" "March" "2022" "15:33:18" "+0200" "Kevin Decherf" "kevin@kdecherf.com" nil "20" nil "^Date:" nil nil "3" nil nil (number mark "        kevin@kdeche Mar 31   20/760   " thread-indent "\"Re: [oss-security] SpringShell and recent OpenJDK updates\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] SpringShell and recent OpenJDK updates" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9979 invoked by uid 550); 31 Mar 2022 13:43:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32415 invoked from network); 31 Mar 2022 13:34:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kdecherf.com; h=
	cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; bh=o3UMsvVYttbG8rPUwOl+/Y6HWDClD5iGPCyPgI
	E1UmI=; b=TJ2wMRCzx8txvNwg6VblAOh2ifJVuSTeKIkdMadGIYtpZZ4ZpGrMiR
	BOEexlHWTVcDI9/TpUVDvIjFEryhbvb77av4yiNRUTpLj/Ey5HUlNJpomGRZrI/v
	JEj8QG7tBWf/M+MMwMkPCosr8PscAFGl0345bYYRRY1/4QQXZQSIoi8tRFfi5XZW
	zvGj2/caY/6ifta6AbEvpcv24GeD16p0ryEt3SQLe6o2oJppPTjFGIuQ/HGAc450
	2G3rf4xsL3/j6rzmENVjWbsUnQwLhuFPNvAlC2Mn40XwF7MpmrW79sYZg4IVmCjh
	HZy6MVGmbdukYJ56ajJlUMvpcv0dZ38g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=o3UMsvVYttbG8rPUw
	Ol+/Y6HWDClD5iGPCyPgIE1UmI=; b=MdNPL4NATUH/iqgZPpxFlpa7TjATHQ7Ay
	uhNkQTgVNiFoPlkTRzrvLaSwcnWJEoPIRa8dA4WhKlwmFNZlv9i/XKAkbGnxyPm2
	UD8WHOm2F8ql2g/MYOqwUxg34KHKd/V+5fCP14+O9VIjm5KacDdHZppY71zorGzs
	I7iJDc9Y0tjPet704A3bZh/j6NTZ67XHD3IqYFFXMsapkTCWHAeh0NMiUxgvHtxC
	H3r0e9DNRKWiRlp2tfDpCcv9GFKtrqXI5dSJWnTp1BBGPNemPpVFE9YSval6YPSw
	KE9wlTqZn6G7+iIPsOagNiweLvlm+pQVaKAeg9DmHsJwW3pJj1jlQ==
X-ME-Sender: <xms:361FYhZnMzZ-gpz3TBVYAVmMvklda9MAGxiDGFbnER3KIH7RbgCsJg>
    <xme:361FYobEvqZ2KkZfmZzPnHkZ0-vKR6SPmjpPAglnyCOPjmJudY7bdTaC78hGajv3T
    dM2MLTYyYhrPlXs8w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudeigedgieeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtsehttd
    ertderredtnecuhfhrohhmpedfmfgvvhhinhcuffgvtghhvghrfhdfuceokhgvvhhinhes
    khguvggthhgvrhhfrdgtohhmqeenucggtffrrghtthgvrhhnpeetlefgteffleffvddtff
    efjedtgeffgfegieejgedtueetteeijefhteegieeutdenucffohhmrghinhepsghughgr
    lhgvrhhtrdhorhhgpdhsphhrihhnghdrihhopdhvmhifrghrvgdrtghomhdpkhguvggthh
    gvrhhfrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
    rhhomhepkhgvvhhinheskhguvggthhgvrhhfrdgtohhm
X-ME-Proxy: <xmx:361FYj9psrq-OLOVGTQco_aKI8rpw8EeSCh5DIS3ULw7NVT1blhRAQ>
    <xmx:361FYvrVfLWan9mEKw-Ew6PUyxnVxhktQIHS_9rbRTOF__SCDmNRqA>
    <xmx:361FYsp7IbmdufvSpM_HOrosoe8AYVOTiSqzZPuyHNNK6wHE-Ob5eQ>
    <xmx:4K1FYnUJ5S3MnA39puvO6p3fDZmpJWVDDxkhYHRjJMOYekcSBgblUg>
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-382-g88b93171a9-fm-20220330.001-g88b93171
Mime-Version: 1.0
Message-Id: <5379a9a1-f13a-4d98-97b1-37c11dfe9d0a@www.fastmail.com>
In-Reply-To: <c06880b3-9447-3e3c-2c63-fd2efcfc5e4e@oracle.com>
References: 
 <CAH8yC8ngu__9q3C-pDGEAOnM=ZvuXt0m2V=BmJHH_bVa4CE1eQ@mail.gmail.com>
 <c06880b3-9447-3e3c-2c63-fd2efcfc5e4e@oracle.com>
Content-Type: text/plain
Date: Thu, 31 Mar 2022 15:33:18 +0200
From: "Kevin Decherf" <kevin@kdecherf.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] SpringShell and recent OpenJDK updates
To: oss-security@lists.openwall.com

On Wed, Mar 30, 2022, at 22:15, Alan Coopersmith wrote:
> On 3/30/22 11:31, Jeffrey Walton wrote:
>> Hi Everyone,
>> 
>> I saw Ubuntu patched OpenJDK 11 recently. [1] Was that due to SpringShell? [2]
>
> The Spring Framework is separate from OpenJDK.  (Perhaps you were thinking of
> the Swing framework, which is part of OpenJDK?)
>
> The latest I've seen on SpringShell suggests it was dropped without warning
> as a zero-day: https://bugalert.org/content/notices/2022-03-30-spring.html

Here are official announcements regarding the Spring Framework RCE:
- https://spring.io/blog/2022/03/31/spring-framework-rce-early-announcement
- https://tanzu.vmware.com/security/cve-2022-22965

-- 
Kevin Decherf - @Kdecherf
GPG 0x108ABD75A81E6E2F
https://kdecherf.com

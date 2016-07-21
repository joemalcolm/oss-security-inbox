X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["505" "Thursday" "21" "July" "2016" "22:21:59" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160721202159.GA32017@eldamar.local>" "18" "Re: [oss-security] Re: [Pkg-shadow-devel] subuid security patches for shadow package" nil nil nil "7" "2016072120:21:59" "[oss-security] Re: [Pkg-shadow-devel] subuid security patches for shadow package" (number mark "U       carnil@debia Jul 21   18/505   " thread-indent "\"Re: [oss-security] Re: [Pkg-shadow-devel] subuid security patches for shadow package\"\n") "<20160720214852.GA23823@nekral.nekral.homelinux.net>" ("<20160719093915.GA29047@suse.de>" "<20160719125119.GA7146@suse.de>" "<871t2pycqx.fsf_-_@x220.int.ebiederm.org>" "<20160720214852.GA23823@nekral.nekral.homelinux.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15786 invoked by uid 550); 21 Jul 2016 20:22:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15768 invoked from network); 21 Jul 2016 20:22:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=P6eV00QMwqgn4bD2vC6qajpNw/FHXhPx8ED793w5eH4=;
        b=YT7sBj+JrqD94u9o3UzMAtF3V26yw2XesmR75vMpYv+1StzSpvBRhcXcXyBOYz0nWE
         octNoKQ/LJ3dF45lS2Syi2bi1UhBDIE7pevVw9cwD+9KBn5KZgWyXhz5AFwlXUHvP8+z
         pmG8JVccTX2U5/Dal5jD1iWbHRELeUR5Qap14TXEDWAiE0JmORMtJAuozbA73vCrc+gQ
         9DmYoTQx04aL+Z0Ctd14I1bF1aC31pkZb749OsubaRwKP+krLsqWj3F8ijaoG81Y2ODh
         CF/3ZljBSvm4l/XAyabR6+rJN75sPv1bWCb/O8J3FLMGcBHxFOGaS9h1lTE/dPmsQ0Hy
         sVZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=P6eV00QMwqgn4bD2vC6qajpNw/FHXhPx8ED793w5eH4=;
        b=ZV+hmgLCRWs+oKohGYwQhFItYH+OAWaw2oEuByuqjdWoTRfqfGAlN1sIEdGCdRQDte
         r4YaMszb9FbcIcVjybqFlkGPFCpH5a2VWHuRKE6FJmT/FjhcYKjrwgDaxf9AuMGN4tds
         aEKQwURwoVLwIeRE04pnnmGn45zj0L7isLsoX3pOVmsdEPkIvGL83H/24Tz4x5H3qUtc
         Dd8NnrO7MRZq/WV+mlmyag9AS2sXoXncycxASMisVonC4+HHUpmN84IwbSJj8fPVaFr7
         i28fh77JypSYNTWODUPQ2FCBvV6fpXDxaVAHpjedjWU6EC8eAWfOag0iO9YgnVwQ7jeY
         Kg3g==
X-Gm-Message-State: ALyK8tJRBHcupb3JDGjt/AYgJRO+AwIrl9HsDV3PFHnQIf5j+3BoE8o6Ej673J9rpnnkIA==
X-Received: by 10.28.56.3 with SMTP id f3mr19026512wma.31.1469132527616;
        Thu, 21 Jul 2016 13:22:07 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 21 Jul 2016 22:21:59 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: "Eric W. Biederman" <ebiederm@xmission.com>,
	Sebastian Krahmer <krahmer@suse.com>,
	oss-security@lists.openwall.com,
	pkg-shadow-devel@lists.alioth.debian.org,
	CVE Assignments MITRE <cve-assign@mitre.org>
Message-ID: <20160721202159.GA32017@eldamar.local>
References: <20160719093915.GA29047@suse.de>
 <20160719125119.GA7146@suse.de>
 <871t2pycqx.fsf_-_@x220.int.ebiederm.org>
 <20160720214852.GA23823@nekral.nekral.homelinux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20160720214852.GA23823@nekral.nekral.homelinux.net>
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: Re: [oss-security] Re: [Pkg-shadow-devel] subuid security patches
 for shadow package

Hi,

On Wed, Jul 20, 2016 at 11:48:52PM +0200, Nicolas François wrote:
> Hi,
> 
> The first point looks like a non issue to me.
> 
> getlogin() is used to differentiate users with the same UID.
> The result of getlogin() is checked: if it returns a username that do not
> have the UID returned by getuid(), it will be ignored.

@MITRE CVE assignment team: This is for CVE-2016-6251. See above and
https://bugzilla.redhat.com/show_bug.cgi?id=1358622#c2 . 

Should this CVE be REJECTED?

Regards,
Salvatore

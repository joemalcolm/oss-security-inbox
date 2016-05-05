X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["862" "Thursday" "5" "May" "2016" "15:32:01" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160505133201.GA12142@eldamar.local>" "25" "[oss-security] CVE Request: OpenAFS: OPENAFS-SA-2016-002 - various client functionality leak stack data onto the wire in the clear" "^Date:" nil nil "5" "2016050513:32:01" "[oss-security] CVE Request: OpenAFS: OPENAFS-SA-2016-002 - various client functionality leak stack data onto the wire in the clear" (number mark "        carnil@debia May  5   25/862   " thread-indent "\"[oss-security] CVE Request: OpenAFS: OPENAFS-SA-2016-002 - various client functionality leak stack data onto the wire in the clear\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1981 invoked by uid 550); 5 May 2016 13:32:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1960 invoked from network); 5 May 2016 13:32:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xQthTY7QNlPWFAMttZVjsI3rjujQatJQYTHE02lzfqQ=;
        b=QtlptE95rs5FdIGmqoILXpIhD683PR4cRP8Pxk3ztBdQvjBql37rLrUFtC+43+Ngu1
         gdNBZ1GxhxPekbZVcHZ+qKfx0/nfYT16N/jgUi+uad7H4NlFR0VKyP1QLMA5YtGTPPBe
         0CRWVB9Xnk7U38sbfxCr2Amj44MgxXPPbbnR0xakHBTotbxXnecLV7mpU5xrmAeJ91dC
         Glc47ntJi0GyYSPJZL185IkSdtpxRQzarClz3Icm1rCE4W5iGzaCbgFBgW3yppBNA6Ic
         vmJRbQM4IkaHq8DvmsPaKXzqouBXg9zAdp21IAlsRn5Pq+McOE0b/Mwy27NiCLDtYixE
         AEpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=xQthTY7QNlPWFAMttZVjsI3rjujQatJQYTHE02lzfqQ=;
        b=iJmT6lfaKVnkHeSCFpdgNlCtAiTCaNHOt/AJFq38UTre8efrFb1oUYkmkZQJHR3Mq+
         0X5HU0X/jS7qYsafKCEVJ9RCVj5oXjEagOADD4QlIY0kBY7mfq4xupyJUp+DVCpVc2Kh
         8dpNMYl7SqGR0b8+c05aDvSh8umMxT6nkol2sP6nku7zD6DBPcCOvZ1/1xKJsgyuR+yw
         xYU/yva4HA78UH2GmkJyU3TbTRsyofuR5lcdjC6l3VkDjThBk3e7GuXyWH/hHIptOh1X
         a21kl218c2CpnPXyrbYhXo87fgnqkH7hqBiDlyO6CCNJluFISmqBC62KbTrGCW0wB8tt
         Mc4A==
X-Gm-Message-State: AOPr4FU+DMoz+NIehilOBQIY3UrdOtYkois7np2970EepbX3O0mlhMKjvCivrFA0h5Y2VA==
X-Received: by 10.194.85.161 with SMTP id i1mr15366087wjz.95.1462455125072;
        Thu, 05 May 2016 06:32:05 -0700 (PDT)
Message-ID: <20160505133201.GA12142@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.0 (2016-04-01)
Date: Thu, 5 May 2016 15:32:01 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: OpenAFS: OPENAFS-SA-2016-002 - various client
 functionality leak stack data onto the wire in the clear
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

Can a CVE be assigned for the following (low severity) issue in the
OpenAFS implementation:

https://www.openafs.org/pages/security/#OPENAFS-SA-2016-002

> OPENAFS-SA-2016-002 - various client functionality leak stack data
> onto the wire in the clear
> 
> Several structures used as RPC arguments contain a mask field that
> indicates which other fields should be processed by the server. In
> some cases, fields not not indicated in the mask were transmitted over
> the network without being written to, exposing the previous contents
> of that memory. Both kernel stack and userspace stack data can be
> leaked. 

Full Text: https://www.openafs.org/pages/security/OPENAFS-SA-2016-002.txt

Patches:
https://www.openafs.org/pages/security/openafs-sa-2016-002.patch
https://www.openafs.org/pages/security/openafs-sa-2016-002-master.patch

Regards,
Salvatore

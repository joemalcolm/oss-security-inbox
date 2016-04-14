X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["293" "Thursday" "14" "April" "2016" "19:23:53" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160414172353.GA5117@eldamar.local>" "11" "[oss-security] CVE Request: imlib2: integer overflow resulting in insufficient heap allocation" "^Cc:" nil nil "4" "2016041417:23:53" "[oss-security] CVE Request: imlib2: integer overflow resulting in insufficient heap allocation" (number mark "        carnil@debia Apr 14   11/293   " thread-indent "\"[oss-security] CVE Request: imlib2: integer overflow resulting in insufficient heap allocation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28426 invoked by uid 550); 14 Apr 2016 17:24:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28404 invoked from network); 14 Apr 2016 17:24:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DbTnxuStwqc3cXfUcmcLKBQUMRwlx77kXcW/8zHZcAc=;
        b=djmE234LmjJBPki4hzAXx7N2lu4vJo2tUj7uzG/axkfJYZbFE3NVXBLDIWe7CYfSpn
         UXzkezWutMjnwcHR8EL7H+IjXa8Rt4x4V3LBejhwhgyQxdmQM1FuNwebJSQBqyQ5a4dw
         fZSC7jOoP7GaiRv3AVL3FomM2DCAl2VxNX+hieKnSeFLl4JrnMq7wPaN4aUjR5Q5Aiso
         btzL850O30spGgfoGN7sOWGflxsUUfahpd7roVHd9xF95+Ak5ZdMONS1NjyY/Ik6kms7
         j7kUTr8kpkma5c4a2QOjIxvW9oPAT5JdpfE8OG0FHKZIsVnLqNApqbtv7lYaYjCBqwFc
         ONnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=DbTnxuStwqc3cXfUcmcLKBQUMRwlx77kXcW/8zHZcAc=;
        b=QvHuKmQZ8PoK2PZepB3Wv6KiKVJV3/E25LZRa57MN/XRm6h/srzerXn3m8ssC5/TRE
         uDhhFlKi1tw0raUoQyLyYAqsGo5bJ7S3PBYNWEZLBo3Bg+EHJaLTyKn+p0mwrTV6pdj7
         bP8zBTrvAyg0UXUovOaJZaEnlGyASaU8l+/EChM4h0fd6C3pQvq8OMasARxCbFc9RF/A
         khvKtqJipaypUwnribSsY8SwIf2VXlJVXYQzSiHq3DIGtlu/5dkLc5BGytyFr7yStxY1
         LqiKAOds3VkqOFfnlmso3wZEuAoY8EXAj7M4mcW679rtfWsED/gc4ai4F0+XprMZCAck
         RkLQ==
X-Gm-Message-State: AOPr4FU/CN8khp4WdFyAAHrbcIqWeaYdHpNiAvdH3bTQXupelGZSf8enr4fBNJVpNEXGhA==
X-Received: by 10.28.228.68 with SMTP id b65mr17848658wmh.47.1460654645198;
        Thu, 14 Apr 2016 10:24:05 -0700 (PDT)
Message-ID: <20160414172353.GA5117@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Thu, 14 Apr 2016 19:23:53 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: imlib2: integer overflow resulting in insufficient heap
 allocation
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

Yuriy M. Kaminskiy discovered an integer overflow in imlib2, which
result in insufficient heap allocation. The upstream fix is in

https://git.enlightenment.org/legacy/imlib2.git/commit/?id=7eba2e4c8ac0e20838947f10f29d0efe1add8227

Can you assign a CVE for this issue?

Regards,
Salvatore

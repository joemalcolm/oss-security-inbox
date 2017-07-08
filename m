X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["847" "Saturday" "8" "July" "2017" "16:11:25" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170708141125.qbk5lsuq6o6bkiwy@eldamar.local>" "22" "Re: [oss-security] accepting new members to (linux-)distros lists" "^Date:" nil nil "7" "2017070814:11:25" "[oss-security] accepting new members to (linux-)distros lists" (number mark "        carnil@debia Jul  8   22/847   " thread-indent "\"Re: [oss-security] accepting new members to (linux-)distros lists\"\n") "<20170628200239.GA25525@openwall.com>" ("<20170628200239.GA25525@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28424 invoked by uid 550); 8 Jul 2017 14:11:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28403 invoked from network); 8 Jul 2017 14:11:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6mY3zyagmvTPBQGubEP/2KrW8cRm00cJ6TRZI8r6XVk=;
        b=t13DsmdWp58i9/jMvR6a+RdFbMGniHitm15bi0fQNutD0xQGBNaNau301+GJS2Jpyb
         tc1YGMdcKLhB5h6ob2nVrebxmWAnjZVwVyhRS6K9MBs1dbqTMJt+vb4ROihgcauTyUen
         7ZzuMqO1OwtbpmOGalbm6WC/l9uh08uCliUx7bsH6nOeH+KZhtiILwSUI0kIy3HzWH3a
         bG2jaXcSytr7++Y/ggewGuzFxnWg2kjwQj3SO4s1Dk2OqPxWBvCdlk26/HBCNaulHbe5
         ohshnbGV85SMtHIy9HqsFFhnQcUuxzd8fmj4x56wDkzPVMBUgAuWlsLTz1bwjAsbkz6l
         ea2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=6mY3zyagmvTPBQGubEP/2KrW8cRm00cJ6TRZI8r6XVk=;
        b=O0AsdnFNBBgkE1qFYuxiA1DBt0frNOsGQTwF5FBcdcGIc4qiUUlWFB7VFT+SKoK58B
         7QwVlbnFQEYD0CqckFjs7sJ+1C3FBod46OmanCWmfJOPYiEMQxNZ/D4tCp/ZdlYug0z2
         Ov8pJK8Hi6jM7+NzQjsvoJpRK7WM908R8p2AzoiHiaq1WESwmZEPEkIIsTlOR5wIb15U
         9ZActJg+TDcTcArK9IK64WGiW3ko1vZPKY/CdThU1C2cu4lPZnE/WV8e0PMuNJIhk2wP
         ZMDXzF3F6aR7kHWpnFQoqwQf9BzDVfi35ODOPjBWXOavFezST2k7LUXeTF65FazXSjLl
         RV5w==
X-Gm-Message-State: AIVw111F0Kjv+5jW3U3ZJStgnotN9pSMejY5TTPjvsrySn7mSeFtFLHu
	+zfe7hGsj2zjNw==
X-Received: by 10.28.214.213 with SMTP id n204mr2384135wmg.114.1499523091672;
        Sat, 08 Jul 2017 07:11:31 -0700 (PDT)
Message-ID: <20170708141125.qbk5lsuq6o6bkiwy@eldamar.local>
References: <20170628200239.GA25525@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170628200239.GA25525@openwall.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Sat, 8 Jul 2017 16:11:25 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] accepting new members to (linux-)distros lists
To: oss-security@lists.openwall.com

Hi

On Wed, Jun 28, 2017 at 10:02:40PM +0200, Solar Designer wrote:
> 6. If CVE IDs are requested, the report is valid, and you're a CNA,
> assign those (requesting any required information from the reporter
> first)
> 
> 7. If the report does not mention CVE IDs (neither requests nor provides
> them, and doesn't mention the reporter having requested them elsewhere),
> yet the report is valid and it looks like distros will need CVE IDs, and
> you're a CNA, ask the reporter whether they have already requested CVE
> IDs elsewhere, then assign those if they haven't been requested
> elsewhere

Speaking for Debian: Debian beeing a CNA can *help* monitoring those
explicitly and assign where needed CVEs from the assigned pool.

We are already as well contributing to other tasks, and will continue
to do so as time permits.

Regards,
Salvatore

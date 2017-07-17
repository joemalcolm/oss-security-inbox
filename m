X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1048" "Monday" "17" "July" "2017" "06:41:04" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170717044104.j3gqgmkwgvekdedu@lorien.valinor.li>" "32" "[oss-security] yadm: CVE-2017-11353: race condition allows access to SSH and PGP keys" nil nil nil "7" "2017071704:41:04" "[oss-security] yadm: CVE-2017-11353: race condition allows access to SSH and PGP keys" (number mark "U       carnil@debia Jul 17   32/1048  " thread-indent "\"[oss-security] yadm: CVE-2017-11353: race condition allows access to SSH and PGP keys\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15767 invoked by uid 550); 17 Jul 2017 04:41:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15746 invoked from network); 17 Jul 2017 04:41:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=I19D9U7l9ETX35gPZ10r1Z0aeKrvwZhbiED4EObewgw=;
        b=BFSgMFIv+t+Lue73VHnnEk0lpnxfct2/CXFU1Qx2xrJfLbuw+kyt5qH7ibBeoL82tX
         4pdPjcL0oPpFajy/jbHeHv//gLHHBqhkJ4jjBdgeaTsl3nz/L+0y2JhZuHr5F0ihBRxO
         b1eSnY09UgHnqNtGVJJJVswp5NiCRZ0hEkPy9HCzaXcDmQY24vdVeDg0p2BDv8lc/Uak
         mAz9dVHlmMTw9cqZVNr5YrrMTlv6EfT5v1KCsAkKhS5rJNt8FUXwZOtJzjkEVLKI8Gwh
         gRyNkDH+bmzkltPEDBrhv9d+RLfs7ZYHRZr00Pc+Htkl4OhTw9/f00X7Z0ERyuGkyHbh
         u7ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent;
        bh=I19D9U7l9ETX35gPZ10r1Z0aeKrvwZhbiED4EObewgw=;
        b=PRJZzpyA07Vw5paSPVc8huEpYRwHBDbjjL32Ty8r8b/pqh2zRtr6Utje3HS6lcURDh
         xSUiaZgqML4X3QY/kRO+geg6nCU+1wT3JDnDQ7ngfgSKm4XaUEFVMF4n/oZAbJEM+Yg0
         d+JaNIsWsz7A4YuRNL1EoRCWjQs4wjc2hLd4oX2R8x6KXdCw8mGoHPXJ6oxmjhAWb42S
         RrOkGReHMChrW3HhGsnbLa5D5KTpcdB5XHsLLnqTBfE1cvgA+xinoY0O4bfZzxyjxWUc
         PzJ5xnKEEs3FaDlHKIE9jdfq9rxTQ3eNSERoFFkoUip4fi3JWdcbmMnvo5CiaDC3ssnO
         bVEg==
X-Gm-Message-State: AIVw113QkhlhLKxNkuScrjyB9Ipd9XCBXJh7BGJFxtLuEabjRPu0Zw4f
	RiRuptk+GSEONyrU
X-Received: by 10.36.137.8 with SMTP id s8mr3652488itd.125.1500266467241;
        Sun, 16 Jul 2017 21:41:07 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 17 Jul 2017 06:41:04 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170717044104.j3gqgmkwgvekdedu@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=unknown-8bit
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: [oss-security] yadm: CVE-2017-11353: race condition allows access to SSH and PGP
 keys

Hi

As reported by Daniel Shahaf in the Debian bugtracker at

https://bugs.debian.org/868300

yadm (Yet Another Dotfile Manager) 1.10.0 has a race condition
(related to the behavior of git commands in setting permissions for
new files and directories), which potentially allows access to SSH and
PGP keys.

Quoting his report:

> Dear Maintainer,
> 
> In its default configuration, yadm ensures that .ssh/ and .gnupg/ files are
> readable by the owner only.  That is implemented by running 'chmod' on the
> files after they have been created:
> 
>     https://sources.debian.net/src/yadm/1.10.0-1/yadm/#L671
> 
> That way has a race condition: whilst the git worktree is being checked out,
> the .ssh and .gnupg files have the permissions of the user's umask.  I added a
> debug printf just before the 'chmod' and it showed .ssh/ and .ssh/config having
> permissions «u=rwX,go=rX», i.e., world readable.

Upstream bugreport: https://github.com/TheLocehiliosan/yadm/issues/74

MITRE has assigned CVE-2017-11353 for this issue.

Regards,
Salvatore

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["836" "Monday" "5" "March" "2018" "05:15:13" "+0000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhT7V1h7fWpfJZ=9t5mWzMfyeN+s3+9u1-epeX28LdmENA@mail.gmail.com>" "24" "[oss-security] Linux kernel: CVE-2018-1065 - netfilter rule insertion may panic system." nil nil nil "3" "2018030505:15:13" "[oss-security] Linux kernel: CVE-2018-1065 - netfilter rule insertion may panic system." (number mark "U       wmealing@red Mar  5   24/836   " thread-indent "\"[oss-security] Linux kernel: CVE-2018-1065 - netfilter rule insertion may panic system.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9394 invoked by uid 550); 5 Mar 2018 05:15:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9374 invoked from network); 5 Mar 2018 05:15:36 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=FkyKj7T+k2zSfmoHhS8de0KnPMNXIYiOa26f/EbKTK8=;
        b=DedTZnhjWIhD6HwtshMPpB2HXFikwYKKboZ2/oDHUpumZ/bgXLi4TB/4kemy1GF5KJ
         76/N1B6mUXpxSxNyXn/ebtppb31GNRKlUasyMedSXYpFLMMj/j+2nJgAGPcmyhbISaPX
         2xNr2KQaYdMRGd3FfJbN9myv6uDIF1dja4TLwFVov+XwuNJAs1eR0oCH2BdivkI1IbfW
         3lwPSeDHpd/aAoJUelo7+Aa69T9cA1QofvZlLYvjQJ1wErVwCwvnoxZxXz0HsASmIyvr
         davO9m2NjhI2ssiD2MN2JVF/FvZv1f3+mVvHepoihxCmuFEnrxe9RSobS+80Diy1UojF
         dE5w==
X-Gm-Message-State: APf1xPAwRwUdo5I5Em+zn3ypn9RwyNywgIRMoeeNfu06qLNWXZHzaajH
	OR+qfWZtom3n3nhOonUn4HB/IfKEGmjbNgBFxPTDdIct
X-Google-Smtp-Source: AG47ELvvscNpYHy+/bGu/mJoh1OfBm6CS6S4pWHgNgFox0BQu7N5lSEHjKystLWQZ/I8hH3KWAON1HrwvAF0vSmCV4U=
X-Received: by 10.107.187.65 with SMTP id l62mr16182153iof.1.1520226924196;
 Sun, 04 Mar 2018 21:15:24 -0800 (PST)
MIME-Version: 1.0
From: Wade Mealing <wmealing@redhat.com>
Date: Mon, 05 Mar 2018 05:15:13 +0000
Message-ID: <CALJHwhT7V1h7fWpfJZ=9t5mWzMfyeN+s3+9u1-epeX28LdmENA@mail.gmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary="94eb2c061106cb8de50566a36956"
Subject: [oss-security] Linux kernel: CVE-2018-1065 - netfilter rule insertion may panic system.

--94eb2c061106cb8de50566a36956
Content-Type: text/plain; charset="UTF-8"

This flaw was reported to nedev via syzbot (the Syzkaller fuzzer). It is
possible that a user with the capabilities to insert iptables/netfilter
rules is able to insert a rule that can jump to a non user-user
chain/invalid chain.  This is not possible using the iptables/netfilter
libitc code, however it is possible via setsockopt with the appropriate
capabilities set.

The bug is not specific to SCTP it is just coincidental that the syzcaller
code has tripped it using this path. The patches fix both ipv6 and ipv4
paths that are able to trigger the issue.

Thanks

Report:
http://lists.openwall.net/netdev/2018/01/27/46

Proposed patch:
<http://patchwork.ozlabs.org/patch/870355/>
http://patchwork.ozlabs.org/patch/870355/

--94eb2c061106cb8de50566a36956--

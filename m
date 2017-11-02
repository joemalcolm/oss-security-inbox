X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1509" "Thursday" "2" "November" "2017" "13:09:21" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhQXo_Om-Fhbg6ZjH31h3OmqCmXgkmUTTEr7HyjVczFY+Q@mail.gmail.com>" "43" "[oss-security] CVE-2017-12193 Linux kernel: Null pointer dereference due to incorrect node-splitting in assoc_array implementation" nil nil nil "11" "2017110203:09:21" "[oss-security] CVE-2017-12193 Linux kernel: Null pointer dereference due to incorrect node-splitting in assoc_array implementation" (number mark "U       wmealing@red Nov  2   43/1509  " thread-indent "\"[oss-security] CVE-2017-12193 Linux kernel: Null pointer dereference due to incorrect node-splitting in assoc_array implementation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20004 invoked by uid 550); 2 Nov 2017 03:09:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19980 invoked from network); 2 Nov 2017 03:09:33 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=vYZFlFktVGMBu8zT2/PEkxrwIcCnTzdfJpIya1nwQGc=;
        b=EugnV3QtkQ6nmQuUXFS9I/1F8qob62ks5S/2wNEqwnH7NHT0oYdSCXK6s5n3mLATB8
         EJJzRoJCVt5Gu74YXiXT2+kBnTHoHBXiIpWI5iB3iNEvf8i7DKczuzNR/W47lKn4l+DF
         +aJP5WndZeo70FUZK1HdMthDwgt8glVld5huqujPcUNkEOoPtqjggq8orosysZTdRROq
         Fs0zyXn9S70QiTqZ8YCLasqEJkaMGupPLyFwxE07DoqTlzKWT5IRRzU8B1T0ESjwl9Jn
         isOVX22IJwvoiy1F4EtfTLVFzeaEJkO3k0f4hACKqtjDNma1wLB0iooatpm7SexJ2vU+
         XBkg==
X-Gm-Message-State: AMCzsaUANyMqUTGtJjfgHFs0DJ0jb4fw0L9S/H4WXHjv6KE/l4jwibzg
	1dTzIaehY3T1ondIw7t4HCN4yXC/jzXY98uRHjmLJhr14ps=
X-Google-Smtp-Source: ABhQp+S7Q7gnBjvNr7RARXIRc6M+0oCccJKIis4ac7tO0e73wXFAc3yIY4iJn85sU4ThVqJOMliCdt9TwxN7TWbNFuI=
X-Received: by 10.107.69.25 with SMTP id s25mr2589644ioa.189.1509592161385;
 Wed, 01 Nov 2017 20:09:21 -0700 (PDT)
MIME-Version: 1.0
From: Wade Mealing <wmealing@redhat.com>
Date: Thu, 2 Nov 2017 13:09:21 +1000
Message-ID: <CALJHwhQXo_Om-Fhbg6ZjH31h3OmqCmXgkmUTTEr7HyjVczFY+Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2017-12193 Linux kernel: Null pointer dereference due to
 incorrect node-splitting in assoc_array implementation

Gday,

A flaw was reported to Red Hat by Wu Fan regarding a kernel panic/oops
based on a flaw in the assoc_array implementation used heavily by the
keyring subsystem.

The flaw description explains it better than I will:

---
Fix a case in the assoc_array implementation in which a new leaf is
added that needs to go into a node that happens to be full, where the
existing leaves in that node cluster together at that level to the
exclusion of new leaf.

What needs to happen is that the existing leaves get moved out to a
new node, N1, at level + 1 and the existing node needs replacing with
one, N0, that has pointers to the new leaf and to N1.

The code that tries to do this gets this wrong in two ways:

 (1) The pointer that should've pointed from N0 to N1 is set to point
     recursively to N0 instead.

 (2) The backpointer from N0 needs to be set correctly in the case N0 is
     either the root node or reached through a shortcut.

Fix this by removing this path and using the split_node path instead,
which achieves the same end, but in a more general way (thanks to Eric
Biggers for spotting the redundancy).
---

Thanks to: Fan Wu, Haoran Qiu, and Shixiong Zhao supervised by Dr.
Heming Cui from the department of Computer Science, University of Hong
Kong" for reporting this issue.

Upstream patch:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ea6789980fdaa610d7eb63602c746bf6ec70cd2b

--

Best regards,
Wade Mealing| Red Hat, Inc. | Product Security Engineer

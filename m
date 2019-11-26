X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["707" "Tuesday" "26" "November" "2019" "08:53:20" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" nil "20" nil "^Date:" nil nil "11" nil nil (number mark "        huzaifas@red Nov 26   20/707   " thread-indent "\"[oss-security] grub2-set-bootflag utility causes grubenv corruption rendering the system un-bootable\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] grub2-set-bootflag utility causes grubenv corruption rendering the system un-bootable" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25847 invoked by uid 550); 26 Nov 2019 03:23:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25829 invoked from network); 26 Nov 2019 03:23:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1574738607;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=kQWFEkXaQNdb4qf18M+kdTsHEgsWIosGMlbv2PAwZCg=;
	b=cAEx/pl+ace1uP3hCo6usFyY+BO+ZGP9RwQKXPsLh0p9XO68upmAMTguwDzDNaQudc170Y
	+u/E9ZS/cruzCXX8DEZXkTC7CkW4wf8zmNsdZshLDn5WhmEA1tAHHOxP4JDFvsD2vvJdcn
	vW4UEHTF19lhXS5k6hzk33yg1Hj0suo=
Autocrypt: addr=huzaifas@redhat.com; keydata=
 mQGiBETun5sRBACOCWbRM5KLDngL46w371lRBMCCmBRpzQHXuxllk1dbku3GYQu5ApCYVvck
 45GWqFAYqWVjXGjEOnATxg693FI3Mw8tv8E9JED1OMbyaI4bhUxP1H7Ia89BOEFHjHKR7VPY
 S9tSwvTr2AkjK1j+CrMcWmV2rL4KooRk/ykB/4joJwCgnoMEbrNCrnSIiZNGxS7Okxgknb8D
 /AxkMwysc39T68fp0AOAr4wNrwWzgBPqjyF0As5n9ewZie9Z+uqqGCnjn9XgMmMNkL1DsXXs
 4dJXaFrAdlcArtWaiQX/d2nZaZj8kw9D7ADudBTA0YzAnVQGk4wf2zL9WT/YwYhV3Sb1TERa
 H6g4gg8b+KwsbmhJSrqsg06mWR3eA/9j86ollyU31Fq/qIjsbHR+tSManlv57wGiH9luburk
 bUSFgLo9t2h6bHZ4sTQyt6aJcxXzon2IuiTYVpDrnoAfYfvFvzSae0BPG7nP8moAL7X1nnW0
 xP8+ZATAqwds75yAQMpGRXuOntFl5ZL1xmzzeDS5aUfMg3gC9M0jIWK3zbQsSHV6YWlmYSBT
 LiBTaWRocHVyd2FsYSA8aHV6YWlmYXNAcmVkaGF0LmNvbT6IXgQTEQIAHgUCRO6fmwIbAwYL
 CQgHAwIDFQIDAxYCAQIeAQIXgAAKCRDMcNzy2lva5e+DAJ4hG6WLhJfmJ27UOKZLPRi3gVNx
 owCeP5f7Cp5aU4DXyK3X81poNLIW2i25AQ0ERO6fnRAEALle4LaG+djyt8slfQbwAPf06dgz
 bC6o1TcPg/ZRSE8TSE6d1fRkLSLJJZSW9gGpl5fphNYUSzarFKP4xLRol/fZCY4tupcAv+Vm
 jfzaLqdIiy+G6ei1UpQTP6uRHxLdtXmMmg6kWds0ZavEU2+y18HzAczCCPBQN30dd/1/5jUn
 AAMFBACOEdEjzZIQmK6ciB6TymIcD8nf6Jn0zz6+DjxrtdEnP7V/zyZgv/tD1GdneOBaGJTL
 FTqT5vNSsmMTtQ03tjg/e4+P1MX8YcbhObj186Js47moYoeWgfAGZlFd6mNl/aSITVSHsooF
 zVi9Xs6zKZNWsY2LcENMnE/xM7Qdpi5ChIhJBBgRAgAJBQJE7p+dAhsMAAoJEMxw3PLaW9rl
 XKEAnjySXTUlGFzWQ9BiLx5Fo91JziLYAJ4lQdBofA+Gf1Vewb/61ilmdq4Qqg==
Message-ID: <3ed3a6cd-088e-c164-4b1e-53753d79960b@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: S-G8NbSAPC6DH_Trh9_XPQ-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Tue, 26 Nov 2019 08:53:20 +0530
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] grub2-set-bootflag utility causes grubenv corruption rendering the
 system un-bootable
To: oss-security@lists.openwall.com

Hello All,

Tavis Ormandy reported a flaw in grub2-set-bootflag utility of grub2.

grub-set-bootflag is a command line to set bootflags in GRUB's stored
environment. This is a downstream utility which is shipped with Red Hat
Enterprise Linux 8 and Fedora. A flaw was found in this application
which would could allow a local attacker (someone having a local account
on the system) to cause grub configuration files to be truncated.
Whenever the machine was rebooted, grub would fail to read the
configuration files and the system would be rendered unbootable.

More details and patches available in:
https://bugzilla.redhat.com/show_bug.cgi?id=1764925



-- 
Huzaifa Sidhpurwala / Red Hat Product Security


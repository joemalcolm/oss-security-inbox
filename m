X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1439" "Tuesday" "27" "October" "2020" "13:23:01" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<4505d03f-b9a3-3fab-2441-2f64dacc9773@redhat.com>" "38" "[oss-security] CVE-2020-25654 pacemaker: ACL restrictions bypass" nil nil nil "10" "2020102707:53:01" "[oss-security] CVE-2020-25654 pacemaker: ACL restrictions bypass" (number mark "U       huzaifas@red Oct 27   38/1439  " thread-indent "\"[oss-security] CVE-2020-25654 pacemaker: ACL restrictions bypass\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-25654 pacemaker: ACL restrictions bypass" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3265 invoked by uid 550); 27 Oct 2020 07:53:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3238 invoked from network); 27 Oct 2020 07:53:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603785198;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=l25Mb23bIVTfTzx4adqnyFlUtXZ1ote8jyuU+vFeVWA=;
	b=aYragv8QGNDrPovV7tEkUMBGvZoKFyHeIV5V/yl3K/XTUbuybxcw2FkwOsD+CYYAoUm2pj
	H1AlHoYA2q5ef7ueukcKDyAUREFT/IOVsYh/xALoAVckURybZenAKwn6i8MjKOn01Ocvs5
	0S34wHWnDDC81JBq5hScGAoEXO741v8=
X-MC-Unique: WmPWRJ6lM0ySohDzFuhYkw-1
To: oss-security@lists.openwall.com
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
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
Message-ID: <4505d03f-b9a3-3fab-2441-2f64dacc9773@redhat.com>
Date: Tue, 27 Oct 2020 13:23:01 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=huzaifas@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2020-25654 pacemaker: ACL restrictions bypass

Hi All,

Pacemaker is a high-availability cluster manager comprising multiple
daemon processes that interact with each other and with user requests
via IPC.

Users must either be root or in the haclient group to access Pacemaker
daemon IPC.

One of these daemons, pacemaker-based, manages the Pacemaker
configuration, known as the Cluster Information Base (CIB). Pacemaker
may be built with support for Access Control Lists (ACLs) in which case
pacemaker-based applies configured ACLs when processing user requests to
read or write any part of the configuration.

When ACLs are not in use, any user in the haclient group has full
access to the configuration, which effectively gives them the ability
to run any code as root. (This is intentional, as the point of a
cluster manager is to run arbitrary services.)

When ACLs are in use, users still must be in the haclient group, but
their read and write access to various parts of the configuration is
limited by configured ACLs.

The vulnerability is that users may use IPC communication with the
various daemons directly to perform certain tasks that they would be
prevented by ACLs from doing if they went through the configuration.
This is not difficult; Pacemaker provides command-line tools to send
many types of IPC requests.


More details along with patches is available at:
https://bugzilla.redhat.com/show_bug.cgi?id=1888191


-- 
Huzaifa Sidhpurwala / Red Hat Product Security


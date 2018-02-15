X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2041" "Thursday" "15" "February" "2018" "23:07:20" "+0000" "Paul Jakma" "paul@jakma.org" "<alpine.LFD.2.21.1802152258500.12267@stoner.jakma.org>" "53" "[oss-security] Quagga 1.2.3 release with BGP security issue fixes" nil nil nil "2" "2018021523:07:20" "[oss-security] Quagga 1.2.3 release with BGP security issue fixes" (number mark "U       paul@jakma.o Feb 15   53/2041  " thread-indent "\"[oss-security] Quagga 1.2.3 release with BGP security issue fixes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19527 invoked by uid 550); 15 Feb 2018 23:09:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17586 invoked from network); 15 Feb 2018 23:07:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jakma-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:user-agent:mime-version;
        bh=09NUIxHKxBfPH6YMBhnRmu78uP17VhupHprCKS/lOUs=;
        b=mmPUFt3TiCHcrSMXBQERupU+thE5Yuw/meyZBN4A6Kdp7SFiSgNApnUiphT+FDUNdL
         vjtIZgyk0DACSl8EWgD1WxVhFkZvwtpxUm2oZ64emMJZJwKF6TCzmIIXEQxq/6H3jfMk
         fCJgDo5Ko0l402YHvgaUnjbC9M1ijdNB14YJs/XQUBdNhCOoVWspLLK3+GkRqmZvnA4v
         LbrbwSIXBwvXDFjXthkJvcR8gqhAgwQ+pWy7eosJcnGdxHxK4KeuAhQKA11McY+lZq1M
         vLe8a584YSITUO1W6x4vaW8cSOVTEHBrYAUYWJdxCFvYmYskdV0k+Wgnx3d499+R22tL
         BSMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:user-agent
         :mime-version;
        bh=09NUIxHKxBfPH6YMBhnRmu78uP17VhupHprCKS/lOUs=;
        b=H/6rh/NmiwFZfsbRRc/Go/56IK3g4meM3yenMAmyCZQd1UZEaeGjwQ6at3jBOqQNJS
         QYIHqoJE56OhR4byCx2hIEMObZBHTvep17Bn/MWHVtkqpUYV8elfekgMQTSLOvhrx9x+
         eGsGieowJJfUMVOtuOm352BoxBHkGbseDmZgtEN6Cefje+efYzDmB1SveruoUcttRN95
         jcxav0wBFtJXai3xW9fLMvMRk4DrLB9fBEGb7sIdT0T9gQ5WAuXcQvYWwQcZT/JbXlbb
         YSPFn2ZtbRfOQOmnF+cU9npZINDb6ObBB6Wbkf29qO2hPqqOggMiQLreOkuWn9qXe90f
         OyYg==
X-Gm-Message-State: APf1xPASPQVgRzFkv/UZb+9CFFqqLFEgo2ry9+7Ki2TC6Yskao7IrrZv
	1JLcAJt5XhrW6GGgRA7s9WcO1WuA
X-Google-Smtp-Source: AH8x2258eY+gybR2tDC6qCURuDSbP03aJ89P0ObYN5yD3NVM2tASw3h5WjYigggV7N0WLNxIn9USOA==
X-Received: by 10.157.52.145 with SMTP id g17mr3214696otc.320.1518736047080;
        Thu, 15 Feb 2018 15:07:27 -0800 (PST)
Date: Thu, 15 Feb 2018 23:07:20 +0000 (GMT)
From: Paul Jakma <paul@jakma.org>
To: oss-security@lists.openwall.com
Message-ID: <alpine.LFD.2.21.1802152258500.12267@stoner.jakma.org>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
X-Snooper: A life spent reading others private email is a sad and wasted one
X-NSA: nitrate toxic DNDO hostage al aqsar fluffy jihad DHS cute musharef kittens jet-A1 ear avgas wax ammonium bad qran dog inshallah allah al-akbar martyr iraq hammas hisballah rabin ayatollah korea revolt mustard gas x-ray british airways hydrogen washington peroxide cool FEMA emergency four lions encryption ricin table pandemic scanner power sleet catalyst injection acetone toluene amatol
X-KEYSCORE: The greatest long-term threats to freedom and democracy are based in Langley and Fort Meade and Cheltenham
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] Quagga 1.2.3 release with BGP security issue fixes

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi,

Quagga 1.2.3 has been released, and it contains fixes for a number of 
BGP security issues, 3 of which were not public till today. Please see:

   http://savannah.nongnu.org/forum/forum.php?forum_id=9095

The CERT vulnerability note is at:

   https://www.kb.cert.org/vuls/id/940439

Quagga advisories are at the URIs in the release announcement, also 
available via either of:

   https://gogs.quagga.net/Quagga/quagga/src/master/doc/security
   https://git.savannah.gnu.org/cgit/quagga.git/tree/doc/security

Quagga-2018-1114 can be triggered by receiving a transitive BGP 
attribute - meaning it potentially could be triggered by a message sent 
by a BGP speaker far away. It involves a double-free, which could be 
serious, depending on the malloc implementation. See:

  https://gogs.quagga.net/Quagga/quagga/src/master/doc/security/Quagga-2018-1114.txt

Vendors are encouraged to provide backports to older releases.

Quagga users should upgrade to a release appropriate for their stability 
needs with the relevant fixes applied.

regards,
- -- 
Paul Jakma | paul@jakma.org | @pjakma | Key ID: 0xD86BF79464A2FF6A

-----BEGIN PGP SIGNATURE-----

iQJMBAEBCAA2BQJahhKpLxpodHRwczovL3d3dy5qYWttYS5vcmcvfnBhdWwvcGdw
X3BvbGljeS0xLjEudHh0AAoJEOFGbL/NtBuaDNsP/2l3tczRgiGVpoiDu3yAWkWT
Q4VSv7lbDgorvm5FYDiEPr8e7rp6ERiJNGjjlpl907pmDU2TAEaeQI3PQj4I9uag
hv4sq1+n/ODoXPGtlQKsDWN4ob0B3fZ6bOh8a4Y6iUl9s0ESk0Ogi34k7hjqjWp2
4RbjpLbLMOAF3IOZo3uFoA9+Uzr8jDkC6FVNULfcWDOaTlagjJgE+Amr0a6gM+yK
DSjYommtAmqSrV3/Wv3uC96/whWnjzTZluObBTc8FVWy9zxP5zwvRMirDxehWrEh
N9C9A38ZsfXMQ+IWbaosdCClMNSZqbiRSZP6aNmBk9/HlSUK6yF6e6jNOzmiPdy3
0n1507rkfBInu5ALeqs/DyWGqVLkV2h+RHKJyUCIzmHaBomHf3MS9iPBy+63whQg
aGPuT6283dzcjD20qYY1u0KLziRVHg8TdDu4aCy3UXD/w2pvbn3Nymo3RoL/g20/
9VylvokNujnzaGxjG9nc5/fqA/XKkT9G/7sCnG2OHU7hheaPrq/6+7OL4RCS6kz4
iL40V0RDp26yg7lHm51MtCEHn91yv5wFKnG2fESfkUUMTeqO8jiThbl8UOYE4j/l
66VvLca/XwP4r0KASmrM8O3PiktmulGg2TTCo30nx4bmr30j10dGtteBQupwpRWn
UXXvosef5rPdV887X4EK
=YNE6
-----END PGP SIGNATURE-----

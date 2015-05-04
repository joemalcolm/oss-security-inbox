X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["481" "Monday" "4" "May" "2015" "07:35:51" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150504053551.GA10559@eldamar.local>" "18" "[oss-security] CVE request: libarchive: Out of bounds read using malformed cpio archive" nil nil nil "5" "2015050405:35:51" "[oss-security] CVE request: libarchive: Out of bounds read using malformed cpio archive" (number mark "        carnil@debia May  4   18/481   " thread-indent "\"[oss-security] CVE request: libarchive: Out of bounds read using malformed cpio archive\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32397 invoked by uid 550); 4 May 2015 05:36:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32376 invoked from network); 4 May 2015 05:36:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=joyqNghH7gHq3s0aDMygBUcKQZFqwvvTTRNRpnb0b9Q=;
        b=cI3BounopenI/cSebN7BwPCIu7CCZWFKFRowi+LS5MdzlqKvK0X3Rx7lHVVCdek5wZ
         ROP8B/IYS9sD5jKBVCpoaDZ3Q7F1aiDkjrrRXtm5CSLGNW10yM+/VNFzFgZknBUc2G/Z
         IgeUnsJL3OtPugPZe255oN28ZZfP4iB2BjRz3hG7mx/h6C0UU4gu2Dx3VYBoDwU7mSxS
         hGN2PAkhOOVVxRPcyEJ5OW3XuRfWJcri9CqGtzIGiY/vE/k2iSK7oS2EJb2lHWfcXof/
         oLfkXqS66GYSL34uXXJs9OwgpUJHYB7mBrW5Y9ezKSD1EIS+tpFJ7u96ily6ULc9Xm16
         bS6A==
X-Received: by 10.180.160.169 with SMTP id xl9mr16602801wib.42.1430717754120;
        Sun, 03 May 2015 22:35:54 -0700 (PDT)
Message-ID: <20150504053551.GA10559@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Mon, 4 May 2015 07:35:51 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE request: libarchive: Out of bounds read using malformed cpio
 archive
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

Could a CVE be assigned for the following issue in libarchive:

Advisory by Paris Zoumpouloglou:
http://seclists.org/fulldisclosure/2015/Apr/102

Upstream bugreport (including reproducer for the issue):
https://github.com/libarchive/libarchive/issues/502

Fixing commit:
https://github.com/libarchive/libarchive/commit/e6c9668f3202215ddb71617b41c19b6f05acf008

Additional reference in Red Hat's bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1216891

Regards,
Salvatore

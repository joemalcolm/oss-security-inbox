X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["948" "Thursday" "7" "July" "2016" "13:49:24" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160707114924.GA15061@eldamar.local>" "24" "[oss-security] CVE Request: perl: XSLoader: could load shared library from incorrect location" "^Cc:" nil nil "7" "2016070711:49:24" "[oss-security] CVE Request: perl: XSLoader: could load shared library from incorrect location" (number mark "U       carnil@debia Jul  7   24/948   " thread-indent "\"[oss-security] CVE Request: perl: XSLoader: could load shared library from incorrect location\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30295 invoked by uid 550); 7 Jul 2016 11:49:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30276 invoked from network); 7 Jul 2016 11:49:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ilVsKKG+tS3K2Mt8+jceCJoETs0mNrMw45nJq0m3+eM=;
        b=LFVAmXg27DvIkNIn6SwJUNT0hSZ8kVSuvzHjdZu4nwlZPcEQs/oQwvSzHqQElpCqBf
         YBLDPN1pGYJ0/tv7bb9uor8aXDgbn2WMKGT+11xFoeDXEAFcJujnoY496IRJw+tFV5fB
         rFLFsVPx65j6tPsE0UYxEK/yW+c67CO7yvUiDkLZTaigBSjcg6boaCpdqZK+cMzatsv9
         X5O2TG4rY+D2BU+s2LNK8Mr3e2Mw+wcrT7zVm1tc8AoYnNdrkLpXnoYsVVZ2S9Yc02ov
         vDEiLmnbb0abx+GUbaW8sSFd2AAM2gZ+y5El1fqHMKtTf8eI+IAk9MXIdn01MmBq2LX3
         6xCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=ilVsKKG+tS3K2Mt8+jceCJoETs0mNrMw45nJq0m3+eM=;
        b=ewuWoCo15Nf9TLmKz1EX2+E4/iAgsjnKqLFvqK51LoJ1wRO2EkJ+dETayyzNgVML8j
         dUCU1WvyRCl7/CRYvPf+MMmHTEre8mnIavwRHfZ9jMSCCAXd5b5o6NvHGov0KKypVddh
         v0j6xl4guF9+O0x1KWIQ6Fm2E1cvjdUp80VtZ911cGWUNnLURCw9qHZiOz59u77Qb/H5
         eHzotNnBEPbtAtX3RZSNSJvyNXnPgyfQfbTkLr0MDwk65W8lmc7CdgrnBkZ3WwFk4dT6
         wPQzNyNLEzNIww1+rsmaoo2pqLndeblzx4jwR7IMnHn0W8w165iTm3H/56KHmOa8u1xl
         SiHg==
X-Gm-Message-State: ALyK8tIxzWyk6bpRNjI+BBaJhmnF8+94T/MQOm9vxAg/ryi0W6z5u+LciU9lbeRz2KxnsQ==
X-Received: by 10.194.168.225 with SMTP id zz1mr28553383wjb.114.1467892149925;
        Thu, 07 Jul 2016 04:49:09 -0700 (PDT)
Message-ID: <20160707114924.GA15061@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: perl5-porters@perl.org
Date: Thu, 7 Jul 2016 13:49:24 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: perl: XSLoader: could load shared library from
 incorrect location
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi,

Jakub Wilk reported in [1] that the Perl module List::MoreUtils tried
to load code from a subdirectory of the current working directory
despite explicitly removing the current directory from @INC, which
could lead to the execution of arbitrary code if cwd is unstrusted, as
demonstrated in the bugreport.

While analyzing the issue[2], it turns out that the issue is actually in
XSLoader, which uses caller() information to locate the .so file to
load. This can be incorrect if XSLoader::load() is called in a string
eval. The fix commited upstream is [3].

@MITRE: Could you please assign a CVE for this issue in XSLoader? Do
you think List::MoreUtils needs a separate CVE as well, despite the
underlying issue lying in XSLoader[4]?

Regards,
Salvatore

 [1] https://bugs.debian.org/829138
 [2] https://rt.cpan.org/Ticket/Display.html?id=115808
 [3] http://perl5.git.perl.org/perl.git/commitdiff/08e3451d7
 [4] https://bugs.debian.org/829578

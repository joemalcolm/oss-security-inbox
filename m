X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1340" "Friday" "28" "August" "2015" "15:50:03" "+0530" "Dis close" "disclose@cybersecurityworks.com" "<CAMWaY3M07iTMoOswVgZR172J-4PB6UN6Xt0TsoZXKsUGSwdNxw@mail.gmail.com>" "61" "[oss-security] CVE Request - LFI/Path Traversal in NextGen Gallery WordPress Plugin." nil nil nil "8" "2015082810:20:03" "[oss-security] CVE Request - LFI/Path Traversal in NextGen Gallery WordPress Plugin." (number mark "U       disclose@cyb Aug 28   61/1340  " thread-indent "\"[oss-security] CVE Request - LFI/Path Traversal in NextGen Gallery WordPress Plugin.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17854 invoked by uid 550); 28 Aug 2015 10:24:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11598 invoked from network); 28 Aug 2015 10:20:15 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
         :content-type;
        bh=izj0PVSWoh5GIFQ6GA6sO+l9ryWk0MBy6Q/y1eyhV8A=;
        b=HEnzSRs6lHz5myVoUJuM/A9f0UWrwHp5ZwqleEQdy8Bk0aKRZPX7K8y82nLcoxcOq8
         bPNa+fFGEt47qQhryN7zFmncGGpdp+Jfef4k+/te2QmB4KihVbZ9LpLhsb+csfBh3HQl
         IozxcCBk8sSXzeU9QS7G/uhJVSNhj/vlIBnVPr/MJmiY9Pn/mF2itc0eWoUgHX9ceAID
         emKzB6IUtnJaV66/YdtJGyphkufIa1EkLp6HyzbAJppp+Lr/zU3pgQKn2GFPvbjGIacR
         Z4wEtNO0thooKdEqUT0ErDzvwoGO3chjKTYPtSbJzdEZksCUgTq8OhCqZli7M/ZqQE0T
         aCVg==
X-Gm-Message-State: ALoCoQmE9BDkcK6qzQGlw5AdZfE9j1y3qiTS0U94I6GSJIMJMlafFExyW33pXRM7RrI+I/8QRvnC
MIME-Version: 1.0
X-Received: by 10.50.13.10 with SMTP id d10mr2894433igc.20.1440757203830; Fri,
 28 Aug 2015 03:20:03 -0700 (PDT)
Message-ID: <CAMWaY3M07iTMoOswVgZR172J-4PB6UN6Xt0TsoZXKsUGSwdNxw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e0118487457c83a051e5c6d1e
Cc: cve-assign@mitre.org
Date: Fri, 28 Aug 2015 15:50:03 +0530
From: Dis close <disclose@cybersecurityworks.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request - LFI/Path Traversal in NextGen Gallery WordPress Plugin.
To: oss-security@lists.openwall.com

--089e0118487457c83a051e5c6d1e
Content-Type: text/plain; charset=UTF-8

Hi List:


We are requesting CVE for the below mentioned security issue in NextGen
Gallery Plugin:


Plugin Details:
==============
Plugin Name: NextGen Gallery
Version: 2.1.7
Homepage: https://wordpress.org/plugins/nextgen-gallery/



Description
===============
NextGEN Gallery is most popular *WordPress Gallery Plugin *with over 13
millions downloads.

Vulnerability
===============
The plugin fails to validate user input in one of the variables, which
allows a  log-in user to access system files and other unauthorized files
on the server.

POC Video Link: https://www.youtube.com/watch?v=KkPVMxubUis


Proof of Concept
================

Accessing the POST request http://localhost/wordpress/?photocrati_ajax=1
and modifying the *dir* variable with ../../../ input user can traverse
file system and access files even outside the application directory.


Disclosure Timeline
==================

17-02-2015: Reported to WP Plugins
18-02-2015: Acknowledged by WP Plugin, saying that vendor will be informed.
But till now no response from WP plugin or vendor.


Discovered by ( Please provide credit to following)
=====================================

Sathish Kumar
Cyber Security Works Pvt Ltd.


----------
Cheers !!!

Team CSW

--089e0118487457c83a051e5c6d1e--

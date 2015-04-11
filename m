X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["829" "Saturday" "11" "April" "2015" "21:31:54" "+1200" "Matthew Daley" "mattd@bugfuzz.com" "<CAD3Cand-BMAZvKPWt7VORYxzZGemmYPqdKmp2F-m1b2izT4_6g@mail.gmail.com>" "19" "[oss-security] CVE request / Advisory: Floating Social Bar (Wordpress plugin) 1.0.1 - 1.1.6" nil nil nil "4" "2015041109:31:54" "[oss-security] CVE request / Advisory: Floating Social Bar (Wordpress plugin) 1.0.1 - 1.1.6" (number mark "        mattd@bugfuz Apr 11   19/829   " thread-indent "\"[oss-security] CVE request / Advisory: Floating Social Bar (Wordpress plugin) 1.0.1 - 1.1.6\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3214 invoked by uid 550); 11 Apr 2015 09:32:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3194 invoked from network); 11 Apr 2015 09:32:06 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
         :content-type;
        bh=kG+cIvJU65bMddXulTE+mOzzn0DbGuVN7otD+3t/+J8=;
        b=AfzJz1pmwR7Kw/Tg+dw9o0LNiWmALG0cTAngqC5DDh69sbFvLCl/t5uAL0s93TJLrQ
         jQQs5IslOrQHfGBHqyj13dHdvLWqKbB0zxvU+tdxfjP+Q3/N/NSM2ZVC/atOxiX4A4d/
         7rdbprYmYsAd2QRC43xVMHtEWjefcghwOuKWG+i4Eu/swCn3hqOu9AIAJpq97Lxxt+lf
         mL0GdoqM8KDODopZMuunIcN2wGq93Wr4EgTUYp+fCjYVZstb0LTRIEuMzbr7tDjCTpWU
         pBpi7c9Xt5yls9aqP0kZPJdqBVzTne2hIRBTcDqCG7SU+MsbCukzkDX/MOj4c2kTzeCL
         1IHA==
X-Gm-Message-State: ALoCoQmWTTsJiwK26n8B2omrmbC8eljXmfruElDWPxJEGYyLpwBeF9N87zMpVECIOviLHcx5i8zx
MIME-Version: 1.0
X-Received: by 10.180.82.100 with SMTP id h4mr4846839wiy.84.1428744714921;
 Sat, 11 Apr 2015 02:31:54 -0700 (PDT)
Message-ID: <CAD3Cand-BMAZvKPWt7VORYxzZGemmYPqdKmp2F-m1b2izT4_6g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: cve-assign@mitre.org
Date: Sat, 11 Apr 2015 21:31:54 +1200
From: Matthew Daley <mattd@bugfuzz.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request / Advisory: Floating Social Bar (Wordpress plugin) 1.0.1
 - 1.1.6
To: oss-security@lists.openwall.com

I'd like to request a CVE ID for this issue. This is the first such
request; this message serves as an advisory as well.

Affected software: Floating Social Bar (Wordpress plugin)
Affected versions: 1.0.1 - 1.1.6
Website: https://wordpress.org/plugins/floating-social-bar/
Reported by: Matthew Daley

Description: One of the plugin's unauthenticated AJAX action handlers
is vulnerable to a stored cross-site scripting vulnerability. By
invoking the action with certain parameters, it is possible for
unauthenticated attackers to force the persistent injection of
arbitrary script across the site's post pages.

Fixed version: 1.1.7
Fix: https://plugins.trac.wordpress.org/changeset/1129648/floating-social-bar/trunk
Changelog: https://plugins.trac.wordpress.org/changeset/1129648/floating-social-bar/trunk#file5

- Matthew Daley

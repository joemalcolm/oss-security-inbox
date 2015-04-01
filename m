X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3334" "Tuesday" "31" "March" "2015" "18:34:21" "-0700" "Chris Steipp" "csteipp@wikimedia.org" "<CAKcmtDzP7GhQWdTNb2XaVD1dzfDPXzyjWRhoYaKPrZy+NALygA@mail.gmail.com>" "74" "[oss-security] CVE request: MediaWiki 1.24.2/1.23.9/1.19.24" nil nil nil "3" "2015040101:34:21" "[oss-security] CVE request: MediaWiki 1.24.2/1.23.9/1.19.24" (number mark "        csteipp@wiki Mar 31   74/3334  " thread-indent "\"[oss-security] CVE request: MediaWiki 1.24.2/1.23.9/1.19.24\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32465 invoked by uid 550); 1 Apr 2015 01:34:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32440 invoked from network); 1 Apr 2015 01:34:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wikimedia.org; s=google;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=1Vh/ySonQchghqgDCIAiC9y4uGYiXaWTsby/Xn50lbQ=;
        b=ee/N2gJbX4tMvc0SvqbeH6Wq4MVCs6m0SXNeW5BgWfh+ZXj4pwtf3ZHgw6lSvEMPwE
         hgekFZdyCz/tDBFyOP0bun4oAyiGC9y3gFW+Lo/JJmxNl7KCLbDGWc6vkPWpQrrS56Dn
         yeZ8eqf2Z8EgaEXEPg7DU92nsrzY1d8cJyQaA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=1Vh/ySonQchghqgDCIAiC9y4uGYiXaWTsby/Xn50lbQ=;
        b=b1WMLrdF/HYg5Sk1cyEK622vJ+K2DW5bL/LAo+9CuLqND0sHPLwApzbWGVrm7yCz5X
         E5RQyT0ScjVWa1cUGsEqqMe3N/DXriPLD9152eFU1fWi9uEdgY9j7xAbZkMimuH27I2A
         9grYFrdg4HZSMtP4dVF9M5ulji743//LfODM21wL147k/hLtbwGoJFXzoDXTMHoZkq1M
         gIYcugmQyZp+0YfNjGlVq/ODyds73sneDdKB8W7VoBXi4XTo56dLJJ5IgmSfBPfIVB2T
         MhzPdE6Xvq7p4DLRRepS50bkYM1EJkFvuHqPgU7UJ2ux1K2D+uwmJeQDLre11EfZKdkh
         f+Kg==
X-Gm-Message-State: ALoCoQnUPyJeAHiAB8hJ586UIOGHmjMrHDSL1MDITfI9/9myaZq9cbjW77qbkLdjSMK/T42/KWdf
MIME-Version: 1.0
X-Received: by 10.141.18.131 with SMTP id u125mr35369153qhd.78.1427852061190;
 Tue, 31 Mar 2015 18:34:21 -0700 (PDT)
Message-ID: <CAKcmtDzP7GhQWdTNb2XaVD1dzfDPXzyjWRhoYaKPrZy+NALygA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113ecbc2e63d2205129fb6c1
Date: Tue, 31 Mar 2015 18:34:21 -0700
From: Chris Steipp <csteipp@wikimedia.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: MediaWiki 1.24.2/1.23.9/1.19.24
To: oss-security@lists.openwall.com

--001a113ecbc2e63d2205129fb6c1
Content-Type: text/plain; charset=ISO-8859-1

Hi, we patched several security issues in MediaWiki today. Could we get
CVE's assigned?

* iSEC Partners discovered a way to circumvent the SVG MIME blacklist for
embedded resources (iSEC-WMF1214-11). This allowed an attacker to embed
JavaScript in the SVG. The issue was additionally identified by Mario
Heiderich / Cure53. MIME types are now whitelisted.
<https://phabricator.wikimedia.org/T85850>

* MediaWiki user Bawolff pointed out that the SVG filter to prevent
injecting JavaScript using animate elements was incorrect.
<https://phabricator.wikimedia.org/T86711>

* MediaWiki user Bawolff reported a stored XSS vulnerability due to the way
attributes were expanded in MediaWiki's Html class, in combination with
LanguageConverter substitutions.
<https://phabricator.wikimedia.org/T73394>

* Internal review discovered that MediaWiki's SVG filtering could be
bypassed with entity encoding under the Zend interpreter. This could be
used to inject JavaScript. This issue was also discovered by Mario Gomes /
Beyond Security.
<https://phabricator.wikimedia.org/T88310>

* iSEC Partners discovered a way to bypass the style filtering for SVG
files (iSEC-WMF1214-3) to load external resource. This could violate the
anonymity of users viewing the SVG.
<https://phabricator.wikimedia.org/T85349>

* Internal review and iSEC Partners discovered (iSEC-WMF1214-1) that
MediaWiki versions using PBKDF2 for password hashing (the default since
1.24) are vulnerable to DoS attacks using extremely long passwords.
<https://phabricator.wikimedia.org/T64685>

* Internal review found that MediaWiki is vulnerable to "Quadratic Blowup"
DoS attacks, under both HHVM and Zend PHP.
<https://phabricator.wikimedia.org/T71210>

* iSEC Partners reported that the MediaWiki feature allowing a user to
preview another user's custom JavaScript could be abused for privilege
escalation (iSEC-WMF1214-10). This feature has been removed.
<https://phabricator.wikimedia.org/T85855>

* Extension:Scribunto - MediaWiki user Jackmcbarn discovered that function
names were sanitized in Lua error backtraces, which could lead to XSS.
<https://phabricator.wikimedia.org/T85113>

* Extension:CheckUser - iSEC Partners discovered that the CheckUser
extension did not prevent CSRF attacks on the form allowing checkusers to
look up sensitive information about other users (iSEC-WMF1214-6). Since the
use of CheckUser is logged, the CSRF could be abused to defame a trusted
user or flood the logs with noise.
<https://phabricator.wikimedia.org/T85858>


These next issues came up because of the difference in how HHVM handles PHP
code vs Zend. I'm not sure if CVE's are assigned for specific runtime
configurations? For MediaWiki, we say that HHVM support is experimental,
although we do run Wikipedia on it.

* iSEC Partners discovered a XSS vulnerability in the way api errors were
reflected under HHVM versions before 3.6.1 (iSEC-WMF1214-8). MediaWiki now
detects and mitigates this issue on older versions of HHVM.
<https://phabricator.wikimedia.org/T85851>

* iSEC Partners discovered that MediaWiki's SVG and XMP parsing running
under HHVM was susceptible to "Billion Laughs" DoS attacks
(iSEC-WMF1214-13).
<https://phabricator.wikimedia.org/T85848>

--001a113ecbc2e63d2205129fb6c1--

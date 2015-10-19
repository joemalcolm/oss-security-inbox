X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2350" "Monday" "19" "October" "2015" "13:52:26" "-0700" "Chris Steipp" "csteipp@wikimedia.org" "<CAKcmtDz6cemDXMhP0jjzeo6oyAh-xu8=PBmi+u4J-4GEop52UQ@mail.gmail.com>" "55" "[oss-security] CVE Request: MediaWiki 1.25.3, 1.24.4 and 1.23.11" nil nil nil "10" "2015101920:52:26" "[oss-security] CVE Request: MediaWiki 1.25.3, 1.24.4 and 1.23.11" (number mark "U       csteipp@wiki Oct 19   55/2350  " thread-indent "\"[oss-security] CVE Request: MediaWiki 1.25.3, 1.24.4 and 1.23.11\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26202 invoked by uid 550); 19 Oct 2015 20:52:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26178 invoked from network); 19 Oct 2015 20:52:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wikimedia.org; s=google;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=5gSHOdbX/nICAsl6d+t8ds/a4gpyUlyNeqcinMWh2jU=;
        b=EcuzV+UGLZiFP6fgQQRGL4gnMgnk8Gr9mFCbFLPy4DV3ppui9dezKyRfZ62ZncTCeE
         KvBrSXo0P7g+sXTxGrA7ATnzF19tvSghbKflEsFuFQWU8U2zcWR/klkyj0KKOdAhtzcn
         qazTpU7ZbtTro7kejw0WgzSeDdBL/bCBIOqk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=5gSHOdbX/nICAsl6d+t8ds/a4gpyUlyNeqcinMWh2jU=;
        b=FJplJOa59Uaey49m7I4U5Cj16Y2+v4OnaiRPJVCzVdLCW8WXXyZ6wgDZ4krhNDszT/
         g9nCtkLHhmTOVr6T5oKZY9EroyGxXmURFWc0I+4JdKwKVVV91GypDkQ/1kXRPvEUU8kS
         r9i3Kzxi+w55gEFpYEmAe6+uHy+mA0E3ieX+gvKCE6hXzUuOtP63pKRL9jWABCPtAmv3
         KXsouU8j3SGaxZuWG8+p48jigGEO0wov+1DDlfqUPbhFAwcH9K4i9tIPiybcd4uiAhJb
         4DvHx8fsfmSO16wM0ZUNghHpt3YarwfVg+96ONbWD73WC0Lf64rGijSL+JU1SmiX54sU
         2QiQ==
X-Gm-Message-State: ALoCoQlzMJNPXZ6HL37GuRdgN6Qnc4HwkFKGfl7HxZcI/IuAe0RUfYr+fUYM+s0kYG0PXbQt+VNz
MIME-Version: 1.0
X-Received: by 10.140.233.80 with SMTP id e77mr40893715qhc.27.1445287946649;
 Mon, 19 Oct 2015 13:52:26 -0700 (PDT)
Message-ID: <CAKcmtDz6cemDXMhP0jjzeo6oyAh-xu8=PBmi+u4J-4GEop52UQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113763a8a8a58305227b52fa
Date: Mon, 19 Oct 2015 13:52:26 -0700
From: Chris Steipp <csteipp@wikimedia.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: MediaWiki 1.25.3, 1.24.4 and 1.23.11
To: oss-security@lists.openwall.com

--001a113763a8a8a58305227b52fa
Content-Type: text/plain; charset=UTF-8

We recently released new mediawiki versions to address several security
issues in core an extensions. The relevant parts of the release
announcements are here. Can we get CVE's assigned?

* Wikipedia user RobinHood70 reported that the API failed to correctly stop
adding new chunks to the upload when the reported size was exceeded,
allowing a malicious users to upload add an infinite number of chunks for a
single file upload.
<https://phabricator.wikimedia.org/T91203>

* Wikipedia user RobinHood70 also reported that a malicious user could
upload chunks of 1 byte for very large files, potentially creating a very
large number of files on the server's filesystem.
<https://phabricator.wikimedia.org/T91205>

* Internal review discovered that it is not possible to throttle file
uploads.
<https://phabricator.wikimedia.org/T91850>

* Internal review discovered a missing authorization check when removing
suppression from a revision. This allowed users with the 'viewsuppressed'
user right but not the appropriate 'suppressrevision' user right to
unsuppress revisions.
<https://phabricator.wikimedia.org/T95589>

* Richard Stanway from teamliquid.net reported that thumbnails of PNG files
generated with ImageMagick contained the local file path in the image
metadata.
<https://phabricator.wikimedia.org/T108616>

* Extension:PageTriage - MediaWiki user Grunny discovered a DOM-based XSS in
the way the extension handled page titles.
<https://phabricator.wikimedia.org/T111029>

* Extension:Echo - Internal review discovered that Echo could display
deleted
or suppressed usernames when the username was previously used to Thank
users.
<https://phabricator.wikimedia.org/T110553>

* Extension:OAuth - Wikipedia user Sitic discovered that the OAuth
extension did not correctly enforce the IP restrictions of a Consumer when
using previously negotiated credentials.
<https://phabricator.wikimedia.org/T103022>

* Extension:OAuth - Wikipedia user Sitic discovered that OAuth would accept
a valid signature from any Consumer when checking the authorization
signature. This allowed a registered Consumer who gained access to another
Consumer's users' access tokens and secrets to use those credentials.
<https://phabricator.wikimedia.org/T103023>

--001a113763a8a8a58305227b52fa--

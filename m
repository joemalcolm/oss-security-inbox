X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2164" "Wednesday" "12" "August" "2015" "06:07:55" "-0700" "Chris Steipp" "csteipp@wikimedia.org" "<CAKcmtDz8vumgDXa8Y=bZiEEKyMLET5VDPNSgLk+mo0JsaqY5xg@mail.gmail.com>" "50" "[oss-security] CVE Request: MediaWiki 1.25.2, 1.24.3, 1.23.10" nil nil nil "8" "2015081213:07:55" "[oss-security] CVE Request: MediaWiki 1.25.2, 1.24.3, 1.23.10" (number mark "        csteipp@wiki Aug 12   50/2164  " thread-indent "\"[oss-security] CVE Request: MediaWiki 1.25.2, 1.24.3, 1.23.10\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5771 invoked by uid 550); 12 Aug 2015 13:08:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5746 invoked from network); 12 Aug 2015 13:08:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wikimedia.org; s=google;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=yf9gIT7CGiM1e6BGXjvA3yzJOdU7tMYy2bP9XP1vxLY=;
        b=asX2s6cxbzmhUUP5/shxM3ZyIFEHyWLm3TvHQa/1u7UdrYCzsnGooo3gyNeVeqXfam
         8Uux/c7opoZe8LipDs+5zAFscb5tVaIuYyTqa/5b+4PLprxkD1skK+qjgDtfVU7IYBWq
         M7MGfGaBmDLui89wiwUXYq0+TusqXSRt9NN0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=yf9gIT7CGiM1e6BGXjvA3yzJOdU7tMYy2bP9XP1vxLY=;
        b=Z41kZGprJUlZrLR5NMMbsFnINy3TTT6HMWAQJqp0dGkT2kAGbgHyb+ECVK7PmnEsLI
         +JkP7MgQFpWDem0zAXoUDIKFW2t0u306DK/XlUzQUmB3TSBu39ozxWfY+DhrGirit5M+
         9PFOuVWBoCKZ8TiFBD9WgRznmc9HRaC55oA/P8xjbv995A0xdYf8eGBa2pmBD31RlWJJ
         pXK8u0b7D99q4sIuXMIrHlyZjPSh/oGYcxPAd0vn9t199wgu2c8DO+8jF8zg/Uh5Rd31
         gDdp9CQTR2mFGwlQYjlU5iZufBqgXb29Mk7fYDs/3aDjtu2ygXkAodts8aQWKABfHtbB
         Xgsg==
X-Gm-Message-State: ALoCoQlSk3XZxC6FXk73H6ro2Clm5+usmJNauCLVIcJ17pFmrQptS2GgGylCoeBjR/LqP4KVOGCY
MIME-Version: 1.0
X-Received: by 10.55.20.26 with SMTP id e26mr52799565qkh.66.1439384875642;
 Wed, 12 Aug 2015 06:07:55 -0700 (PDT)
Message-ID: <CAKcmtDz8vumgDXa8Y=bZiEEKyMLET5VDPNSgLk+mo0JsaqY5xg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1144c04a355642051d1ce814
Date: Wed, 12 Aug 2015 06:07:55 -0700
From: Chris Steipp <csteipp@wikimedia.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: MediaWiki 1.25.2, 1.24.3, 1.23.10
To: oss-security@lists.openwall.com

--001a1144c04a355642051d1ce814
Content-Type: text/plain; charset=UTF-8

Hi, the following issues were patched in MediaWiki and extensions this
week. Can we get CVE's assigned?


* Internal review discovered that Special:DeletedContributions did not
properly protect the IP of autoblocked users. This fix makes the
functionality of Special:DeletedContributions consistent with
Special:Contributions and Special:BlockList.
<https://phabricator.wikimedia.org/T106893>

* Internal review discovered that watchlist anti-csrf tokens were not being
compared in constant time, which could allow various timing attacks. This
could allow an attacker to modify a user's watchlist via csrf.
<https://phabricator.wikimedia.org/T94116>

* John Menerick reported that MediaWiki's thumb.php failed to sanitize
various error messages, resulting in xss.
<https://phabricator.wikimedia.org/T97391>

* Extension:SemanticForms - MediaWiki user Grunny discovered multiple
reflected xss vectors in SemanticForms. Further internal review discovered
and fixed other reflected and stored xss vectors.
<https://phabricator.wikimedia.org/T103391>
<https://phabricator.wikimedia.org/T103765>
<https://phabricator.wikimedia.org/T103761>

* Extension:SyntaxHighlight_GeSHi - xss and potential DoS vectors. Internal
review discovered that the contib directory for GeSHi was re-included in
MediaWiki 1.25. Some scripts could be potentially be used for DoS, and DAU
Huy Ngoc discovered an xss vector. All contrib scripts have been removed.
<https://phabricator.wikimedia.org/T108198>

* Extension:TimedMediaHandler - User:McZusatz reported that resetting
transcodes deleted the transcode without creating a new one, which could be
used for vandalism or potentially DoS.
<https://phabricator.wikimedia.org/T100211>

* Extension:Quiz - Internal review discovered that Quiz did not properly
escape regex metacharacters in a user controlled regular expression,
enabling a DoS vector.
<https://phabricator.wikimedia.org/T97083>

* Extension:Widgets - MediaWiki developer Majr reported a potential HTML
injection (xss) vector.
<https://phabricator.wikimedia.org/T88964>

--001a1144c04a355642051d1ce814--

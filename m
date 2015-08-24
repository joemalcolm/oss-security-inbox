X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["895" "Monday" "24" "August" "2015" "11:26:15" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNXiS0jqswCaH2z59oAAsOmAWZBaKcGEtOc8cGGUM9yd=Q@mail.gmail.com>" "29" "[oss-security] CVE request: uglify-js node.js module <2.4.24 incorrectly handles non-boolean comparisons during minification" nil nil nil "8" "2015082418:26:15" "[oss-security] CVE request: uglify-js node.js module <2.4.24 incorrectly handles non-boolean comparisons during minification" (number mark "        reed@reedlod Aug 24   29/895   " thread-indent "\"[oss-security] CVE request: uglify-js node.js module <2.4.24 incorrectly handles non-boolean comparisons during minification\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5517 invoked by uid 550); 24 Aug 2015 18:26:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5479 invoked from network); 24 Aug 2015 18:26:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=JGnxT/RfQHyJyAw5JwMM75c5hQr88v1+Mf5R78sG7qk=;
        b=eqMPBcqhvLHNKCjNWZWPPad5jjPm96rF0N68D343sTAups76NP0fwrUi83b/CFaQYd
         cqeQb1hy82lb1qW3EivpijudRblVvJN0vYncvJve8h1J+54rqVcUqK/zxOlqcqndFub+
         Coh7NLLzcmPhDfKcDjgKJ/mnZLWt8p4Va7xVU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=JGnxT/RfQHyJyAw5JwMM75c5hQr88v1+Mf5R78sG7qk=;
        b=D8YqDAplfipc1If4xzmejdR4V+/icjqZr6V604Lm10jUWdond8PYgv4JlevdU79oBE
         X4WxTczhWwGMxpk4VUeYWpz1JHtcnhpzTBA0pubS/Cn3FzeWGpnY2rKWzpAy4L12DJsr
         uIXa/RL/j98/qBR6vtspB7wR0+7EDQfIG7mRUfijEviW84KWJGDtqeOhiSwRGieWEHLS
         xw8l4nUbQGGqhGiv+bZPxDHu9pQQl2axy21tX66sudYGACXF9Z4rjZADG/3n6v2S38xv
         9xqLyDMrN/a7LZXw3v+aWNgvkVsT2FOZXbEVzbB3KmPrbfWSXlyJxNy+BS5lLJc8DI00
         1ZVg==
X-Gm-Message-State: ALoCoQnJNOI+i9uxSYCjVEMFSFSy8q4+EiBCAIIbB7pTDQD6OQrK6SJhzd5RMW0A313yKmF8RUPU
X-Received: by 10.107.7.168 with SMTP id g40mr22592550ioi.28.1440440795093;
 Mon, 24 Aug 2015 11:26:35 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALPTtNXiS0jqswCaH2z59oAAsOmAWZBaKcGEtOc8cGGUM9yd=Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113f2784e9d95f051e12c182
Date: Mon, 24 Aug 2015 11:26:15 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: uglify-js node.js module <2.4.24 incorrectly handles
 non-boolean comparisons during minification
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>

--001a113f2784e9d95f051e12c182
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

As seen on Hacker News -- https://zyan.scripts.mit.edu/blog/backdooring-js/

Blog post has all the details, but basically the UglifyJS node module has a
problem where the combination of De Morgan=E2=80=99s Law and non-boolean va=
lues can
lead to a case where code is incorrectly minified, which can lead to
possibly malicious minified JS code.

UglifyJS is a "JavaScript parser / mangler / compressor / beautifier
toolkit" for Node.js.

Node.js module: uglify-js (https://www.npmjs.com/package/uglify-js)
Affects: 2.4.23 and earlier
Fixed in: 2.4.24
Reported via https://github.com/mishoo/UglifyJS2/issues/751
Fixed by
https://github.com/mishoo/UglifyJS2/commit/905b6011784ca60d41919ac1a499962b=
7c1d4b02

Can a CVE be assigned?

Thanks,
~reed

--001a113f2784e9d95f051e12c182--

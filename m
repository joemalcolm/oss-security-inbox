X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1980" "Monday" "14" "November" "2016" "09:42:23" "-0500" "Chaim Sanders" "chaim@chaimsanders.com" "<CAE8hE=qj7XjN16XP67ij-1J4L6da=O6=ByYPORJCG27d131Rjg@mail.gmail.com>" "56" "[oss-security] OWASP Core Rule Set v3.0.0 (final) Released." nil nil nil "11" "2016111414:42:23" "[oss-security] OWASP Core Rule Set v3.0.0 (final) Released." (number mark "U       chaim@chaims Nov 14   56/1980  " thread-indent "\"[oss-security] OWASP Core Rule Set v3.0.0 (final) Released.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9772 invoked by uid 550); 14 Nov 2016 15:40:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9380 invoked from network); 14 Nov 2016 14:42:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=Js8hRNN5oxSr8vDYqZFVCv7ELJmpiaoTnOc+FA3T7qk=;
        b=mm8DtuG0P7JZ4i1RIeeATr+0+fLmog05mrB5SOUbzSYEAAXxuQHwCvAggd5xVv8WrC
         7ssGIw23zl9WyKlcAOexpANReVVBl/t3p/ynZjoZ1evNKwzetYvje1wWdY+LLmpK7dEH
         Jy+tFae8OgxQxfWBgeBbhnwoeWIrLxYV/icSVamLwR19nntCGsn2Phmlxwo5sIxJK40/
         ilAIp0xaQZAsUBGmaEme4eVu3dK+bdIhea7GYkk+ABRK9BePR2hgzm2fOnB9SqBBhlmj
         dTcsxoV88zvDl9Xjl4Y5p+fqdZLLTTk9LWHQQSeF2O9ljy5gpX3kHeIyTxyJ9kCjOpke
         pCfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=Js8hRNN5oxSr8vDYqZFVCv7ELJmpiaoTnOc+FA3T7qk=;
        b=ZDTIh4Oc/rR62+3uNT/0IT5VxvncxV0ojBVpnJbWTRYDCHoX3t+DttHqXd5ddQgrdS
         bY9ciBThE9t0yiL9P+k4sHDOpYlcuCr6rPx7us6SuEE5V7Qo6sMeJvvyRYi0AXCd7nNf
         41GK8KhFMJhAHxF13x5HLZ60crnALb2sxrW7o8v3QsqP2la5K7A9cfz+FzWkZyrcbule
         5yoWyU8j5xWo8Wss+12gH5UJNnW6kVas0nQWmYoX6wZT2fXRQoH/QFJPZVVIgphr6gBL
         6iz1ajmqeGQNh7Hj7VhUM0uMJoNqugg47hl1GAIU6PIB4eFJYBbISTPckclCFoPtCkVA
         Lydg==
X-Gm-Message-State: ABUngvfYA7zkQMw/NvtQQIfawM5EVOTOXge3WD/xmAyahAQA/hDdy0wts/rAIPE3uahna9fowCbuYCm7XvlJDg==
X-Received: by 10.31.114.207 with SMTP id n198mr10331117vkc.129.1479134563427;
 Mon, 14 Nov 2016 06:42:43 -0800 (PST)
MIME-Version: 1.0
Sender: chaim.sanders@gmail.com
From: Chaim Sanders <chaim@chaimsanders.com>
Date: Mon, 14 Nov 2016 09:42:23 -0500
X-Google-Sender-Auth: 0fPwzUvQPlUOIKZe2npqGQpFbo4
Message-ID: <CAE8hE=qj7XjN16XP67ij-1J4L6da=O6=ByYPORJCG27d131Rjg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c1494a43a6c80054143da97
Subject: [oss-security] OWASP Core Rule Set v3.0.0 (final) Released.

--94eb2c1494a43a6c80054143da97
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Happy Monday fellow Open Source Security aficionados,

I am pleased to share with you the release of the OWASP Core Rule Set (CRS)
Version 3.0.0 (stable). For those who are unaware, the OWASP CRS is a set
of generic rules designed to protect users against threats to web
applications. The rule set is most often deployed in conjunction with an
existing Web Application Firewall like ModSecurity
<https://modsecurity.org/>.

This latest version features many changes that help make CRS a valuable
part of a Defense in Depth strategy for protecting you web application.
Some of these include:

=C2=B7  Improved and More Precise Detection Coverage

=C2=B7  Reduced False Positives and the Introduction of Paranoia Levels

=C2=B7  Anomaly Scoring Mode by Default

=C2=B7  Simplified User Experience

=C2=B7  New Remote Code Execution Rules

=C2=B7  Improved Layout, Documentation, and Testing

With this new release we are seeing on the order of 90-95% fewer false
positives in production environments. This is a large improvement that
should make CRS more accessible to the masses and we hope you all find it
useful as well. We are always looking for feedback, feel free to test and
report any issues to us.



To download a copy or to submit any issue, please visit our Github
<https://github.com/SpiderLabs/owasp-modsecurity-crs> (
https://github.com/SpiderLabs/owasp-modsecurity-crs/releases/tag/v3.0.0).
If you are seeking additional information about the release, please check
out this accompanying blog post <http://goo.gl/f4uxlq>. The OWASP CRS team
is truly excited and pleased with this release, there are even rumors this
new rule set is being made into a movie <https://modsecurity.org/crs/poster>




Chaim Sanders, on behalf of the Core Rules Set development team.

--=20
--=20
Chaim Sanders
http://www.ChaimSanders.com

--94eb2c1494a43a6c80054143da97--

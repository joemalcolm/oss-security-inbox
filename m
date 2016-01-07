X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["977" "Wednesday" "6" "January" "2016" "16:17:57" "-0800" "Reed Loden" "reed@reedloden.com" "<CALPTtNW1aQq5JkniYnFJzox6Pz_ygbWGmapEK0fXPN1SWGBFkw@mail.gmail.com>" "30" "[oss-security] CVE request: Missing normalization in ruby gem rack-attack <4.3.1 when used with ruby on rails" "^Date:" nil nil "1" "2016010700:17:57" "[oss-security] CVE request: Missing normalization in ruby gem rack-attack <4.3.1 when used with ruby on rails" (number mark "U       reed@reedlod Jan  6   30/977   " thread-indent "\"[oss-security] CVE request: Missing normalization in ruby gem rack-attack <4.3.1 when used with ruby on rails\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15931 invoked by uid 550); 7 Jan 2016 00:18:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15910 invoked from network); 7 Jan 2016 00:18:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=moqRKuccfmo2Lj1piNeNOOhDIrJJoMD0V4fHNiTex8g=;
        b=bDshUVBjHNJWFZR4ui1P+zNArWyh1U6kUIwz54/xrmyd7ZQQaSLeQni4X49us0d5kx
         927SiwUkRkP5b2mxVnO/+Bl5wY2kyZN9B0yjz6vtQZBfj8gcMVLx3FP+r+pxnk6U/JYu
         iD8osIQvGOBfJK6zIien60ogXKXBITyPtKzJs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=moqRKuccfmo2Lj1piNeNOOhDIrJJoMD0V4fHNiTex8g=;
        b=AFMBWGQ9JSF+SyigfT79gubPnKk/aOMwIZS31jCbkrYaK/UUx4ftDn9LmHrDygyhW+
         dIUKGge8pKEIj5//gKVHzb9HCvz6IKbHqwbNb225OCwyotFWX44JpOKOpyKrJoKo7P5v
         QZiBIxCbo9NafC0e532jcp6bfDW5cx0xNBxmY1iiXuJYwJc/q74pRmsdzKGc/q+TpSfC
         j0kYdU7SQGOVp2BFNSyZGjPlwGnYboGGSywfLeBzu6GLPB1DqXU9L1evJHNKdBIiMUnL
         zq0Efxz4tXHSth++tiQosq0QOoxpqNjXvIpOxws2QkV+U93RAPmRgf1TpHaMEThEW5sU
         8tlQ==
X-Gm-Message-State: ALoCoQkUcQYqjOYF/hob9+3BQUtWRARAl4gS3LPYRVXXXO0NMJmCHCDbqCcc9JnczRe7OUfF1MSQfmfgUqq2azCOgN6lIRDXugNzTt6NvZwMuHd2BO+3/18=
X-Received: by 10.202.170.80 with SMTP id t77mr68539973oie.78.1452125896729;
 Wed, 06 Jan 2016 16:18:16 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CALPTtNW1aQq5JkniYnFJzox6Pz_ygbWGmapEK0fXPN1SWGBFkw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113ca7e43e858f0528b368a4
Date: Wed, 6 Jan 2016 16:17:57 -0800
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Missing normalization in ruby gem rack-attack <4.3.1
 when used with ruby on rails
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>

--001a113ca7e43e858f0528b368a4
Content-Type: text/plain; charset=UTF-8

Saw this tweeted. No public security notification outside of the release
notes and a few tweets, it seems. :(

Rack::Attack <4.3.1 does not normalize paths before processing them,
meaning that if there is a throttle or block rule for /login, a malicious
user could use /login/ to bypass the check. This only affects Rails
applications.

More details: https://github.com/kickstarter/rack-attack/releases/tag/v4.3.1

Fixed by:
https://github.com/kickstarter/rack-attack/commit/76c2e3143099d938883ae5654527b47e9e6a8977

Related tweets:

https://twitter.com/rorsecurity/status/678878091314335744
https://twitter.com/IncludeSecurity/status/677905982391984129

This could almost be categorized as CWE-289 "Authentication Bypass by
Alternate Name", but it's not really authentication here. I couldn't find a
better CWE without getting too generic.

Needs a CVE assigned.

~reed

--001a113ca7e43e858f0528b368a4--

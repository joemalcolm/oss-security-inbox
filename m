X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["413" "Wednesday" "20" "January" "2016" "11:42:16" "-0800" "Chris Steipp" "csteipp@wikimedia.org" "<CAKcmtDwojHzTdGcDz8EpEMi6Kuw2tp4or3fJYsteP=3GA1=-OQ@mail.gmail.com>" "10" "[oss-security] CVE Request: RESTBase 0.9.2 (security release)" nil nil nil "1" "2016012019:42:16" "[oss-security] CVE Request: RESTBase 0.9.2 (security release)" (number mark "U       csteipp@wiki Jan 20   10/413   " thread-indent "\"[oss-security] CVE Request: RESTBase 0.9.2 (security release)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32012 invoked by uid 550); 20 Jan 2016 19:42:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31990 invoked from network); 20 Jan 2016 19:42:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wikimedia.org; s=google;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=pJp/DIyG27y+yvC7khUNJkV7JjKds21w/p0VLAfQYws=;
        b=gYA7hAPl9zIpziioNLzYNdjNlsR37qVd3+oeckRVjKkhbkDPmbiI5FanN+C8vWtkRD
         KPAUuVrOv1a1u/6rR89wFDthu4A8Py8IKC217lPZP304HD5MdlWO35KACLI/lWy786Bu
         2rJSuc3o2Jzp9Y4XVATpBFf28KNQPnUdwS0Wk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=pJp/DIyG27y+yvC7khUNJkV7JjKds21w/p0VLAfQYws=;
        b=Ba6ZDmlXpBHvGrF/K7SX/zhnXisTHXv4XiYDy2Sp01thtJQJAeWB4O2hblosnGVvnE
         G5LpFJNRSk2KCuTpJlu0S+9ZqIY5W5va5y+ZRno/wAzpVBNFedsGRnbPZSnrpsPDypMw
         xx5VMQIAkkhFGbGq7GFitEZDwOllw6k2HHqYfkyLlpvd6R5zfuAN41iEZXwo1rvAT7n/
         grC2mocSawVgN7jC1gtFvcQ4LigeMu8pF0hJpDHMKj0fysPxvPLcsnbYuKxLNowojopF
         UIJbB9heWV9jM2zJCuANvkUG1jMhlFHioSRayXZq3O1o+V7b+c/7Iioap5YQ5YU0tD6s
         3rGA==
X-Gm-Message-State: ALoCoQn104rS4tFWcXg3Iw+IsqSzd6zSdj/0bGxlFWWu8X7S9DXAnJJGS1TTXIYpoUVvJ7XF+n+w1puZ+wif1MuYIdRRqUpz/nwq3FvP5Q5bg+eBjgmuQ30=
MIME-Version: 1.0
X-Received: by 10.140.222.18 with SMTP id s18mr49415887qhb.21.1453318936078;
 Wed, 20 Jan 2016 11:42:16 -0800 (PST)
Date: Wed, 20 Jan 2016 11:42:16 -0800
Message-ID: <CAKcmtDwojHzTdGcDz8EpEMi6Kuw2tp4or3fJYsteP=3GA1=-OQ@mail.gmail.com>
From: Chris Steipp <csteipp@wikimedia.org>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1137784aee4a5d0529c92ee8
Subject: [oss-security] CVE Request: RESTBase 0.9.2 (security release)

--001a1137784aee4a5d0529c92ee8
Content-Type: text/plain; charset=UTF-8

The Wikimedia Foundation recently released an update for a path traversal
in RESTBase. Can we get a CVE for tracking this in downstream packages?

https://lists.wikimedia.org/pipermail/wikitech-l/2016-January/084531.html
https://github.com/wikimedia/restbase/commit/1ea649306ae4e85ab2cee5a36318e990a4fca3f5

--001a1137784aee4a5d0529c92ee8--

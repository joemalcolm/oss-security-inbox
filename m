X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["471" "Monday" "26" "June" "2017" "23:31:44" "+0200" "Guido Vranken" "guidovranken@gmail.com" "<CAO5O-EJzHLMaKCHSnqzGeNMY_t8w9V=OwMF-a9QNcrAVqVo9wg@mail.gmail.com>" "11" "[oss-security] OpenVPN fuzzers released" "^Date:" nil nil "6" "2017062621:31:44" "[oss-security] OpenVPN fuzzers released" (number mark "        guidovranken Jun 26   11/471   " thread-indent "\"[oss-security] OpenVPN fuzzers released\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23880 invoked by uid 550); 26 Jun 2017 22:51:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23856 invoked from network); 26 Jun 2017 21:31:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=b2TaauW4wK7wxoSYcaQAQtKZ4DORq1yUmqg9c81rQw4=;
        b=GSgmxfbqqX/eNokx1h264y5+dA4ZtlnGoHFv2iKpGB3finRd3NVymgXrQwpB8C7XYY
         pAHqZEh2OhSWIiWWXlVbslYSFhCAQssGYIlJ5P/7BRrrKQMfeJrCJgF9ey3K1dDTmZC9
         ayX4iFcgl7IntEYtHrdC5xhXWVMKYObNZ6dPjDGtZy66MVFKCmxEgsZAaeBt+BVeqYQi
         JOdrsJ42GiaAabnZZvAD/I1gOm0laxLx6stZn3mJI5hFJ4g37MEGP2+wsOFENdOkzfFz
         dexQTlBwv1sN7TyNtoWs59ePsZyAnCue65qN7x6Q56aKfaTU47vAXuhfXdxP/kjmTlEe
         6vbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=b2TaauW4wK7wxoSYcaQAQtKZ4DORq1yUmqg9c81rQw4=;
        b=GW1i1z8W3DdHGr50OWFnAZe2W2ydvvcMdDPmwoYupw5vesgExA92XEiiHoNj7H+slX
         O3nOO/ciwX2SAlveFN6oTti/hzjgeGeXevdRGoKPfwBm94r9VgTnbt3BvtKihR/aRs/G
         /VX7peBnHK48FTrIPRG0jll1JdQqEf9LLqdjKSL4jFffsEDp8bPgy7bRbJVLDjgWP/6V
         DNIWk/fLCQ9a/407cC4BS6k+wrEiyz7M3Hgh83wFAh/tFkO5JbjZzKe++k5XQcAHvJ3P
         /BbLnOoME33UUk4zK/cPi4WsZ7oIYzFNtOWS8C2VVHaUswwe63Ok7S1mb1ge+NOC1vD2
         eWhA==
X-Gm-Message-State: AKS2vOwp0/duAukhy2cRXayxPO9MOAuQjTgyEhizU+6quTQD3xb5AiLr
	vCoyM7qtMU7PCxwgf+gUEL62H5i1c4VA
X-Received: by 10.159.32.133 with SMTP id 5mr1123642uaa.123.1498512704830;
 Mon, 26 Jun 2017 14:31:44 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAO5O-EJzHLMaKCHSnqzGeNMY_t8w9V=OwMF-a9QNcrAVqVo9wg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 26 Jun 2017 23:31:44 +0200
From: Guido Vranken <guidovranken@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] OpenVPN fuzzers released
To: oss-security@lists.openwall.com

I've published the fuzzers that I used to find the recent set of
vulnerabilities in OpenVPN:
https://github.com/guidovranken/openvpn/tree/fuzzing

Not all of OpenVPN's code is covered by this set of fuzzers. It is
entirely conceivable that more vulnerabilities exist, but more fuzzers
have to be written in order to find them. The helper functions and IO
abstractions I've written should simplify this effort. So here is your
opportunity to find more juicy stuff.

Guido

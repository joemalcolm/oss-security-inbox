X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1716" "Sunday" "21" "February" "2016" "19:56:58" "+0000" "Carlos Santana" "csantana23@gmail.com" "<CAHYtTq=UM+eVYgTFyG1OQMKt9ecz3Uo3vKV1vEEfy+VnTEr2pQ@mail.gmail.com>" "56" "[oss-security] [Update 2/20/16 CVE-2015-5256] Apache Cordova vulnerable to improper application of whitelist restrictions on Android" nil nil nil "2" "2016022119:56:58" "[oss-security] [Update 2/20/16 CVE-2015-5256] Apache Cordova vulnerable to improper application of whitelist restrictions on Android" (number mark "U       csantana23@g Feb 21   56/1716  " thread-indent "\"[oss-security] [Update 2/20/16 CVE-2015-5256] Apache Cordova vulnerable to improper application of whitelist restrictions on Android\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23953 invoked by uid 550); 21 Feb 2016 21:33:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30416 invoked from network); 21 Feb 2016 19:57:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc:content-type;
        bh=M7G/u0QTWECPHiGk93cLAuSnQOQ3LxzypfQ3H62YCyQ=;
        b=glkITfYtG5kRnHTaxt8VOhvNuwt1DZ6tjnKDt+Jm+gcxVxPx82nGaFMXPl6pRIaioQ
         9IRQZrxmbvGw+YMXTRtQcf+WDaBeIbFxJqfeL/P8vT/+KmXDewy54j12Z4qp4e9U0ebY
         HsZpdP/CztialjOo40pRVF8jTWfHQucw1IZHthnwALK8baPgI5afWBVjMVXDO3tU/UWx
         a53+HTMQtT+ZWyPKVHIXEQxrShdhBxraHXecnCMHjZB65pUF1IwmS9wnJycWfYWOXUqH
         M5xbbxug5vi+qcS11/JgPd6DgPnExH1ixhhGumtjNJ9BhwiIVb/et/1xCz4p8X0Sd0Oa
         Wa9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-type;
        bh=M7G/u0QTWECPHiGk93cLAuSnQOQ3LxzypfQ3H62YCyQ=;
        b=SduXlAew4YK3/Kgu8bwcloHkcZNLft8M0S1sI+r6a6Xk3kNbFJ+2hayWEu4nSZb1gF
         txklaQoz7GYR14xcok5B7uYe0QhgO3/9YyNLaAFF5sTr2Bifd5glSJkNMk+F9DTCyfNX
         0OppqO+1aJeBMmn9wEYBXB7y9IA/jlhTOet0cHVu1zzV4lzf9AOY6kjrQiRTLxQFjjr1
         Vk7dP0hqtfQK12bVPngRuiRnk4pN7bsWRXBge4l2MR09OxWak8CMhaCE2SocvaxojFUO
         ILEp0KyMBAeQcM3lG1dQ8/4Am7vpvOqk4j9zUPA3J/t3o0awrGUlNgkMigOx4USWYDg1
         gfkQ==
X-Gm-Message-State: AG10YORNv4753fn7dzajeMs0emf+8q3TE+r9LNzDVmHlMNz65PZNBo7KI6BQSHM8JA7qciN6NHQes6HZi1Afiw==
X-Received: by 10.31.130.6 with SMTP id e6mr17197390vkd.49.1456084628131; Sun,
 21 Feb 2016 11:57:08 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAHYtTq=UM+eVYgTFyG1OQMKt9ecz3Uo3vKV1vEEfy+VnTEr2pQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1143d0e405d5b6052c4d1f46
Cc: "private@cordova.apache.org" <private@cordova.apache.org>, security@android.com
Date: Sun, 21 Feb 2016 19:56:58 +0000
From: Carlos Santana <csantana23@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [Update 2/20/16 CVE-2015-5256] Apache Cordova vulnerable to improper
 application of whitelist restrictions on Android
To: ASF Security Team <security@apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com

--001a1143d0e405d5b6052c4d1f46
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

*Updated 02/20/2016*

Apache Cordova has re-visited CVE-2015-5256 "Apache Cordova vulnerable to
improper application of whitelist restrictions on Android=E2=80=9D. Upon fu=
rther
investigation we found that the vulnerability is more limited than was
previously understood.
We are lowering the severity to Low, and updating the description, affected
versions, and upgrade path.

The updated text of the CVE is included below:

Apache Cordova PMC
--------------------------
private@cordova.apache.org

____

*Updated 02/20/2016*

CVE-2015-5256: Apache Cordova vulnerable to improper application of
whitelist restrictions on Android

Severity: Low

Versions Affected:
Cordova Android with whitelist functionality

Description:

Android applications created using Apache Cordova that use a remote server
contain a vulnerability where whitelist restrictions for urls using
protocols http and https are not properly applied.  Whitelist cannot block
network redirects from a whitelisted remote website to a non-whitelisted
website.

Upgrade path:

There is no specific software patch for this vulnerability. Developers that
are concerned about this should make sure to only whitelist trusted
websites, and make sure that whitelisted websites don=E2=80=99t redirect to=
 a
malicious website.
Developers using should also use SSL, as well as Content Security
Policy(CSP) to further mitigate this issue. It=E2=80=99s always recommended=
 for
developers to upgrade to the latest version of Cordova Android.


Credit: Muneaki Nishimura of Sony Digital Network Applications, Inc

--001a1143d0e405d5b6052c4d1f46--

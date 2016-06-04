X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2822" "Saturday" "4" "June" "2016" "12:10:56" "-0500" "Brandon Perry" "bperry.volatile@gmail.com" "<DD545187-DC87-48DC-A3AB-69F8000E2F11@gmail.com>" "57" "[oss-security] Libtorrent http_parser.cpp denial of service" nil nil nil "6" "2016060417:10:56" "[oss-security] Libtorrent http_parser.cpp denial of service" (number mark "U       bperry.volat Jun  4   57/2822  " thread-indent "\"[oss-security] Libtorrent http_parser.cpp denial of service\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22153 invoked by uid 550); 4 Jun 2016 17:18:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15433 invoked from network); 4 Jun 2016 17:11:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:subject:date:message-id:to:mime-version;
        bh=G5xKcL1P7u7XZKTwUKpimqiJOu5n6vytDrL9MVad3G4=;
        b=WJeK1Kaxr03rrYto8NDf8Toj8ee/i9JrEQUaeKubr7O9V37jgJzApmxJDtluGsHUEX
         AOOsCCTeerDdDKQ9teNZ7tONiiefkt+rZ9wzORPXllEcjvR/46Rgfrst+lYK5bPuXHIV
         sRoQ+yfrejpT02mTZwIm2/d5gv5xBkDMcS7DglH8Fahxn6JuEs58BSpdJoR5SUEXc1Rj
         U0QOe6TnKhy0U3DLjDnh5RgHM2FX8tmX75UfjX+ab/nmWHfX/+MdmjhzSC8eKTUqeQf8
         gLakIdpMxsRR0cJKmEo6sG7Psd/1723S08ccLx90u3kKKK++c6cLakd+sk98IYAoRtVI
         jXZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:subject:date:message-id:to:mime-version;
        bh=G5xKcL1P7u7XZKTwUKpimqiJOu5n6vytDrL9MVad3G4=;
        b=EUlaf/QQKJVmb4n9Kyt+6TQG6qHuwKBXa3I8tmxNlSOBM+7v8x4lKkulXGMoXOxDxZ
         Rl/igwQHiICrd0ZbnNAupxHitb+Jh7ok6I1/YiVIqm26LX6T4x7+E4ii4ZwB8GmjV5qO
         6hr9ALej4FMQEsBa+1MP3y14yeQ0xz+z2KPDw8VHmRWbPQ7fLaGe1d6pqqOGuoy2UIwS
         jG/iy9eSg5GobBh1WrQPwQ53tZU1gvj1H0k8MX05klTd1KxBICqIwTB5eu2cxpZAav6p
         TTJt/WmHSisMlOLhePnRju0bt/IaXAdBo23Z/zQ8o9sUP5JQoEM+Ii2gbOpVe2UD7toO
         9MDA==
X-Gm-Message-State: ALyK8tJ9pA50LfWV+cUGjl9bGJJt5rtaH500HATHncAo88Yq/ANohVIZ+zJT7QXEbd+C8g==
X-Received: by 10.157.61.197 with SMTP id l63mr5255113otc.48.1465060263659;
        Sat, 04 Jun 2016 10:11:03 -0700 (PDT)
From: Brandon Perry <bperry.volatile@gmail.com>
X-Pgp-Agent: GPGMail 2.6b2
Content-Type: multipart/signed; boundary="Apple-Mail=_4B6F7B7E-EDDA-4499-B0F7-9AFF5BF3844B"; protocol="application/pgp-signature"; micalg=pgp-sha512
Date: Sat, 4 Jun 2016 12:10:56 -0500
Message-Id: <DD545187-DC87-48DC-A3AB-69F8000E2F11@gmail.com>
To: oss-security@lists.openwall.com
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Libtorrent http_parser.cpp denial of service

--Apple-Mail=_4B6F7B7E-EDDA-4499-B0F7-9AFF5BF3844B
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A2CEF6E5-CC37-43FE-815F-9AF1655894CB"


--Apple-Mail=_A2CEF6E5-CC37-43FE-815F-9AF1655894CB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Helo list,

I recently opened a bug on libtorrent regarding malformed HTTP or UPnP resp=
onses that has been fixed on branch RC_1_1. The maintainer also mentioned b=
ackporting the fix to RC_1_0.

https://github.com/arvidn/libtorrent/issues/780 <https://github.com/arvidn/=
libtorrent/issues/780>

https://github.com/arvidn/libtorrent/pull/782 <https://github.com/arvidn/li=
btorrent/pull/782>

--Apple-Mail=_A2CEF6E5-CC37-43FE-815F-9AF1655894CB
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv="Content-Type" content="text/html charset=us-ascii"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" class="">Helo list,<div class=""><br class=""></div><div class="">I recently opened a bug on libtorrent regarding malformed HTTP or UPnP responses that has been fixed on branch RC_1_1. The maintainer also mentioned backporting the fix to RC_1_0.</div><div class=""><br class=""></div><div class=""><a href="https://github.com/arvidn/libtorrent/issues/780" class="">https://github.com/arvidn/libtorrent/issues/780</a></div><div class=""><br class=""></div><div class=""><a href="https://github.com/arvidn/libtorrent/pull/782" class="">https://github.com/arvidn/libtorrent/pull/782</a></div></body></html>
--Apple-Mail=_A2CEF6E5-CC37-43FE-815F-9AF1655894CB--

--Apple-Mail=_4B6F7B7E-EDDA-4499-B0F7-9AFF5BF3844B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJXUwulAAoJEKJq8VjVbt2pXgEP/jwCAOxBNjgrvXnqGOB07y3c
OYTAwa+leWr548bUmmfkMehFwHr2hcCO93wBybQfnGLFCgHbgf1KWXP2oTWVQGuY
N/s1Bd66Tdi7KOETYccvDdFCQi+sTA8ZGY8jw0CQovoIo+TO0OMljYXbuoiQ5Tk+
13CxI/5MWgdiCSxbYsCVp/pJ/53/dKmVt+b+6mPXtcb/PvAhXY8fkYggfU+3JdwE
NbpMEoxubhffHxVHicVES/UrHI9WNXlxM4RTDZ3KaqusLSYSURc7erVCMxYFUIkT
kdDq+ADA2G9/jq9pbEhsM4wPLy2ypyENYtWZ4Xgb2eJ74lZ291cFIT9zj2RzJ1lX
2KDJr+zj+z6hrh0qpPbiEk1qVDU5kIPwrUxP8vsTqC9V2GpJZIZFjhtdm3XSFafy
G+Krx0N1M4DR9qYT19dYewOjDGPpULCbVU0YDwetJKqnI3LI8NRDhlU44wW6dLZQ
nXJcplYOmBkWayTw1Vbf+5tpjHHt+kmCe6cjMHV+95ovsik+cHLlWZnEmQHkkZzG
LxRxvkLM/hBzy6iMRTnSM58h4dqlF4aoBB6UeGqEgOUCbbq9b5XPbZ9UfQbZnIJP
Y22QPswB7vbZhKA91YObrSxPWJjTCr+gjghq7ZU9YXyWOVMDp7/+KWSeq9ObEL+h
5kSJBuuSmsKWOKbpHHyR
=9hAL
-----END PGP SIGNATURE-----

--Apple-Mail=_4B6F7B7E-EDDA-4499-B0F7-9AFF5BF3844B--

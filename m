X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3114" "Friday" "6" "December" "2019" "16:14:42" "+0300" "ValdikSS" "iam@valdikss.org.ru" nil "80" nil "^Cc:" nil nil "12" nil nil (number mark "        iam@valdikss Dec  6   80/3114  " thread-indent "\"[oss-security] Re: [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP connections.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP connections." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25884 invoked by uid 550); 6 Dec 2019 13:37:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17632 invoked from network); 6 Dec 2019 13:14:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=valdikss.org.ru; s=google;
        h=subject:from:to:cc:references:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=mBBNc70lh0BoGdosUdpICc+Q7lLHWTATmsiEDCADYvc=;
        b=e0WiFZJlXV5h3b/fpY2fjEJ958Oh12S+vUnHhnXYR+/Pe9SsCY/yRJIRAy/hk8GeBP
         IP0jN/A6lJSNH7t3u3AZx8OGJ1cUluCpcaCYfcwXQIxrJEXqNB0WKT90QNjalD9sTnPj
         yLyKag6b4e76GTzKl8jMTTmTjLg1iQiYvZTpI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=mBBNc70lh0BoGdosUdpICc+Q7lLHWTATmsiEDCADYvc=;
        b=cI05NCyzLbOibxFZLwgjRzSs70I6ijfu+k/oIi/m8+M9g+yLdJ3MPuye7wirGqpBYe
         FE+trAw1CWd4FVyS5RTtMDN0A7a5Nt02ULO93bYYHtUGAGHtvXYbArHsPZOBlCs1jf5p
         w6Fqc6QNqjWY1pkKvg96AJP5mveMP4ogftWJDV1reVq0wWgt4vnpgNPg6LJYPqO50VkK
         FHeHIG2hgM9gXB8LTlMgExH89Xf2/uGh7WB69N4vvvBDkPYWGqdjgHnnp3V+NvLeclgc
         ZjS1yJItISJ7fH5OdJXqqRpKWtyh/nLWczQ7RQyP4pK0jk6LFnB2vZkYd2ElcqZMfGr/
         d8vA==
X-Gm-Message-State: APjAAAUPDu0+p1pgObf+aTKWdW6KsLltEeSSMvur8RWywc00mrv4fceT
	avdcQBui9sKb7uCogwGQdrfvXg==
X-Google-Smtp-Source: APXvYqxjDicGHkgj9xgAR/PN/Gp5b27dzlDzZrScphMgEX0F+7flANhczAwi+CmZUxa9TNHWVfu/tQ==
X-Received: by 2002:a7b:ca57:: with SMTP id m23mr11158641wml.65.1575638085800;
        Fri, 06 Dec 2019 05:14:45 -0800 (PST)
References: <x1-RV+hh15HfGRZMhxOex4VSsUoLvw@gwene.org>
 <882addbe-cea2-96c3-f59a-b79607884403@valdikss.org.ru>
Autocrypt: addr=iam@valdikss.org.ru; prefer-encrypt=mutual; keydata=
 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
Message-ID: <194874fc-8b0e-1139-d8f7-08b3bd1a98ad@valdikss.org.ru>
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:60.0) Gecko/20100101,
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <882addbe-cea2-96c3-f59a-b79607884403@valdikss.org.ru>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="oPtXUtcsRGfjt0hZghuNqPRGQVMEyiZiI"
Cc: "William J. Tolley" <william@breakpointingbad.com>,
 Noel Kuntze <noel.kuntze+oss-security@thermi.consulting>
Date: Fri, 6 Dec 2019 16:14:42 +0300
From: ValdikSS <iam@valdikss.org.ru>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP
 connections.
To: oss-security@lists.openwall.com

--oPtXUtcsRGfjt0hZghuNqPRGQVMEyiZiI
Content-Type: multipart/mixed; boundary="u34pxUiw3Rq6a7uAyS85RfM4PD5vwD66U"

--u34pxUiw3Rq6a7uAyS85RfM4PD5vwD66U
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Please also note that my kind of attack could be performed over the Interne=
t, without direct
connectivity between the attacker and victim, Wi-Fi network or anything.

It has been tested in a real-world Internet environment in 2015, and it wor=
ked flawlessly.


On 06.12.2019 16:07, ValdikSS wrote:
> Please also check my article on this topic from 2015
> https://medium.com/@ValdikSS/another-critical-vpn-vulnerability-and-why-p=
ort-fail-is-bullshit-352b2ebd22e2
>=20
> I used the same technique but with UDP, and it works (at least worked) wi=
th Linux, OS X, Windows and Android.
>=20
> I used it with old p2p Skype, which allowed to get users' IP address usin=
g special "resolver" software or services,
> by user nick name. After getting IP address, you could send UDP packet to=
 the user from your IP address (without
> spoofing) and receive the reply from Skype user, but with VPN source IP a=
ddress, which allowed to detect
> whether the exact Skype user is connected to the VPN, and to which one, g=
iven that his connection is direct (without NAT).
>=20
> This also (still) applies to Bittorrent uTP protocol.
>=20
>=20
> On 05.12.2019 05:38, unknown wrote:
>> Posted by William J. Tolley on Dec 04
>>
>> Hi all,
>>
>> I am reporting a vulnerability that exists on most Linux distros, and
>> other *nix operating systems which allows a network adjacent attacker
>> to determine if another user is connected to a VPN, the virtual IP
>> address they have been assigned by the VPN server, and whether or not
>> there is an active connection to a given website. Additionally, we are
>> able to determine the exact seq and ack numbers by counting encrypted
>> packets and/or...
>>
>>
>=20
>=20


--u34pxUiw3Rq6a7uAyS85RfM4PD5vwD66U--

--oPtXUtcsRGfjt0hZghuNqPRGQVMEyiZiI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: https://keybase.io/verify

iQIzBAEBCAAdFiEEMiogvXcpmS32v71gXNcgLu+I93IFAl3qVEIACgkQXNcgLu+I
93IeCBAAmFnk40JGu9BuYznaui8cdQAMUnMDigUBUIRDNO81RMaBrg1cpEZsFEBI
NHHjp9P5qhMgJOCVwfatpNfNBcpxNMD82nfd9orpwiqPpKdBnCKXHaL1wrP94LET
iI/cKDJnKaXVduu2GFn5hKTZo/emT3xGTzYNh/cOg7P8bwODhJiHPSkz7ITGS7iS
Swnhvy6XkTssDVVzDqgKBa02spzPLPsyHcEU+hGId2mkt+2E2f30mgWbuCTraO5J
JJJCIj/bbO7qYMP3ongpGYXvRLTXsxzgJ8s9rlnwoZs+tF1ubrai3dnTn9Nt7Lz0
/5uiDb5VpRfycHE6ASN2igN19PtlMrVE1XCrHgQN/pAwF4bc/u1E0fgHR18JgH9S
Jd64+eNUzg5YD+ifGYFgm+r9ctUDJsYmk8G/oR8l/q2Ec29Uy18tYLoFliztEwEY
5sqgqd+R+sMp3NajvrSDgVouyKWGW+8zQ9XD41IB55z+JsXCNhJvwr9E+0vARqFI
bDekDuHi1yVQARKhm/DFtm9q9FeFCqLMOd+cN3KPDRTCsR7eOG8jkkpIGA+OcDFQ
krslDfWLs5IXW1RZYTEexjxvDCnsWYWQKJR4cPX6AdzymxfCEHi6Kqn3lSXUKeae
+4kHld80Hcu3/bZlz0Df3/85C1046gJGqTbyEPwkAh8NP4wd0OU=
=+L3k
-----END PGP SIGNATURE-----

--oPtXUtcsRGfjt0hZghuNqPRGQVMEyiZiI--

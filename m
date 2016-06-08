X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1448" "Wednesday" "8" "June" "2016" "14:10:18" "-0700" "Daniel Veditz" "dveditz@mozilla.com" "<4d58ebad-f2d5-2078-3846-f44bfde65641@mozilla.com>" "43" "[oss-security] Excessive resource consumption (DOS) in JPEG" nil nil nil "6" "2016060821:10:18" "[oss-security] Excessive resource consumption (DOS) in JPEG" (number mark "U       dveditz@mozi Jun  8   43/1448  " thread-indent "\"[oss-security] Excessive resource consumption (DOS) in JPEG\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24443 invoked by uid 550); 8 Jun 2016 21:10:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24393 invoked from network); 8 Jun 2016 21:10:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mozilla-com.20150623.gappssmtp.com; s=20150623;
        h=to:from:subject:message-id:date:user-agent:mime-version;
        bh=atYcnXW6Uz80J7mRFqXOwIqwJCFcf/5Abqx80CuVTPE=;
        b=b5knW7I7vwvosD6XNimpe9c7rEmwNVgeIh2ZNoJdMbBBmTdEu+SfiF1DCBPXRNzaFz
         CdjoQZOaP4VEdAknRPLezYpktVX0736nAvZs7lZSySwq+IQJEvUR+fc7Osw4/OyutPhF
         rPcxZZgOfmcuVmopU48pQGeCems4gC6U1IjfnBBKNmEHMItwjD7/DFcyIS5HE5ePG7tJ
         HfMnOpf+cYf+YyagimqcQ7epSGOyydUKQokUL3zBJrRM95X/0RWXfpqfxp2pUbv4mIJ+
         xsbaGXQnEXJek0Ynm7q6M25dBrMOYw9AdE76+TVljG3BzyU/7NBESqecdfGWUx+VjkPH
         UP5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version;
        bh=atYcnXW6Uz80J7mRFqXOwIqwJCFcf/5Abqx80CuVTPE=;
        b=gAHotkAH138nvF84Wlk+wsriXE3LfKP4GGIBVd0wcAWBffD/sPWGTvcKmPlCwWhFXT
         jcfBnHajAUVm3G2glRJ/Ehrzsu3TlD80Y6zIlgtCU+YbqMEVtnatoAOuKQouhXgZzNES
         FD/mMkeHIQqPWXwCrySTvDA6pMOXZ4hHOJx9wfbeHeuWo0zOClRfcTCIltjnOWdBOrSE
         xiHJ93wE7781XEUtse7fLFFGgdeWEpF8U85yVSDZHVl3lCWJbINHp1NftLYQOxpo8ajG
         j3yzifG5EIdwvasJXuWW/wZ2nH8tqLapv3rsPZO5JTJYrS4WhhbMukIzTmLP1OIgbOUi
         ta7A==
X-Gm-Message-State: ALyK8tLWffZkLHKgC7VTLkIooxolnftkoq9vwoJ4RfatZ69y7qZJ4OxpkkPc1AHACSp6dTAP
X-Received: by 10.66.234.5 with SMTP id ua5mr7897279pac.115.1465420220473;
        Wed, 08 Jun 2016 14:10:20 -0700 (PDT)
To: product-security@apple.com, secure@microsoft.com,
 Michal Zalewski <lcamtuf@google.com>, parisa.tabriz@gmail.com,
 oss-security@lists.openwall.com, psirt@adobe.com
From: Daniel Veditz <dveditz@mozilla.com>
Message-ID: <4d58ebad-f2d5-2078-3846-f44bfde65641@mozilla.com>
Date: Wed, 8 Jun 2016 14:10:18 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
 Gecko/20100101 Thunderbird/45.1.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="VK9tpvqaEquPV5lQmk5uKc9pOn2J3IaOG"
Subject: [oss-security] Excessive resource consumption (DOS) in JPEG

--VK9tpvqaEquPV5lQmk5uKc9pOn2J3IaOG
Content-Type: multipart/mixed; boundary="FH2r4Tr4CaP693f7NmEKQARoBgqRJvq2k"
From: Daniel Veditz <dveditz@mozilla.com>
To: product-security@apple.com, secure@microsoft.com,
 Michal Zalewski <lcamtuf@google.com>, parisa.tabriz@gmail.com,
 oss-security@lists.openwall.com, psirt@adobe.com
Message-ID: <4d58ebad-f2d5-2078-3846-f44bfde65641@mozilla.com>
Subject: Excessive resource consumption (DOS) in JPEG

--FH2r4Tr4CaP693f7NmEKQARoBgqRJvq2k
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Mozilla wishes to draw the attention of list participants who process
JPEG images to the following recently-discovered excessive resource
consumption issues with the JPEG standard, which affect multiple
implementations:

https://docs.google.com/document/d/17exDyGr2txYJ5Ntv4Q8B3MnLSvbcSfs5dje_xuD=
ZPNA/edit

We advise you to take appropriate mitigatory measures.

-Dan Veditz
Mozilla Security Team


--FH2r4Tr4CaP693f7NmEKQARoBgqRJvq2k--

--VK9tpvqaEquPV5lQmk5uKc9pOn2J3IaOG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAldYibsACgkQ/b4x7jAzy05jtwCfWlR9gb8/b76j9dEYoV9RZdL8
f3MAnifqY0E2bqsfg7wNLyimUqwwyz54
=V+CO
-----END PGP SIGNATURE-----

--VK9tpvqaEquPV5lQmk5uKc9pOn2J3IaOG--

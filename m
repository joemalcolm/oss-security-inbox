X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2681" "Friday" "24" "November" "2017" "22:59:12" "-0500" "Phil Pennock" "oss-security-phil@spodhuis.org" "<20171125035912.GA20323@breadbox.private.spodhuis.org>" "69" "[oss-security] RCE in Exim reported" nil nil nil "11" "2017112503:59:12" "[oss-security] RCE in Exim reported" (number mark "U       oss-security Nov 24   69/2681  " thread-indent "\"[oss-security] RCE in Exim reported\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3403 invoked by uid 550); 25 Nov 2017 05:02:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24390 invoked from network); 25 Nov 2017 03:59:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d201711; h=Content-Type:MIME-Version:Message-ID:Subject:To:
	From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=T3LiOP89SvZylwbHf4L9yxyIyXmkB/6S38p/JOlhoM0=; b=Ner4X2rHogquTaQ7UVTuaFAAwD
	RB94+G1CEz0/3Z7V2bEs8biROPNDmvAyon+idLpgtcUwz9pjKWm/HaU/OPR8BfThdH/q2QXfmSdxv
	7G05cYlz1Tccf6jgInnbsvhb4SFHi6fFHqN29BANsyhHIHh/RN00Drt+1+nI6QB6cWPgIap0QoAWK
	HkGyMkqv2AhD1zDVA0eodP87bsdC;
Date: Fri, 24 Nov 2017 22:59:12 -0500
From: Phil Pennock <oss-security-phil@spodhuis.org>
To: oss-security@lists.openwall.com
Message-ID: <20171125035912.GA20323@breadbox.private.spodhuis.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gKMricLos+KVdGMg"
Content-Disposition: inline
OpenPGP: url=https://www.security.spodhuis.org/PGP/keys/0x4D1E900E14C1CC04.asc
Subject: [oss-security] RCE in Exim reported

--gKMricLos+KVdGMg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

In Post-Thanksgiving mail-catchup, I see that the Exim Project was
gifted with a couple of surprises in our public bugtracker on Thursday
morning.  Complete with proof-of-concept small Python script.

I've requested CVEs, don't have them yet.

My mail to our announce list:
  https://lists.exim.org/lurker/message/20171125.034842.d1d75cac.en.html

Remote code execution in the first vulnerability, getting execution as
the Exim run-time user.

A complete mitigation is to disable advertising the CHUNKING extension,
in which case an attempt to use the BDAT verb should result in:

  503 BDAT command used when CHUNKING not advertised

The instructions I wrote in the mail to our announce-list, were:

} With immediate effect, please apply this workaround: if you are running
} Exim 4.88 or newer (4.89 is current, 4.90 is upcoming) then in the main
} section of your Exim configuration, set:
}
}   chunking_advertise_hosts =
}
} That's an empty value, nothing on the right of the equals. This
} disables advertising the ESMTP CHUNKING extension, making the BDAT verb
} unavailable and avoids letting an attacker apply the logic.

Chunking support was introduced with Exim 4.88; the current release is
4.89, 4.90 is in RC series now, it looks like a 2-line fix (written by
Jeremy Harris) is probably right for the first issue.

Public bugtracker links:

  https://bugs.exim.org/show_bug.cgi?id=2199
  https://bugs.exim.org/show_bug.cgi?id=2201

-Phil

--gKMricLos+KVdGMg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iHUEARYIAB0WIQROXBeef/xNv45sEy9REE5mjdBEgQUCWhjqhQAKCRBREE5mjdBE
gWLSAP4nb0QTL4zufOf9i6uZ1ff+rEWGHGfNrOHbhlu7aJSSKgD+Ld4Zv2PqKuDV
/+jQV1UJfQuqINab9Dp0/HczDdk0pgGJAjMEAQEIAB0WIQTGk6A04e1u6VTK4toT
2tmcfkFRnAUCWhjqjwAKCRAT2tmcfkFRnE2OD/0TaWd45fueYyKmR9TOWk2fpsqf
q0wqCgjLLxS2uyuS7wqMNhG2/RgV0UMPgbUsPxQ34GLFEke33ed3XmR9DUIgrIgs
GY53xpqmniMNynt4ExEj9vr4sZZvgNPY3xSfIqgWE4HXGV5aGH3R03CNUwMdBwJ7
cO51Ktm2ChFimHYaqL4biG0HCFOtMYow3dfhCcXdgZcPID/V26Xrqjjp+piG7T4w
TZi4mTm5nynuU3oZssmRBE67ggIeUyewEbPWKeJHOniduN90SM54A6NDOb2o/KTL
X4HTgTEDAAtaVTfrRIlgoioZ1N1+1rEjzokSrJ1VR4Ej6Lpkl2QIJ4HC0pvFRtqr
V1kKTvtce4JK6tz2k2AgOCb9nc3jU6lxjObAK8RV+pmcW3S5CoF+3Ht7DrFMJ1qA
gMeP3WshZ7yNAOHHHkim2//04wz/y4uvEysTjyWyR6cMmbHF3egyBxRfuXipCMoH
b1dC3YROYT+9hyWPsO7MrxjW+IhK8XqKXklzzlzjRe8vSXoWZTGL4tnja1YJGuHE
yePU9Cq2Ks/yEydZINGYeyAeC5ZDov16IxaEcmS9Iub9ZUMsVjZU580szVcZEgph
BkiQ+hRBUN17G8NCgIWs7Xzv0wFSWnToTpbIIu+ZiTCkCjopdZq0GhV3PEoPwnrl
4ufilVhSimWPwmXJ7A==
=zuXm
-----END PGP SIGNATURE-----

--gKMricLos+KVdGMg--

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1883" "Wednesday" "20" "May" "2015" "09:48:03" "+0000" "Darren Martyn" "darren.martyn@xiphosresearch.co.uk" "<555C5853.8010903@xiphosresearch.co.uk>" "47" "[oss-security] CVE Request: SuiteCRM Post Auth RCE" nil nil nil "5" "2015052009:48:03" "[oss-security] CVE Request: SuiteCRM Post Auth RCE" (number mark "        darren.marty May 20   47/1883  " thread-indent "\"[oss-security] CVE Request: SuiteCRM Post Auth RCE\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1504 invoked by uid 550); 20 May 2015 14:51:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11710 invoked from network); 20 May 2015 09:49:34 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:content-type;
        bh=mca9x5bg77dAKbfh5CvdtrTfFXknNehCwJHq6F8506Q=;
        b=QYhgeIa9RtA8kss2XbhDIUS0KtYae34HqYOi2GQAUl+Apfzo9hIZ+LAYVJrmDmFLgj
         GKg4mnIcGWKOIdZMhXTyVWgkwptLmKDli7GQD3XAiF/EMpBEMZ7JnXqCPiF787VjufTw
         VaKbsQYfdsw0L9UqBLCpdMtTdj6jNLjT+rK3gQXwqubIs2FjVEtYqmW4n8q6m/yjW/1M
         3sP9ngB94IO9wkQrAgfo5ZiUbbWr8KOHa4aeymi1rGe4cy7id+Qc9o/8SS7tN1dxvSKa
         AnHACNtiJIPJyE40NoVBLy9aBmuzqWmBmhM4XpqAyjLuoq8tptQ1bgW0G1hnju5pxdGY
         Npag==
X-Gm-Message-State: ALoCoQn0WFQnNISEsEmSecIhLulUE8ps4eqM5XgNeE4DT6JXKHpra2XPXiPL4yA1HfpsRPAz9E6C
X-Received: by 10.180.20.12 with SMTP id j12mr39285417wie.4.1432115362744;
        Wed, 20 May 2015 02:49:22 -0700 (PDT)
Message-ID: <555C5853.8010903@xiphosresearch.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="QO8eXovbJ1H7FsFm5PESw0guVUAOjtfPf"
Date: Wed, 20 May 2015 09:48:03 +0000
From: Darren Martyn <darren.martyn@xiphosresearch.co.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: SuiteCRM Post Auth RCE
To: oss-security@lists.openwall.com

--QO8eXovbJ1H7FsFm5PESw0guVUAOjtfPf
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi all,
CVE request here for a post auth RCE in the SuiteCRM (7.5.1 at least,
probably earlier versions too, but have to get time to test those)
software. Deadline has expired without contact from vendor, so disclosing.

The vulnerability is a simple shell upload via avoiding a rather rubbish
blacklist used to try (and fail) to prevent the upload of executable
code. Fully automatic PoC included for testing/replicating the issue.
Due to the fact they clearly intended to prevent upload/execution of
executable code, I am of the view it is a vulnerability as opposed to
abuse of functionality.


PoC: https://github.com/XiphosResearch/exploits/tree/master/suiteshell

Best regards,
Darren Martyn


--QO8eXovbJ1H7FsFm5PESw0guVUAOjtfPf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVXFhTAAoJEKbzl+ujn+tWKz8P/0Y7YXcQnBEFs9sD845IrU7+
e6+Xn3FvT8t51yPvUR1bEdIJEhRAel7/hcbeF5XvDnTt3izEzHJatYoINp7RcOA2
AmR8CHnom8ADISsHPgI9Pj2x+4R8IN3jefenzjCj1XuczPHrNvcgSWwzGNNj7IPq
joD1l8OsZexkx7qqOu3T1208b7p6Iknt78W4M4E/OZbRn5z+qZcBx8K7rKJVL4q0
blRmxCa9KD+aU95nXbS7uQ+BhNkYXdKmLegcbySLfsm/DAQZJHsnDNn4qL6N5eUi
5Ou1JhRJMvHa2APWmbWaOMZM6bksjdBQKPi4TUuFjCnlK6JZHm2Ewub6cgOuwVvI
ZBq/Rc4PXoeGDRngccZ4ZXjDp/5K+Sib2NepIyTHXxWZl+QjnOkVxh8fu6gtzaK/
aMgONrzCHyN1fu2XPbC5CjXmRmcMqWMa/JpZtG56sd0NLLxrEUMvwyAxT+IT8Thx
vnHpwejbOj2cXdtkYYyDsmwmJgwdaAwYHvh7EMCDNAyXdNioyMAQrUcmCu3nRsYE
8kIESQ35aq+87lndnqiZj5LwD24mLlHRkLAft6IltK+rrhdG2NNg8mmFNsi0FQy1
SjIjntcjEt57w2v489c9smg5TBAqfgJC+76V8GY0furojVZntPrv+s4IdJgmifVS
1sYqu6BvcI1X/T73I4am
=BoBG
-----END PGP SIGNATURE-----

--QO8eXovbJ1H7FsFm5PESw0guVUAOjtfPf--

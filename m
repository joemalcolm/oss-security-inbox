X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2203" "Thursday" "19" "November" "2020" "14:51:06" "+0000" "sjw@gmx.ch" "sjw@gmx.ch" "<7c4034ea-f116-808e-bcb3-749cd3e35e34@gmx.ch>" "59" "[oss-security] Unpatched XSS in Redmine 4.1" nil nil nil "11" "2020111914:51:06" "[oss-security] Unpatched XSS in Redmine 4.1" (number mark "U       sjw@gmx.ch   Nov 19   59/2203  " thread-indent "\"[oss-security] Unpatched XSS in Redmine 4.1\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Unpatched XSS in Redmine 4.1" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30190 invoked by uid 550); 19 Nov 2020 15:24:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16105 invoked from network); 19 Nov 2020 14:51:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1605797469;
	bh=mURjLodpzeYoTYevLJdxKWtCR3fbmMnbTl+yaQQLFKk=;
	h=X-UI-Sender-Class:To:From:Subject:Date;
	b=MoeY6N+ECIh4dcvdickEdowdjdwmiRxXXANX4vsYTpTlPJgHsJz5uC2Tlq+WTYYaV
	 WEJNjOr0dkQqheE0C+C0vWMJEKjYMdfne9U7npuL/CeCEBw+44NQeEk4QwVvTDQj3j
	 QBbkz0jCP74vfCMzHqOMBUjqVQIfSm6lhJWQk2a4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
To: oss-security@lists.openwall.com
From: sjw@gmx.ch
Autocrypt: addr=sjw@gmx.ch; prefer-encrypt=mutual; keydata=
 mQINBFHW4s8BEADA6j8INVTGPjS+V5GTHN3xU9RTddHOrEBI0wf79L8GRF1i1W/mGsrqrHsO
 /kVemsuhS95HaJBNTW33F4aUtUAfULlv2t62q0BerTHInjO5CS+MamhaLrUpj1SkJ7tP2XLJ
 H6Q8ehH/FHNRsn/osBxL7zCVYXqG5xdk5M4HXmM+ed8t2evbRDB4A9XjbMIycX4Fmw6B0X+3
 telkQdkraiKhImeZW8TFo/r7+04XlvvDTMW+Ba/LMzLxT53mS9mkDZ6BRLXMQFxjZ+F1yvwa
 7L4QbIOqAFWqNoPOCy7NHuSYgM9mr1jpPGlKwVV4LnwMxVIfijMwR5LS9r4NU12xrcAc/lUO
 JKa7YLGe0TxQBwDinABHa8X3wkwn+1K37t8ULInKnae+YePd3VvbWdaSU8EJBTQwtOFtetnz
 BbrwmdjePwAoRtggfH1sPIT4kSeC7oB9C92DurGAsogHQeu0bkpGvdt9T0zZY/a/vrjSG3ym
 uCQ7BZIHDqeZ4ENNjy9De8BsLgAwk6gI0gBS1x08c7/qHBGuaBmp/LHVLVRgyVdWgDqlTgRo
 aSZgY3etV/E8eXIMYREPNzevJyITxqtwisTDCZJdNxiu1uacBeqvJdXB99qy3/REVk1XS8ef
 I1SZmANty2I+FS2KD/JsX4d/lEUozK3WKFZQLSj2NgSPcUMz2QARAQABtBlKb25hcyBXaXRt
 ZXIgPHNqd0BnbXguY2g+iQI8BBMBAgAmAhsjBwsJCAcDAgEGFQgCCQoLBBYCAwECHgECF4AF
 AlJmiTsCGQEACgkQzoKyyG3Ou58fiA/8CJifk8zNBTpVg/2YXouQzLb4uvAVgnmdJpXQ2z0D
 BUE8XYr6waNx2c4hsKhXDhCrdyCh4RAKdA9j0Lmu5MDdDDyJgn82P7e2i0IlpO+1+U5JeQ4r
 crjZL3MYrpVkuSIsZVTDuhW9v5xp6qVvKHplIIvuWz54kJYMOAcYWgHCGOIpYmIkFrk9mEXj
 7Nb0jqjAaIH+B/3DbnUL2Pk4L6H+SP8x5Qo8wN6dr144NgtKNPWZ/lyrUHhTMkfQLpfB+R00
 ls3jd7rPaiaDhcIM72RUMi8sR5L90H9/OFMXPcu8AKGSvSbDCeDdqo+qxP58WUqSerK7Vypc
 29rEEb+HdIE0cQXbeWN8Oj03HUAR9wG81sSVHWC1+/X2Es1m9NI8lC6wVyKgXOPBC+gTKf8P
 JIyQzfpIAYHN4HVLcxV3dVBVHNmiPT2hnD8N42zAi2Nhce+/L/nbMHu1fpr6H6CiAk33bBaK
 wAi3OkwnUj+K2gamzSR3RtQOvPnGplMCcLCT/ncj/O1y4b+o4GYVWh9GfrzuFK9++kj8Pon/
 5c37ej3LGwmJFMVZBmfk760tx8Blu7CyiBzuCKxSccn79OvpYbhYrZItO+5xWDDG5ZOh95as
 nlFzPO11FPVO6XTfd5KqgzpUkk42oFPcz7Zj0ei5jvXwXRGpl7PpC5cpN24Csim81Ra5Ag0E
 UdbizwEQALFrHMw/WGWvGXCHpXM/MNAmj6AIXHfzOJm0A0NLf1Y4gyTSn0Qch4aDTuHm3L0c
 Z6qMrjq5/riyHXQcKK2+PL1mSWQxkhBPduItLshnsu2vd3wJ7btzwcZg3IXbtfOF2o9+LMEW
 2GcWN2KwAMl9GQi+vO2OAX05KUbxNkpqRcN7siVXisu6mktSQ5eb8q1LCqc1j1WNY5EVNOjG
 VMBhiE9poZGmLE5otqpSjBPCpASe+D5CDNTcV2HA8rfDZ1K0VNrLzEaDKuC0bF2kYkcL1Yhh
 jPQnT7jSceOyR04JyOOQICfW1qiqzcxByD0AAzEIQSkToHqrxJpmbZ7Hass0gYxFbsFQNNMH
 ZxmpVSG7D9ji0lfYU2hspWybb2k6sFk/unCGK6bgycSU1Cu/g5hsdkekmDHqlhWd5j73mO1/
 XZJJwgh8UJxEOj6d7B5Cfr9FE7dua66BmQiXumTCTgfXEa0ALISxqXQTSrR6chMQ4jlk71Fa
 OnPhKKqccSxcy7qN/S51h8jvbgy3WpB5EC0XTNhVyue7s2qpGsr00ck3xsqZpbSvmc+OPlFa
 FD784M0Q4PsifaGhodxbIGc62xwgT27vqGBDypH7wRCWEMeqCv2w2oKMMpoH6JH6n2pX7kAS
 6HC7oWTtvRUg7I6JqOeBse4wYa4UkTLvMY0gKQSoBusjABEBAAGJAh8EGAECAAkFAlHW4s8C
 GwwACgkQzoKyyG3Ou58aog//cvIKYQzCA4Fvp8p8eNGtomNkP3pLFaVWv7br9Am62odhz85l
 K9FxGuk4KI0m23USEhX3S0HKPc6PId9ka/ijWegU/zTkbCnw22YMizDuBnr4ecsoMSvJI4XL
 LLCvsJxm+tgnGi3HWErSqrFbNOIU7arKlbBNNU0mawSHd9Sbvq+TpHbRYjzcNZq2w/djF3AY
 Nsq96jptnzogLWdlKTzunqGI6GWrzhqB0oIk9fH04mXs1aiq4Qkm4Vv1sSyXMqL0gC2JM8d3
 3sGHthbf8iKbKekB+XH2eF13xcIfVHankAnrcAZkicTAvAOv8IYRq5DXPKlnPMRgQ8KeOona
 gu+HgoJ7IM9bytJJmbmqUyC/Gb9meLJ3+PAZT2FMjfbZvO7Jbst8yAbrOOsXM7fmgD/43qF9
 STcadMMdJKl2+CSRL+wmqAeJZsLGDkq3PRB0zp87fF/bFK6GkzQ9xofIypnNzXidzQrmsrBZ
 EBdGx87Kxp4q3+m3npIT1LdrDet8mMTxxY8OO1jYpuaFQCXHjSyoczE1tEues6LUJLRTy4KI
 5HzEGYKoGzx7OjEbyIWXwTzUuKdNPbUh0Qdm6tP0r+IrA8oN7XFNjdzgN7SaualwsuKp/iMu
 At445xJBt1FvZaxCeVmiuKUXReatW0PtpvO5tXvYg/SieusEUJAcvxvxzqI=
Message-ID: <7c4034ea-f116-808e-bcb3-749cd3e35e34@gmx.ch>
Date: Thu, 19 Nov 2020 14:51:06 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101 Firefox/68.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="wx47GhDtU1m4xNHYZDJGBUaABjIZ3Gu4Z"
X-Provags-ID: V03:K1:RS6w8V5uFVBVD34imoZfGoD85s4fkDODeGCRyBU8JqIeBTrI+LU
 M7W325z3lLn/w447cemXp2y1iB91kDpI4nU7aVjQvQYYmsYEiIbUNgG+nWxLuicl94RrZZx
 nVxA72ZPfs0xzzBC9VoRdYswxMGUbOHnyR7OtDBI9JrHzKGKyMxcJN9OqpkhTy4uqOx8Tdg
 ryk20re9BS/vTOB6itdGA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:ILEib6N6bnk=:faTpbmycOnOBaxuKgYljIz
 t0VynmIepzCGzTdH4yZ4isE4XgOWgShA1CSFVxGXE01tEnQgBgyp8kALLNGyW41IQknA7qStR
 nPHW8GOWpDwB+xlqgej5a32XBcZISLbtEDD5hjPYZVAkrkai9NxGi+oC8z5Av0+36/GQyY7RF
 uHArU2gP0F1ON/oqXjhv/9rptmlKOoBZWVM9C3Kz0TWv4qi1eqpZajCH4Jxxb1bXHN8k+Sibx
 TgwplW22DfGiSoQf1elyJGzkqOCSdVpyNQtlDWFU4/nu43jhstOylnNSyU0t/1IE4wcIUEhwe
 TeGAps+HRIzfXcy/FB8NghjsziznVp71nKTAzY4XwBosOGs6ZNrjrjjkQLe1zNNvdvw1XbnoQ
 WVlHPIuNAMotlcAHXoyeQT0xc6UXGh96MN/KMbTi1cZ/FUwBu/mDWQbZy4CesYJfS+3JsMmu7
 nYnsVvtYkYqIAWptTslPB6x+EE2lpSQvLBHN/N9Dd2rjHIY/VqyRjAAqsx0eCTuOiXrIjIuNK
 eWJ8OTXgV5MiED7x/spQJrfYgrUxfewbDV9Qbv7s9GaQp8idrmt4EKEruOCXPycVm8EfRyYV5
 CN9n2tyJYaE2sEAhhQmYieUrBbVB7UJJ3aPSzQKcGE2UM34xTdCAjgIpBQNbn+h6ODbGDJobZ
 J+2HlkLAGEGT2fbLz0Cw2uIHRYkdncvZoq08+WqqaBAEhftwRxg6oGApqHvu5tvjppiKzVQMC
 XyBCIYPsXuHp3I88Gg7CGp7orLV9Rr5Tvz6PPO3HYD7y+5SxNPBAYGwWzyRIbIGv4nFh84g1y
 /Xd5wrZzuDQdO/F/6u/8EGp0/lGR1CrAIf9gLnXPKxQ0r1N/OKkM2vqkts28l0fTFJdslhC4Z
 3qFiiDzwW7WkjDmBW7XA==
Subject: [oss-security] Unpatched XSS in Redmine 4.1

--wx47GhDtU1m4xNHYZDJGBUaABjIZ3Gu4Z
Content-Type: multipart/mixed; boundary="nd8SIjGbkwLZtFwaoqMcB3hEc76QrFyE4";
 protected-headers="v1"
From: sjw@gmx.ch
To: oss-security@lists.openwall.com
Message-ID: <7c4034ea-f116-808e-bcb3-749cd3e35e34@gmx.ch>
Subject: Unpatched XSS in Redmine 4.1

--nd8SIjGbkwLZtFwaoqMcB3hEc76QrFyE4
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi

This is a heads up about a public, unpatched XSS vulnerability in
Redmine 4.1.

About 3 months ago, a public issue [1] has been reported in the Redmine
bug tracker regarding unsanitized HTML tags. This basically means that
you can inject any HTML code in issue titles, including JavaScript.
I've successfully verified this on Redmine 4.1. There's a (untested)
patch attached in the issue.

I've also sent this to the Redmine security team but since there was no
response from the maintainers so far and the issue is already public for
a long time I'm posting this here to make people aware of it.

Best regards


[1] https://redmine.org/issues/33846


--nd8SIjGbkwLZtFwaoqMcB3hEc76QrFyE4--

--wx47GhDtU1m4xNHYZDJGBUaABjIZ3Gu4Z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEf0BaT/qj9Rv+/e4vzoKyyG3Ou58FAl+2hloACgkQzoKyyG3O
u5+4sBAAjcAzdrZyTwpvwrzkMBctotDnl7yHi4Z+hfWk3qdnMPJZQ5C8ZXXWvKmk
Ea7drxFMyWpNx2u5OgH8S9asrQ7wrBF8qMILsB9sr1FC9Jih9rJ3biN4MeBUmG2D
wq3pCG29o8EsLGgkSh5uO/+h03HvtFqe+32OqAvmrKeImZ2eMPRpHjmqGpQkuX9X
yOH2Beol1uvtCfotYt+n9rsEqKl7CpXtWiMwOQUuX6uRJzy4UVTjfITGQ6VfrRW3
HRgh40ggE12tzEDcRN0kkP+4IbIiHhwCn0RSTRTyHKOeqGqNM/KF8U36LqpQte9j
7vdAC5OluZCe42HMfZckohHtvnlehE5CtFnVNSBzobiogZ0mM28dasCrBrr0g30W
APjeAKQP0OKOFH93oQ8PjJbQvnnHlqKZl4G+ZH22IcbWZIRMQuJ1sTyGRaGLAhls
juD1E1gfVLNUUFu6u1No8Rp8M9TFjHkFqhiylEf18f5MVzyPvC77zBZu4fxM7MfP
FD46E4wTLdkyHYdtrmkxXnkqTBMLyeTnxBkSin5CUzgx1nYMBY7zX2pn81F3QIXb
3y75jQMMOj+s17jct5t0fCQ/ctfmQITGIzDZq7o9bc6QjtVrchPHCgEDyOjrQ6+q
T5TeGTKXbQvWgBItBeWO/bueKfnObV1XOnKkL+WDWngsgWH2WQw=
=vnd0
-----END PGP SIGNATURE-----

--wx47GhDtU1m4xNHYZDJGBUaABjIZ3Gu4Z--
